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

`` CDTN     655859.6244 6861090.4854 0.0000 0.110235 0.046674  * ``<br/>
`` EGSP     653140.6690 6861799.4353 0.0000 0.093494 0.094657  * ``<br/>
`` INVD     649557.3821 6861884.8656 0.0000 0.123353 0.076985  * ``<br/>
`` NTDM     652240.8204 6861650.1141 0.0000 0.104748 0.069836  * ``<br/>
`` PTHN     652015.3470 6860881.3970 0.0000 0.078072 0.046697  * ``<br/>
`` SCPL     651943.3182 6861902.8421 0.0000 0.456330 0.261003  * ``<br/>
`` SEDM     652134.1792 6860929.7766 0.0000 0.082216 0.048181  * ``<br/>
`` SGRV     652659.6650 6861915.6469 0.0000 0.127210 0.094183  * ``<br/>
`` SRBN     651801.2660 6861132.3210 0.0000 0.085548 0.045475  * ``<br/>
`` SSLP     651136.5509 6861438.1723 0.0000 0.137027 0.054508  * ``<br/>
`` VDGC     651707.0758 6860257.3730 0.0000 0.090622 0.051174  * ``<br/>
``	 														   * ``<br/>
`` DOME     655684.8345 6862661.3854 0.0000 0.487267 0.130463  * ``<br/>
`` 														       * ``<br/>
`` BAT4     658036.5190 6862810.9942 0.0000 0.023792 0.031246  * ``<br/>
`` GLOB     657584.5826 6861263.1537 0.0000 0.021375 0.026833  * ``<br/>
`` IMBM     657010.1225 6861156.6021 0.0000 0.024939 0.023682  * ``<br/>
`` IMJG     659002.9086 6861142.8487 0.0000 0.026176 0.029711  * ``<br/>
`` IMJR     659207.2556 6861133.4656 0.0000 0.035156 0.022638  * ``<br/>
`` MRVC     658883.5395 6860978.9063 0.0000 0.018779 0.015591  * ``<br/>
 
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


# Fiches géodésiques :

* [ANFN](https://raw.githack.com/ymeneroux/verniquet/main/pub/out/htm/ANFN.html)
* [BAT4](https://raw.githack.com/ymeneroux/verniquet/main/pub/out/htm/BAT4.html)
* [CHSL_E](https://raw.githack.com/ymeneroux/verniquet/main/pub/out/htm/CHSL_E.html)
* [CHSL_O](https://raw.githack.com/ymeneroux/verniquet/main/pub/out/htm/CHSL_O.html)
* [CHVC](https://raw.githack.com/ymeneroux/verniquet/main/pub/out/htm/CHVC.html)
* [EGLM](https://raw.githack.com/ymeneroux/verniquet/main/pub/out/htm/EGLM.html)
* [ESVC](https://raw.githack.com/ymeneroux/verniquet/main/pub/out/htm/ESVC.html)
* [IMBM](https://raw.githack.com/ymeneroux/verniquet/main/pub/out/htm/IMBM.html)
* [IMJG](https://raw.githack.com/ymeneroux/verniquet/main/pub/out/htm/IMJG.html)
* [IMJR](https://raw.githack.com/ymeneroux/verniquet/main/pub/out/htm/IMJR.html)
* [IMJR2](https://raw.githack.com/ymeneroux/verniquet/main/pub/out/htm/IMJR2.html)
* [MTYA](https://raw.githack.com/ymeneroux/verniquet/main/pub/out/htm/MTYA.html)
* [TUBE](https://raw.githack.com/ymeneroux/verniquet/main/pub/out/htm/TUBE.html)
* [SSLP](https://raw.githack.com/ymeneroux/verniquet/main/pub/out/htm/SSLP.html)
* [VTRY_CHN](https://raw.githack.com/ymeneroux/verniquet/main/pub/out/htm/VTRY_CHN.html)
* [VTRY_CHS](https://raw.githack.com/ymeneroux/verniquet/main/pub/out/htm/VTRY_CHS.html)
* [VTRY_LED](https://raw.githack.com/ymeneroux/verniquet/main/pub/out/htm/VTRY_LED.html)
