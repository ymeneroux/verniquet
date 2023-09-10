from __future__ import print_function, division
from PyAstronomy import pyasl
import matplotlib.pylab as plt
import datetime
import time
import math
from datetime import timezone
import numpy as np


# file:///C:/Users/oo/Desktop/divers/verniquet/Terrain/astro/antenne/arcturus/modif/Convertisseur%20Coordonn%C3%A9es%20Equatoriales%20vers%20Horizontales%20-%20Xavier%20Jubier.html
# https://www.webastro.net/ephemerides/conversion_coordonnees/#resultat
# https://pyastronomy.readthedocs.io/en/latest/pyaslDoc/aslDoc/eq2hor.html


position = [2, 26.747, 48, 51.080]

altair = [19, 50, 46.999, 8, 52, 5.96]
etoile = altair

# Position
lon = position[0]+position[1]/60
lat = position[2]+position[3]/60

# Specific RA and DEC
ra = (etoile[0] + etoile[1]/60 + etoile[2]/3600)/24 * 360
dec = etoile[3] + etoile[4]/60 + etoile[5]/3600


i = 0
print("=========================================================")
while (False):
    
    input("Mesure #" + str(i) + " etoile CG")
     
    #jd = datetime.datetime(2023, 9, 10, 0, 25, 0)
    jd  = datetime.datetime.now(timezone.utc)


    alt, az, ah = pyasl.eq2hor(pyasl.jdcnv(jd), ra, dec, lon=lon, lat=lat, alt=0.)

   
    
    jd1  = datetime.datetime.now(timezone.utc)
    time.sleep(0.1)
    jd2  = datetime.datetime.now(timezone.utc)
    
    alt, az1, ah = pyasl.eq2hor(pyasl.jdcnv(jd1), ra, dec, lon=lon, lat=lat, alt=0.)
    alt, az2, ah = pyasl.eq2hor(pyasl.jdcnv(jd2), ra, dec, lon=lon, lat=lat, alt=0.)
    daz = az2-az1
    
    print(jd, '{:.5f}'.format(az[0]), "+/-",  '{:.5f}'.format(daz[0]))
      
    i += 1
    
    print("---------------------------------------------------------")
    
    input("Mesure #" + str(i) + " etoile CD")
    
    #jd = datetime.datetime(2023, 9, 10, 0, 25, 0)
    jd  = datetime.datetime.now(timezone.utc)


    alt, az, ah = pyasl.eq2hor(pyasl.jdcnv(jd), ra, dec, lon=lon, lat=lat, alt=0.)

   
    
    jd1  = datetime.datetime.now(timezone.utc)
    time.sleep(0.1)
    jd2  = datetime.datetime.now(timezone.utc)
    
    alt, az1, ah = pyasl.eq2hor(pyasl.jdcnv(jd1), ra, dec, lon=lon, lat=lat, alt=0.)
    alt, az2, ah = pyasl.eq2hor(pyasl.jdcnv(jd2), ra, dec, lon=lon, lat=lat, alt=0.)
    daz = az2-az1
    
    print(jd, '{:.5f}'.format(az[0]), "+/-",  '{:.5f}'.format(daz[0]))
      
    i += 1

    print("=========================================================")



# M1  183 32 32  257 12 23  077 35 54  003 32 14   257.4822284353528  257.8808492054696
# M2  230 13 51  305 28 17  125 36 02  050 13 53   259.0562317807839  259.1936609249159
# M3  275 10 40  351 38 46  171 49 20  095 10 27   260.2835793098606  260.4672441419704
# M4  320 02 17  037 58 28  218 06 49  140 02 06   261.7517245662855  261.8986609058640



#dat = [183,32,32,257,12,23,77,35,54,3,32,14,257.4822284353528,257.8808492054696]
#dat = [230,13,51,305,28,17,125,36,2,50,13,53,259.0562317807839,259.1936609249159]
#dat = [275,10,40,351,38,46,171,49,20,95,10,27,260.2835793098606,260.4672441419704]
dat = [320,2,17,37,58,28,218,6,49,140,2,6,261.7517245662855,261.8986609058640]


def process(data):
    ref_cg = data[0] +  data[1]/60 +  data[2]/3600
    str_cg = data[3] +  data[4]/60 +  data[5]/3600
    str_cd = data[6] +  data[7]/60 +  data[8]/3600   
    ref_cd = data[9] + data[10]/60 + data[11]/3600
    cg = ref_cg - str_cg + data[12]
    cd = ref_cd - str_cd + data[13]
    angle = (cg+cd)/2
    if (angle > 360):
        angle = angle - 180
    print(angle)



process(dat)

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