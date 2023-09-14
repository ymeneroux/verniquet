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
  ``SSLP     651136.5735 6861438.2057 0.0000 0.127656 0.048138  *  ``<br/>
  ``DOME     655684.7983 6862661.4386 0.0000 0.485574 0.126810  *  ``<br/>
  ``EGSP     653140.6823 6861799.4649 0.0000 0.087431 0.089917  *  ``<br/>
  ``SGRV     652659.6822 6861915.6753 0.0000 0.120771 0.089977  *  ``<br/>
  ``SCPL     651943.4578 6861902.9251 0.0000 0.440096 0.255817  *  ``<br/>
  ``MINA     651821.3812 6865439.1870 0.0000 0.516352 0.183194  *  ``<br/>
  ``CDTN     655859.6355 6861090.5169 0.0000 0.109176 0.043725  *  ``<br/>
  ``SEDM     652134.1967 6860929.8169 0.0000 0.072655 0.040366  *  ``<br/>
  ``SRBN     651801.2789 6861132.3521 0.0000 0.073458 0.037413  *  ``<br/>
  ``VDGC     651707.1007 6860257.4352 0.0000 0.081280 0.041038  *  ``<br/>
  ``NTDM     652240.8437 6861650.1485 0.0000 0.094358 0.063771  *  ``<br/>
  ``                                                               ``<br/>
  ``IMBM     657010.0850 6861156.5948 0.0000 0.027674 0.021571  *  ``<br/>
  ``BAT4     658036.5075 6862810.9965 0.0000 0.029527 0.034399  *  ``<br/>
  ``GLOB     657584.8769 6861263.2392 0.0000 0.139840 0.046196  *  ``<br/>
  ``MRVC     658883.5482 6860978.9171 0.0000 0.017128 0.014317  *  ``<br/>	 
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
