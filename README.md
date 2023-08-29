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
``IMBM     657010.0756 6861156.5964 0.0000 0.037336 0.0302094  * ``<br/>
``CDTN     655859.6134 6861090.5193 0.0000 0.150475 0.0613328  * ``<br/>
``SEDM     652132.8158 6860929.5206 0.0000 2.284892 0.6283828  * ``<br/>
``SRBN     651800.9845 6861132.3847 0.0000 1.544919 0.1418506  * ``<br/>
``VDGC     651707.8665 6860257.5209 0.0000 1.784519 0.2344451  * ``<br/>
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