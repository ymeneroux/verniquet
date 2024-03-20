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


while (1):
	input("Press enter")
	jd  = datetime.datetime.now(timezone.utc)
	alt, az, ah = pyasl.eq2hor(pyasl.jdcnv(jd), ra, dec, lon=lon, lat=lat, alt=0.)
	print(nom_etoile, jd, pyasl.jdcnv(jd), az)
	print("-----------------------------------------------------------")



