# Verniquet

Dépôt contenant toutes les données, scripts et relevés topométriques pour le calcul d'un réseau de "clochers" Verniquet en RGF 93.

# _Contenu_

* compensation <br/>
Résultat (à jour) de la compensation globale :<br/>
https://github.com/ymeneroux/verniquet/blob/main/compensation/verniquet.new

Points Verniquet (2D) disponibles au 31/08/2023 : <br/>

``--------------------------------------------------------------``<br/>
``STATION     E N U sigma_E sigma_N  *``<br/>
``--------------------------------------------------------------``<br/>
``CDTN     655859.6576 6861090.5409 0.0000 0.116550 0.048376 * ``<br/>
``SEDM     652134.2987 6860929.8922 0.0000 0.132478 0.095052 * ``<br/>
``SRBN     651801.4335 6861132.4552 0.0000 0.106409 0.065140 * ``<br/>
``VDGC     651707.1581 6860257.4749 0.0000 0.124683 0.068581 * ``<br/>
``NTDM     652240.9849 6861650.2369 0.0000 0.131784 0.090727 * ``<br/>
``SSLP     651136.7732 6861438.2558 0.0000 0.224105 0.110896 * ``<br/>
                                                                 <br/>														 
``IMBM     657010.0923 6861156.6138 0.0000 0.029769 0.024581 * ``<br/>			
``MRVC     658883.5470 6860978.9186 0.0000 0.017809 0.014989 * ``<br/>	
``GLOB     657584.8757 6861263.2419 0.0000 0.145317 0.048091 * ``<br/>	
``BAT4     658036.5073 6862810.9874 0.0000 0.030772 0.037705 * ``<br/>		 											 
``--------------------------------------------------------------``<br/>


TO DO : remplacer les points de station par des fichiers de ligne de base GNSS (fichiers *.bas dans ``ldb_gnss``)

* fiches_geodesiques
    * RBF/RDF : fiches géodésiques des points d'appui
    * RGP : fiches géodésiques des stations de base GNSS

* preparation

Pour préparer les observations : <br/>
https://raw.githack.com/ymeneroux/verniquet/main/preparation/web/index.html#

* releves<br/>
1 dossier par station, contenant un dossier de données bruts GNSS (fichiers .ubx, .obs et .nav) et un fichier ``nom-du-site_yymmdd.txt`` s'il n y a qu'une station sur le site à la date correspondante, et ``nom-du-site_yymmdd_1.txt``, ``nom-du-site_yymmdd_2.txt``, etc sinon

# _Check list matos_
* 1 trépied
* 1 théodolite
* 1 porte antenne GNSS
* récepteur GNSS + antenne + plan de masse
* 1 sacoche récepteur
* 1 power bank chargée
* 1 power bank de réserve (si possible)
* carnet/stylo (ou ordinateur portable)
* 1 paire de jumelles
* 1 appareil photo