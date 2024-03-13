from __future__ import print_function, division
from PyAstronomy import pyasl
import matplotlib.pylab as plt
import datetime
import time
import math
from datetime import timezone
from datetime import timedelta
import numpy as np

# Documentation utile : 
# file:///C:/Users/oo/Desktop/divers/verniquet/Terrain/astro/antenne/arcturus/modif/Convertisseur%20Coordonn%C3%A9es%20Equatoriales%20vers%20Horizontales%20-%20Xavier%20Jubier.html
# https://www.webastro.net/ephemerides/conversion_coordonnees/#resultat
# https://pyastronomy.readthedocs.io/en/latest/pyaslDoc/aslDoc/eq2hor.html

# ===========================================================================


# Coordonnees terrestres
lon = 2.4457833333333334 
lat = 48.851333333333336


# ---------------------------------------------
# Catalogue d'etoiles
# ---------------------------------------------
altair  = [19, 50, 46.999 ,   8, 52,  5.96 ]
rigel   = [ 5, 14, 32.3   ,  -8, 12,  6    ]
sirius  = [ 6, 45,  8.9173, -16, 42, 58.017]
procyon = [ 7, 39, 18.0   ,   5, 13, 29    ] 
regulus = [10,  8, 22.311 ,  11, 58,  1.951]
spica   = [13, 25, 11.579 , -11,  9, 40.75 ]
# ---------------------------------------------

# Choix de l'etoile
etoile = spica
nom_etoile = "SPICA"

# ---------------------------------------------
# Parametres de precision
# ---------------------------------------------
std_time    =  0.1  # Time marker standard deviation (in seconds)
std_angle   =    3  # Standard deviation of instrument (in arc-seconds)
offset_time =  0.0  # Offset (in seconds) relative to true time
# ===========================================================================

# Specific RA and DEC
sign_ra  = 2*(etoile[0]>=0)-1
sign_dec = 2*(etoile[3]>=0)-1
ra  = (etoile[0] + sign_ra *etoile[1]/60 + sign_ra *etoile[2]/3600)/24 * 360
dec =  etoile[3] + sign_dec*etoile[4]/60 + sign_dec*etoile[5]/3600


class bcolors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKCYAN = '\033[96m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'


print(bcolors.HEADER + "# ---------------------------------------------------------")
print("# Calcul d'orientations astronomiques")
print("# ---------------------------------------------------------" + bcolors.ENDC)

jd  = datetime.datetime.now(timezone.utc) + timedelta(seconds=offset_time)
alt, az, ah = pyasl.eq2hor(pyasl.jdcnv(jd), ra, dec, lon=lon, lat=lat, alt=0.)
print(nom_etoile, jd, az)
print("-----------------------------------------------------------")


session = input("Nom session : ")
file_name = session + ".txt"
print("")


def lecture_angle(complement):
    print("Lecture angle " + complement +" :")
    val_ref_d = (int)(input("   DEG: "))
    val_ref_m = (int)(input("   MIN: "))
    val_ref_s = (float)(input("   SEC: "))
    value = '{:02d}'.format(val_ref_d) + "° " + '{:02d}'.format(val_ref_m) + "' " + '{:04.1f}'.format(val_ref_s) + "\" "
    print("Observation :", value)
    return val_ref_d + val_ref_m/60.0 + val_ref_s/3600




i = 1
print("=========================================================")
print("DEBUT DES OBSERVATIONS")
print("=========================================================")
while (True):
	
	# -------------------------------------------------------------------------
	# NOUVELLE OBSERVATION 
	# -------------------------------------------------------------------------
	
    signal = input("Observation #" + str(i) + "    " + bcolors.OKGREEN +"[Enter] continuer" + bcolors.ENDC +"   " + bcolors.FAIL +" [X] arret " + bcolors.ENDC)
    if (signal == "X"):
        confirmation = input("Fin des observations [y/n] ?")
        if (confirmation == "y"):
            break


    f = open(file_name, "a")
    f.write("MESURE SUR L'ETOILE " + nom_etoile +"\n")
    f.close()

	
	# -------------------------------------------------------------------------
	# CERCLE GAUCHE
	# -------------------------------------------------------------------------

    ref_cg = lecture_angle("CG point de reference")
	
    
    input("Mesure etoile CG    " + bcolors.OKCYAN + " [Enter] signal 1" + bcolors.ENDC)
    jd  = datetime.datetime.now(timezone.utc) + timedelta(seconds=offset_time)
    alt1, az1, ah1 = pyasl.eq2hor(pyasl.jdcnv(jd), ra, dec, lon=lon, lat=lat, alt=0.)

    input("Mesure etoile CG    " + bcolors.OKCYAN + " [Enter] signal 2" + bcolors.ENDC)
    jd  = datetime.datetime.now(timezone.utc) + timedelta(seconds=offset_time)
    alt2, az2, ah2 = pyasl.eq2hor(pyasl.jdcnv(jd), ra, dec, lon=lon, lat=lat, alt=0.)
	
    alt = (alt1 + alt2)/2
    az  = (az1 + az2)/2
    ah  = (ah1 + ah2)/2
   
    
    jd1  = datetime.datetime.now(timezone.utc)
    time.sleep(std_time)
    jd2  = datetime.datetime.now(timezone.utc)
    
    alt, az1, ah = pyasl.eq2hor(pyasl.jdcnv(jd1), ra, dec, lon=lon, lat=lat, alt=0.)
    alt, az2, ah = pyasl.eq2hor(pyasl.jdcnv(jd2), ra, dec, lon=lon, lat=lat, alt=0.)
    daz = az2-az1
    
    eph = str(jd) + " " + '{:.5f}'.format(az[0]) + " +/- " + '{:.5f}'.format(daz[0])
    print(eph)

    value =  lecture_angle("CG etoile")
    angle_cg = az[0] - (value - ref_cg)

    
    f = open(file_name, "a")
    f.write("CG " + eph + " " + '{:10.10f}'.format(value-ref_cg) + " " + '{:10.10f}'.format(angle_cg) + "\n")
    f.close()
    
    
    print("---------------------------------------------------------")
    
    
    # -------------------------------------------------------------------------
	# CERCLE DROIT
	# -------------------------------------------------------------------------
    
    #jd = datetime.datetime(2023, 9, 10, 0, 25, 0)
    input("Mesure etoile CD    " + bcolors.OKCYAN + " [Enter] signal 1" + bcolors.ENDC)
    jd  = datetime.datetime.now(timezone.utc) + timedelta(seconds=offset_time)
    alt1, az1, ah1 = pyasl.eq2hor(pyasl.jdcnv(jd), ra, dec, lon=lon, lat=lat, alt=0.)

    input("Mesure etoile CD    " + bcolors.OKCYAN + " [Enter] signal 2" + bcolors.ENDC)
    jd  = datetime.datetime.now(timezone.utc) + timedelta(seconds=offset_time)
    alt2, az2, ah2 = pyasl.eq2hor(pyasl.jdcnv(jd), ra, dec, lon=lon, lat=lat, alt=0.)
	
    alt = (alt1 + alt2)/2
    az  = (az1 + az2)/2
    ah  = (ah1 + ah2)/2

   
    
    jd1  = datetime.datetime.now(timezone.utc)
    time.sleep(std_time)
    jd2  = datetime.datetime.now(timezone.utc)
    
    alt, az1, ah = pyasl.eq2hor(pyasl.jdcnv(jd1), ra, dec, lon=lon, lat=lat, alt=0.)
    alt, az2, ah = pyasl.eq2hor(pyasl.jdcnv(jd2), ra, dec, lon=lon, lat=lat, alt=0.)
    daz = az2-az1
    

    eph = str(jd) + " " + '{:.5f}'.format(az[0]) + " +/- " + '{:.5f}'.format(daz[0])
    print(eph)
   
    value = lecture_angle("CD etoile")
    ref_cd = lecture_angle("CD point de reference")
    angle_cd = az[0] - (value-ref_cd)
    
    
    f = open(file_name, "a")
    f.write("CD " + eph + " " + '{:10.10f}'.format(value-ref_cd) + " " + '{:10.10f}'.format(angle_cd) + "\n")
    f.close()
      
    azimut = (angle_cg + angle_cd)/2
    stddev = (daz[0]**2 + (std_angle/3600)**2)**0.5

    line = "Azimut vers la reference : " + '{:2.5f}'.format(azimut) + " +/- " + '{:2.5}'.format(stddev)

    f = open(file_name, "a")
    f.write(line + "\n")
    f.close()
      


    print("---------------------------------------------------------")
    print(line)
    i += 1

    print("=========================================================")







# M1  183 32 32  257 12 23  077 35 54  003 32 14   257.4822284353528  257.8808492054696
# M2  230 13 51  305 28 17  125 36 02  050 13 53   259.0562317807839  259.1936609249159
# M3  275 10 40  351 38 46  171 49 20  095 10 27   260.2835793098606  260.4672441419704
# M4  320 02 17  037 58 28  218 06 49  140 02 06   261.7517245662855  261.8986609058640



#dat = [183,32,32,257,12,23,77,35,54,3,32,14,257.4822284353528,257.8808492054696]
#dat = [230,13,51,305,28,17,125,36,2,50,13,53,259.0562317807839,259.1936609249159]
#dat = [275,10,40,351,38,46,171,49,20,95,10,27,260.2835793098606,260.4672441419704]
#dat = [320,2,17,37,58,28,218,6,49,140,2,6,261.7517245662855,261.8986609058640]


def process2(data):
    ref_cg = data[0] +  data[1]/60 +  data[2]/3600
    str_cg = data[3] +  data[4]/60 +  data[5]/3600
    str_cd = data[6] +  data[7]/60 +  data[8]/3600   
    ref_cd = data[9] + data[10]/60 + data[11]/3600
    cg = ref_cg - str_cg + data[12]
    cd = ref_cd - str_cd + data[13]
    angle = (cg+cd)/2
    if (angle > 360):
        angle = angle - 180
    return(angle)










# =========================================================
# Mesure #0 etoile CG
# 2023-09-10 00:50:55.953666+00:00 257.4822284353528
# ---------------------------------------------------------
# Mesure #0 etoile CD
# 2023-09-10 00:52:53.675966+00:00 257.88084920546964
# =========================================================
# Mesure #1 etoile CG
# 2023-09-10 00:58:43.070993+00:00 259.0562317807839
# ---------------------------------------------------------
# Mesure #1 etoile CD
# 2023-09-10 00:59:24.140736+00:00 259.1936609249159
# =========================================================
# Mesure #2 etoile CG
# 2023-09-10 01:04:51.418054+00:00 260.2835793098606
# ---------------------------------------------------------
# Mesure #2 etoile CD
# 2023-09-10 01:05:46.836304+00:00 260.4672441419704
# =========================================================
# Mesure #3 etoile CG
# 2023-09-10 01:12:16.488520+00:00 261.75172456628553
# ---------------------------------------------------------
# Mesure #3 etoile CD
# 2023-09-10 01:13:01.288082+00:00 261.898660905864
# =========================================================
