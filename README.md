# Verniquet

Dépôt contenant toutes les données, scripts et relevés topométriques pour le calcul d'un réseau de "clochers" Verniquet en RGF 93.

# _Contenu_

* compensation <br/>
Résultat (à jour) de la compensation globale :<br/>
https://github.com/ymeneroux/verniquet/blob/main/compensation/verniquet.new

Points Verniquet (2D) disponibles au 26/08/2023 : <br/>

``--------------------------------------------------------------``<br/>
``STATION     E N U sigma_E sigma_N  *``<br/>
``--------------------------------------------------------------``<br/>
``CDTN     655859.6192 6861090.5239 0.0000 0.134136 0.054395 * ``<br/>
``SEDM     652134.3661 6860929.9321 0.0000 0.138840 0.106721 * ``<br/>
``SRBN     651801.4290 6861132.4247 0.0000 0.103595 0.070028 * ``<br/>
``VDGC     651707.1706 6860257.4527 0.0000 0.129236 0.072665 * ``<br/>
``NTDM     652241.0105 6861650.2351 0.0000 0.125657 0.087276 * ``<br/>
``SSLP     651123.8969 6861438.5265 0.0000 0.249530 0.127334 * ``<br/>
                                                                 <br/>														 
``IMBM     657010.0764 6861156.5986 0.0000 0.032989 0.025260 * ``<br/>			
``MRVC     658883.5763 6860978.9412 0.0000 0.024503 0.016903 * ``<br/>	
``GLOB     657585.0008 6861263.2707 0.0000 0.169033 0.055444 * ``<br/>	
``BAT4     658036.5160 6862810.9993 0.0000 0.035791 0.042974 * ``<br/>		 											 
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