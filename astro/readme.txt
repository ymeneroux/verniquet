==========================================================================================================================================================
PROCEDURE DETERMINATION ASTRO
==========================================================================================================================================================

Version. 05/08/2025


Contenu :
   - 1 catalogue d'étoiles (~ 6000 étoiles) avec coordonnées AD/DEC
   - 1 script de calcul des angles d'étoiles : coords.py
   - 1 script de mesure d'azimut astro : az.py


----------------------------------------------------------------------------------------------------------------------------------------------------
Etape 1. Localisation site de test
----------------------------------------------------------------------------------------------------------------------------------------------------
Ouvrir les deux scripts coords.py et az.py et ajouter les coordonnées géodésiques du site de test dans le dictionnaire loc :

loc = {
    "saint-joachim":  (-2.1933029602241280, 47.367958013954315, 0),
    "vincennes_rd3t": ( 2.4457833333333334, 48.851333333333336, 50)} 
    
Puis, spécifier le site utilisé pour les calculs (par exemple ici "vincennes_rd3t") :

lon, lat, hgt = loc["vincennes_rd3t"]       # Site d'observation    
    

Les coordonnées sont à spécifier en degrés décimaux. La sensibilité de la détermination à la précision de la position est de l'ordre de 20 m 
(en planimétrie) par seconde d'arc d'angle (1 sec d'arc = 0.00028°) en Frane métropolitaine. E.g. si une précision de 0.001° est souhaitée sur 
les déterminations angulaires, la position planimétrique sera donnée avec une précision de de l'ordre de 70 m.

La coordonnée verticale est donnée en hauteur ellipsoïdale. Sa précision n'est pas critique.

----------------------------------------------------------------------------------------------------------------------------------------------------
Etape 2. Détermination des positions angulaires des étoiles
----------------------------------------------------------------------------------------------------------------------------------------------------
On utilise le script coords.py. Pour afficher l'aide :

> python coords.py

# -------------------------------------------------------------------
# Usage:
# -------------------------------------------------------------------
# python eq2hor.py YYYY-MM-DD hh:mm:ss.zzzzzz mode mag
# mode [default = matrix]:
#   - matrix: Matrix format (name x y z std_x std_y std_z)
#   - comp  : Comp 3D .obs (simulation) and .cor files
#   - mm3d  : Micmac xml file of GCPs
#   - blend : Blender simulation file
# mag [default = 6]: max. allowed magnitude
# -------------------------------------------------------------------
# Geodetic coordinates are to be specified in the .py script
# LON = 2.44578333  LAT = 48.85133333
# -------------------------------------------------------------------
Choisir une date de référence (format YYYY-MM-DD hh:mm:ss[.zzzzzz]) et une magnitude maximale. 
Exemple : pour obtenir le listing des coordonnées angulaires de toutes les étoiles de magnitude inférieure ou égale à 2 au 1er Jan 2025 à 10:30:00 :

> python coords.py 2010-01-01 10:30:00 matrix 2

# -------------------------------------------------------------------
# 17 object(s) found at 2010-01-01 10:30:00 (Mag. <= 2.0 )
# Terrestrial coordinates: LON = 2.44578333  LAT = 48.85133333
# Output written in [gcp_20100101103000.txt]
# -------------------------------------------------------------------

17 étoiles sont enregistrées dans le fichier gcp_20100101103000.txt :

Chaque ligne contient le nom de l'étoiles, ces coordonnées cartésiennes (avec écarts-types) x, y et z sur une sphère unité fictive, centrée sur 
l'observateur, les coordonnées angulaires (azimut et élévation) en degrés (avec écarts-types).

Pour la réprésentation des étoiles sur le mur : on utilisera les colonnes az et alt (à convertir éventuellement en gon : 400 gon = 360°).



----------------------------------------------------------------------------------------------------------------------------------------------------
Etape 3. Orientation du site
----------------------------------------------------------------------------------------------------------------------------------------------------
Objectif : à l'aide d'une visée sur les étoiles, déterminer l'azimut d'un point de référence.

3.1. Positionner trépied + théodolite au niveau du point d'origine P (point d'où les positions angulaires des étoiles sur le plafond seront 
rigoureusement "exactes"). Mettre le téhodolite à niveau
3.2. Définir un point de référence R (point matériel fixe, bien résolu, visible de jour comme de nuit depuis la station P0, à l'extérieur ou à 
l'intéreur de l'appartement (e.g coin de meuble fixe, affiche au mur, etc)
3.3. Dans le script de calcul d'azimut az.py, spécifier l'étoile utilisée pour calculer l'azimut de la droite de référence PR :

nom_etoile = "alpha_uma"                    # Etoile cible

(ici par exemple Alpha Ursae Majoris, dans la Grande Ourse).
Le nom doit faire référence au catalogue d'étoiles : lettre.grec.etoile_accronyme.consetellation
3.4. Synchorniser l'heure du PC sur le serveur de temps NTP. Sous Ubuntu, utilisation de Chrony intéressante. On pourra vérifier avec au choix :
   - https://time.is/ (Windows ou Linux)
   - watch -n 0.001 'date +"%Y-%m-%d %H:%M:%S.%3N"' (Linux) + contrôle sur horloge de référence

La précision de synchronisation souhaitée est de l'ordre de 0.1 sec par seconde d'arc. E.g. si une précision de 0.001° est souhaitée sur 
les déterminations angulaires, la précision de synchronisation devra être de l'ordre de 0.3 seconde de temps.
3.5 Lancer le script az.py et suivre les étapes :
   - 3.5.1. Nom de session
   - 3.5.2. [Enter] continuer
   - 3.5.3. Entrer angle DMS du point de référence R (conversion éventuelle depuis gon)
   - 3.5.4. Viser un peu à droite (quelques dixièmes de degrés) de l'étoile cible et attendre son passage sur le fil stadimétrique
   - 3.5.5. Appuyer sur entrée quand l'étoile passe le fil stadimétrique vertical. 2 appuis si double fils, sinon modifier le script
   - 3.5.6. Entrer angle DMS de la visée correspondante (conversion éventuelle depuis gon)
   - 3.5.7. Double retournement pour passer en CD, viser un peu à droite (quelques dixièmes de degrés) de l'étoile cible et attendre son passage 
            sur le fil stadimétrique
   - 3.5.8. Appuyer sur entrée quand l'étoile passe le fil stadimétrique vertical. 2 appuis si double fils, sinon modifier le script
   - 3.5.9. Entrer angle DMS de la visée correspondante (conversion éventuelle depuis gon)
   - 3.5.10. Viser point de référence R et entrer angle DMS du point de référence R (conversion éventuelle depuis gon)
   - 3.5.11. Appuyer sur "[Enter] continuer" pour refaire une session de mesures, sinon "[X] arret"
   
-> Impression d'un fichier Nom_de_session.txt contenant l'azimut calculé de la droite PR (moyennes des cercles CG et CD).

Rq. L'incertitude donnée a un sens si les paramètres de précision du script az.py on été bien réglés :

# ---------------------------------------------------------------------------
# Parametres de precision
# ---------------------------------------------------------------------------
std_time    =  0.1  # Time marker standard deviation (in seconds)
std_angle   =    3  # Standard deviation of instrument (in arc-seconds)
# ===========================================================================


- std_time: incertitude de l'appui sur le signal de temps de l'opérateur + incertitude de la synchronisation (somme quadratique)
Exemple : si incertitude de synchro = 0.2 sec et incertitude de l'appui = 0.1, alors on peut fixer :  std_time = (0.1**2 + 0.2**2)**0.5
- std_angle : écart-type angulaire de l'instrument + visée (1.0 pour le Wild T2, 10.0 pour le MET)

----------------------------------------------------------------------------------------------------------------------------------------------------
Etape 4. Ajuster l'azimut du théodolite
----------------------------------------------------------------------------------------------------------------------------------------------------
Depuis la station P, viser le point de référence R, et régler l'angle pour afficher l'azimut obtenu à l'étape 3.
Par la suite, tous lles angles horizontaux et verticaux lus sur le théodolites, correspondent à des azimuts et élévation, géographiques exactes 
(aux erreurs de mesure de l'azimlut de référence et au bullage près).


----------------------------------------------------------------------------------------------------------------------------------------------------
Etape 5. Positionnement des étoiles
----------------------------------------------------------------------------------------------------------------------------------------------------
Pour chaque étoile à positionner dans le fichier généré à l'étape 2, récupérer les coordonnées angulaires.

E.g., pour l'étoile alpha_umi (étoile polaire) :

> alpha_umi,0.007647,0.664712,0.747061 0.659083,48.336414,0.000001,0.000001,0.000001,0.000002,0.000001

Azimut    =   0.659083° 
Elevation =  48.336414°

Conversion éventuelle en gon (H = 0.7323g, V = 53.7071g), et orientation du théodolite pour viser cette direction. 
On peut alors tracer la position de l'étoile sur le support qui intercepte la visée (plafond, mur, etc)
La magnitude peut aussi être récupérée (script coords.py à modifier) pour ajuster la taille de l'étoile à dessiner


