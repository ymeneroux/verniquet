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
 ``CDTN     655859.6347 6861090.5194 0.0000 0.110433 0.044508  * ``<br/>
 ``SEDM     652134.2136 6860929.8364 0.0000 0.075761 0.046176  * ``<br/>
 ``SRBN     651801.3046 6861132.3735 0.0000 0.077949 0.046355  * ``<br/>
 ``VDGC     651707.1094 6860257.4406 0.0000 0.083440 0.042136  * ``<br/>
 ``NTDM     652240.8493 6861650.1512 0.0000 0.096087 0.064534  * ``<br/>
 ``PTHN     652015.4033 6860881.4533 0.0000 0.024443 0.021903  * ``<br/>
 ``INVD     649557.3706 6861884.9635 0.0000 0.025296 0.024377  * ``<br/>
 ``EGSP     653140.6907 6861799.4727 0.0000 0.088576 0.091175  * ``<br/>
 ``SGRV     652659.7672 6861915.7436 0.0000 0.141106 0.108690  * ``<br/>
 ``SSLP     651136.5905 6861438.1729 0.0000 0.130106 0.056356  * ``<br/>
                                                                   <br/>		
 ``IMBM     657010.0860 6861156.5987 0.0000 0.028131 0.022419  * ``<br/>
 ``BAT4     658036.5076 6862810.9924 0.0000 0.029848 0.036170  * ``<br/>
 ``GLOB     657584.8768 6861263.2394 0.0000 0.141248 0.046698  * ``<br/>
 ``MRVC     658883.5481 6860978.9172 0.0000 0.017302 0.014510  * ``<br/>			 
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