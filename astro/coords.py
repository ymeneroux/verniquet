from __future__ import print_function, division
from PyAstronomy import pyasl

import sys
import time
import math
import random
import datetime
import numpy as np

from datetime import timezone
from datetime import timedelta

# Catalogue de coordonnées terrestres
loc = {
    "saint-joachim":  (-2.1933029602241280, 47.367958013954315, 0),
    "vincennes_rd3t": ( 2.4457833333333334, 48.851333333333336, 50)}

lon, lat, hgt = loc["vincennes_rd3t"]

# -------------------------------------------------------------
# Usage:
# -------------------------------------------------------------
if len(sys.argv) == 1:
    print("# -------------------------------------------------------------------")
    print("# Usage:")
    print("# -------------------------------------------------------------------")
    print("# python eq2hor.py YYYY-MM-DD hh:mm:ss.zzzzzz mode mag")
    print("# mode [default = matrix]:")
    print("#   - matrix: Matrix format (name x y z std_x std_y std_z)")
    print("#   - comp  : Comp 3D .obs (simulation) and .cor files")
    print("#   - mm3d  : Micmac xml file of GCPs")
    print("#   - blend : Blender simulation file")
    print("# mag [default = 6]: max. allowed magnitude")
    print("# -------------------------------------------------------------------")
    print("# Geodetic coordinates are to be specified in the .py script")
    print("# LON =", '{:.8f}'.format(lon), " LAT =", '{:.8f}'.format(lat))
    print("# -------------------------------------------------------------------")
    sys.exit(0)

# -------------------------------------------------------------
# Parametres
# -------------------------------------------------------------
mag_max = 6         # Max magnitude of stars
std_time = 0.01     # Std. dev. of timing in second(s)
visible = True      # Keep only visible stars
refrac = True       # Correction of refraction
radius = 1          # Radius for proj on sphere
# -------------------------------------------------------------

# Timestamp reading
YYYYMMDD = sys.argv[1].split("-")
YYYY = int(YYYYMMDD[0])
MM   = int(YYYYMMDD[1])
DD   = int(YYYYMMDD[2])
hhmmsszzzzzz = sys.argv[2].split(":")
hh = int(hhmmsszzzzzz[0])
mm = int(hhmmsszzzzzz[1])
sszzzzzz = float(hhmmsszzzzzz[2])
ss = int(sszzzzzz)
zzzzzz = int((sszzzzzz - ss)*1e6)
jd = datetime.datetime(YYYY, MM, DD, hour=hh, minute=mm, second=ss, microsecond=zzzzzz)

jd_fwd = jd + timedelta(seconds=1)

# Max magnitude
if len(sys.argv) > 4:
    mag_max = float(sys.argv[4])


# ---------------------------------------------------------------
# Output mode
# ---------------------------------------------------------------
mode = "matrix"
if (len(sys.argv) > 3):
    mode = sys.argv[3]
name_out = str(jd).replace(" ", "").replace("-", "").replace(":", "")
name_out = "gcp_"+name_out.split('.')[0]

    
# Header
if mode == "matrix": 
    name_out = name_out+".txt"
    fout = open(name_out, 'w')
    fout.write("name,x,y,z,az,alt,std_x,std_y,std_z,std_az,std_alt\n")
if mode == "mm3d":    
    name_out = name_out+".xml"
    fout = open(name_out, 'w')
    fout.write("<?xml version=\"1.0\" ?>")
    fout.write("<DicoAppuisFlottant>")
if mode == "blend":   
    name_out = name_out+".py"
    fout = open(name_out, 'w')
    fout.write("import bpy\n")
if mode == "comp":  
    fout_obs = open(name_out+".obs", 'w')
    fout_obs.write("*---------------------------------------------------------------------\n")
    fout_obs.write("* "+str(jd)+" (Mag. <= "+ str(mag_max)+ ")"+"\n")
    fout_obs.write("* LON = "+'{:.8f}'.format(lon) + " LAT = "+'{:.8f}'.format(lat)+"\n")
    fout_obs.write("*---------------------------------------------------------------------\n")
    fout_obs.write("\n12 STATION @"+name_out+"_tracker.xyz"+"\n")
    fout_sub_obs = open(name_out+"_tracker.xyz", 'w')
    fout_sub_obs.write("*---------------------------------------------------------------------\n")
    fout_sub_obs.write("* "+str(jd)+" (Mag. > "+ str(mag_max)+ ")"+"\n")
    fout_sub_obs.write("* LON = "+'{:.8f}'.format(lon) + " LAT = "+'{:.8f}'.format(lat)+"\n")   
    fout_sub_obs.write("*---------------------------------------------------------------------\n")
    name_out = name_out+".cor"
    fout = open(name_out, 'w')
    fout.write("*---------------------------------------------------------------------\n")
    fout.write("* "+str(jd)+" (Mag. > "+ str(mag_max)+ ")"+"\n")
    fout.write("* LON = "+'{:.8f}'.format(lon) + " LAT = "+'{:.8f}'.format(lat)+"\n")   
    fout.write("*---------------------------------------------------------------------\n")
    fout.write("\n1 STATION 0.0000 0.0000 0.0000 0.000001 0.000001 0.000001\n")


# ---------------------------------------------------------------
# Chargement des donnees du catalogue d'etoiles
# ---------------------------------------------------------------

def read_catalogue(path):

    fichier_catalogue = open(path)
    LINES = fichier_catalogue.readlines()
    fichier_catalogue.close()
    
    catalogue = {}
    
    for l in LINES:
        line = l[:-1]
        if line.replace(' ', '') == "":
            continue
        if "toiles" in line:
            continue
        if "Type spec." in line:
            continue
        if line[:18].replace('-', '') == "":
            continue
        if line[:18].replace(' ', '') == "":
            const_name = line.split('(')[1].split(')')[0]
            continue
    
        num    = line[:4].replace(' ', '')
        lettre = line[4:13].replace(' ', '')
        code   = line[13:17].replace(' ', '')
        mag    = float(line[44:48])
        if (mag > mag_max):
            continue
        if (lettre != ""):
            nom_etoile = lettre+"_"+const_name
        else:
            nom_etoile = code
        nom_etoile = nom_etoile.lower()
        
        ad_h = float(line[20:22])
        ad_m = float(line[23:25])
        ad_s = float(line[26:30])
        
        de_d = float(line[32:35])
        de_m = float(line[36:38])
        de_s = float(line[39:43])
    
        catalogue[nom_etoile] = [ad_h, ad_m, ad_s, de_d, de_m, de_s]
        
    return catalogue
   

catalogue = read_catalogue("catalogue.txt")


# ---------------------------------------------------------------
# Calcul des directions apparentes des etoiles
# ---------------------------------------------------------------

counter = 0 

for nom_etoile in catalogue.keys():

    etoile = catalogue[nom_etoile]

    # Specific RA and DEC
    sign_ra  = 2*(etoile[0]>=0)-1
    sign_dec = 2*(etoile[3]>=0)-1
    ra  = (etoile[0] + sign_ra *etoile[1]/60 + sign_ra *etoile[2]/3600)/24 * 360
    dec =  etoile[3] + sign_dec*etoile[4]/60 + sign_dec*etoile[5]/3600

    alt1, az1, ah1 = pyasl.eq2hor(pyasl.jdcnv(jd)    , ra, dec, lon=lon, lat=lat, alt=hgt, refract=refrac); alt     = alt1[0]; az     = az1[0];  
    alt1, az1, ah1 = pyasl.eq2hor(pyasl.jdcnv(jd_fwd), ra, dec, lon=lon, lat=lat, alt=hgt, refract=refrac); alt_fwd = alt1[0]; az_fwd = az1[0];  


    Xe = radius*math.sin(az*math.pi/180) * math.cos(alt*math.pi/180)
    Ye = radius*math.cos(az*math.pi/180) * math.cos(alt*math.pi/180)
    Ze = radius*math.sin(alt*math.pi/180)
    
    Xe_fwd = radius*math.sin(az_fwd*math.pi/180) * math.cos(alt_fwd*math.pi/180)
    Ye_fwd = radius*math.cos(az_fwd*math.pi/180) * math.cos(alt_fwd*math.pi/180)
    Ze_fwd = radius*math.sin(alt_fwd*math.pi/180)
    
    if az > 180:
        az = az-360
    if az_fwd > 180:
        az_fwd = az_fwd-360
        
    if visible:
        if alt < 0:
            continue

        
    xe = '{:.6f}'.format(Xe)
    ye = '{:.6f}'.format(Ye)
    ze = '{:.6f}'.format(Ze)    
    
    xstd = '{:.6f}'.format(abs((Xe_fwd-Xe)*std_time) + 1e-6)
    ystd = '{:.6f}'.format(abs((Ye_fwd-Ye)*std_time) + 1e-6)
    zstd = '{:.6f}'.format(abs((Ze_fwd-Ze)*std_time) + 1e-6)
    
    az_std  = '{:.6f}'.format(abs((az_fwd -az )*std_time) + 1e-6)
    alt_std = '{:.6f}'.format(abs((alt_fwd-alt)*std_time) + 1e-6)
    
    az  = '{:.6f}'.format(az)
    alt = '{:.6f}'.format(alt)
        
    # Positions    
    if mode == "matrix":
        fout.write(nom_etoile+","+xe+","+ye+","+ze+" "+az+","+alt+","+xstd+","+ystd+","+zstd+","+az_std+","+alt_std+"\n")  
    if mode == "mm3d":    
        fout.write("    <OneAppuisDAF>\n")
        fout.write("        <Pt>"+xe+" "+ye+" "+ze+"</Pt>\n")
        fout.write("        <NamePt>"+nom_etoile+"</NamePt>\n")
        fout.write("       <Incertitude>"+xstd+" "+ystd+" "+zstd+"</Incertitude>\n")
        fout.write("    </OneAppuisDAF>\n")
    if mode == "blend": 
        fout.write("bpy.ops.mesh.primitive_uv_sphere_add(radius=0.01, enter_editmode=False, align='WORLD', location=("+xe+","+ye+","+ze+"), scale=(1, 1, 1))\n")
    if mode == "comp":
        fout.write("1 "+nom_etoile+" "+xe+" "+ye+" "+ze+" "+xstd+" "+ystd+" "+zstd+"\n")
        fout_sub_obs.write(nom_etoile + " 0.000 0.000 0.000 0.020 1.0000 0.000\n")

    counter += 1
    
print("# -------------------------------------------------------------------")
print("#", counter, "object(s) found at", jd, "(Mag. <=", mag_max, ")")
print("# Terrestrial coordinates: LON =", '{:.8f}'.format(lon), " LAT =", '{:.8f}'.format(lat))
print("# Output written in", "["+name_out+"]")
print("# -------------------------------------------------------------------")

# EOF
if mode == "mm3d":    
    fout.write("</DicoAppuisFlottant>")


if mode == "comp": 
    fout_obs.write("\n8 STATION NORTH_HORIZON 0 100 \n")
    fout_obs.write("6 STATION NORTH_HORIZON 100 100 \n")
    fout_obs.close()
    fout_sub_obs.close()

fout.close()
