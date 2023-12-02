<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" encoding="ISO-8859-1" indent="yes"/>
<xsl:template match = "/">
<html>
<head><title><xsl:value-of select="bsw_result/file_name"/></title></head>
<body>
<style>
.pbb { page-break-before: left }
.pbi { page-break-inside }
</style>
<A NAME="Top"></A>
<H1>Compte rendu de verification des données terrain</H1>
<xsl:for-each select="carnet">
<H3>PrepaComp <br/> <xsl:value-of select="@version"/> </H3> 
</xsl:for-each> 
<hr color="#000066" size="2"></hr>
<br/>
<xsl:for-each select="carnet/stations/station">
   <a>
	<xsl:attribute name="HREF"><xsl:value-of select="concat('#station_',@num)"/></xsl:attribute>
	<xsl:if test="@valid = 'Y'">
		<xsl:value-of select="concat('Station #',@num,' (Point ',@pt_sta,') : station réduite')"/>
	</xsl:if>
	<xsl:if test="@valid = 'N'">
		<xsl:value-of select="concat('Station #',@num,' (Point ',@pt_sta,') : station non valide (fichier carnet ligne ',@num_ligne+1,')')"/>
	</xsl:if>
   </a>
<br/>
</xsl:for-each>
<xsl:for-each select="carnet/stations">
<hr color="#000066" size="2"></hr>
	<A HREF="#Top">Retour au Sommaire</A>
<H2>Paramètres de réduction</H2>
	<table border="1" cellspacing="0" cellpadding="1" width="500" >
	    <tr><td>Export des hauteurs instrument et cible</td><td><xsl:value-of select="@export_hauteurs_comp3d"/></td></tr>
	    <tr><td>Utilisation de l'ouverture pour calculer Z0</td><td><xsl:value-of select="@use_first_target_for_Z0_estimation"/></td></tr>
	    <tr><td>Utilisation de la météo saisie dans les entêtes de stations</td><td><xsl:value-of select="@use_meteo_entete_station"/></td></tr>
	    <tr><td>&#963;Hz (gons)</td><td><xsl:value-of select="@SigmaHz"/></td></tr>
	    <tr><td>&#963;V (gons)</td><td><xsl:value-of select="@SigmaV"/></td></tr>
	    <tr><td>&#963;Dp (m)</td><td><xsl:value-of select="@SigmaDp"/></td></tr>
	</table>
	<br/>
</xsl:for-each>
<hr color="#000066" size="2"></hr>
	<A HREF="#Top">Retour au Sommaire</A>
<H2>Prismes</H2>
	<table border="1" cellspacing="0" cellpadding="1" width="500" >
		<tr><th>Prismes</th><th>Cste (m)</th></tr>
			<xsl:for-each select="carnet/etalonnages/etalonnage">
				<tr>
					<td align="right"><xsl:value-of select="@id"/></td>
					<td align="right"><xsl:value-of select="-1*@M"/></td>
				</tr>
			</xsl:for-each>
	</table>
	<br/>
<xsl:for-each select="carnet/stations">
<hr color="#000066" size="2"></hr>
	<A HREF="#Top">Retour au Sommaire</A>
<H2>Z0 global</H2>
	<table border="1" cellspacing="0" cellpadding="1" width="500" >
		<tr><th>Z0 (gons)</th><th>&#963;Z0 (gons)</th></tr>
				<tr>
					<td align="right"><xsl:value-of select="@Z0"/></td>
					<td align="right"><xsl:value-of select="@SigmaZ0"/></td>
				</tr>
	</table>
	<br/>
</xsl:for-each>
<xsl:for-each select="carnet/stations/station">
<hr color="#000066" size="2"></hr>
<DIV id="station" >
<a><xsl:attribute name="NAME"><xsl:value-of select="concat('station_',@num)"/></xsl:attribute></a>
	<A HREF="#Top">Retour au Sommaire</A>
<H2>Station n°<xsl:value-of select="@num"/> - Point <xsl:value-of select="@pt_sta"/></H2>
   <xsl:if test="@num_ligne+1 > 0">
       <H4>Fichier carnet - ligne <xsl:value-of select="1+@num_ligne"/> </H4>
   </xsl:if>
<TBODY>
		<table border="1" cellspacing="0" cellpadding="1" width="500">
		<tr><th>Station n°<xsl:value-of select="@num"/></th><th></th></tr>
	    <tr><td>nom</td><td><xsl:value-of select="@pt_sta"/></td></tr>
		<tr><td>Ht</td><td><xsl:value-of select="@Ht"/> m</td></tr>
		<tr><td>Température</td><td><xsl:value-of select="@temp"/> °C</td></tr>
		<tr><td>Pression</td><td><xsl:value-of select="@press_mmHg"/> mmHg - <xsl:value-of select="@press_hPa"/> hPa</td></tr>
		<tr><td>Formule météo</td><td><xsl:value-of select="@formule_meteo"/></td></tr>
		<xsl:if test="@valid = 'Y'">
		    <tr><td>ppm</td><td><xsl:value-of select="@ppm"/> ppm</td></tr>
		    <tr><td>Valide ?</td><td>Oui</td></tr>
			<tr><td>Nombre de pointés </td><td><xsl:value-of select="@NbPointes"/></td></tr>
			<tr><td>Nombre de cercles </td><td><xsl:value-of select="@cercles"/></td></tr>
			<xsl:if test="@fermeture  = 'Y'"><tr><td>Fermeture </td><td>Oui</td></tr></xsl:if>
			<xsl:if test="@fermeture != 'Y'"><tr><td>Fermeture </td><td>Non</td></tr></xsl:if>
		   <xsl:if test="@cercles != '1'">
			   <tr><td>Z0 (gons) </td><td><xsl:value-of select="@Z0"/> </td></tr>
			   <tr><td>&#963;Z0 (gons) </td><td><xsl:value-of select="@SigmaZ0"/></td></tr>
		   </xsl:if>
		</xsl:if>
	    <xsl:if test="@valid = 'N'"> 
		    <tr><td>Valide ?</td><td>Non</td></tr>
		</xsl:if>
		</table>
		<br/>
		<xsl:if test="@valid = 'Y' and @NbPointesC1 &gt; 0">
       <H3>Observations cercle I</H3>
			<table border="1" cellspacing="0" cellpadding="1" width="700" >
			<tr><th>Point visé</th><th>Hz (gon)</th><th>V (gon)</th><th>Dp (m)</th><th>dHz (cc)</th><th>dV (cc)</th><th>dDp (mm)</th><th>ppm</th><th>Etalonnage</th><th>Id Etalonnage</th><th>Hv (m)</th></tr>
            <xsl:for-each select="rawdata/obs">
				<xsl:if test="@V &lt; 200">
				<tr>
					<td><xsl:value-of select="@pt_vis"/></td>
					<td align="right"><xsl:value-of select="@Hz"/></td>
					<td align="right"><xsl:value-of select="@V"/></td>
					<td align="right"><xsl:value-of select="@Dp"/></td>
					<td align="right"><xsl:value-of select="@dHz"/></td>
					<td align="right"><xsl:value-of select="@dV"/></td>
					<td align="right"><xsl:value-of select="@dDp"/></td>
					<td align="right"><xsl:value-of select="@ppm"/></td>
					<td align="right"><xsl:value-of select="@c_etal"/></td>
					<td align="right"><xsl:value-of select="@id_etalonnage"/></td>
					<td align="right"><xsl:value-of select="@Hv"/></td>
				</tr>
				</xsl:if>
            </xsl:for-each>
			</table>
		<br/>
		</xsl:if>
	    <xsl:if test="@valid = 'N' and @NbPointesC1 &gt; 0">
       <H3>Observations cercle I</H3>
			<table border="1" cellspacing="0" cellpadding="1" width="700" >
			<tr><th>Point visé</th><th>Hz (gon)</th><th>V (gon)</th><th>Dp (m)</th><th>Hv (m)</th></tr>
            <xsl:for-each select="rawdata/obs">
				<xsl:if test="@V &lt; 200">
				<tr>
					<td><xsl:value-of select="@pt_vis"/></td>
					<td align="right"><xsl:value-of select="@Hz"/></td>
					<td align="right"><xsl:value-of select="@V"/></td>
					<td align="right"><xsl:value-of select="@Dp"/></td>
					<td align="right"><xsl:value-of select="@Hv"/></td>
				</tr>
				</xsl:if>
            </xsl:for-each>
			</table>
		<br/>
		</xsl:if>
		<xsl:if test="@valid = 'Y' and @NbPointesC2 &gt; 0">
       <H3>Observations cercle II</H3>
			<table border="1" cellspacing="0" cellpadding="1" width="700" >
			<tr><th>Point visé</th><th>Hz (gon)</th><th>V (gon)</th><th>Dp (m)</th><th>dHz (cc)</th><th>dV (cc)</th><th>dDp (mm)</th><th>ppm</th><th>Etalonnage</th><th>Id Etalonnage</th><th>Hv (m)</th></tr>
            <xsl:for-each select="rawdata/obs">
				<xsl:if test="@V &gt; 200">
				<tr>
					<td><xsl:value-of select="@pt_vis"/></td>
					<td align="right"><xsl:value-of select="@Hz"/></td>
					<td align="right"><xsl:value-of select="@V"/></td>
					<td align="right"><xsl:value-of select="@Dp"/></td>
					<td align="right"><xsl:value-of select="@dHz"/></td>
					<td align="right"><xsl:value-of select="@dV"/></td>
					<td align="right"><xsl:value-of select="@dDp"/></td>
					<td align="right"><xsl:value-of select="@ppm"/></td>
					<td align="right"><xsl:value-of select="@c_etal"/></td>
					<td align="right"><xsl:value-of select="@id_etalonnage"/></td>
					<td align="right"><xsl:value-of select="@Hv"/></td>
				</tr>
				</xsl:if>
            </xsl:for-each>
			</table>
		<br/>
		</xsl:if>
	   <xsl:if test="@valid = 'N' and @NbPointesC2 &gt; 0">
       <H3>Observations cercle II</H3>
			<table border="1" cellspacing="0" cellpadding="1" width="700" >
			<tr><th>Point visé</th><th>Hz (gon)</th><th>V (gon)</th><th>Dp (m)</th><th>Hv (m)</th></tr>
            <xsl:for-each select="rawdata/obs">
				<xsl:if test="@V &gt; 200">
				<tr>
					<td><xsl:value-of select="@pt_vis"/></td>
					<td align="right"><xsl:value-of select="@Hz"/></td>
					<td align="right"><xsl:value-of select="@V"/></td>
					<td align="right"><xsl:value-of select="@Dp"/></td>
					<td align="right"><xsl:value-of select="@Hv"/></td>
				</tr>
				</xsl:if>
            </xsl:for-each>
			</table>
		<br/>
		</xsl:if>
		<xsl:if test="@valid = 'N'">
       <H3>Nombre de pointés par cercle</H3>
			<table border="1" cellspacing="0" cellpadding="1" width="700" >
			<tr><th>Point visé</th><th>Pointés CI</th><th>Pointés CII</th></tr>
            <xsl:for-each select="CheckNobs/Nobs">
				<tr>
					<td><xsl:value-of select="@pt_vis"/></td>
					<td><xsl:value-of select="@NObsC1"/></td>
					<td><xsl:value-of select="@NObsC2"/></td>
				</tr>
            </xsl:for-each>
			</table>
   			<br/>
			<H3>Messages d'erreur : </H3>
            <xsl:for-each select="Logs/log">
			<xsl:value-of select="@mess"/><br/>
            </xsl:for-each>
			<br/>
		</xsl:if>
   		<xsl:if test="@valid = 'Y'">
       <H3>Observations réduites</H3>
			<table border="1" cellspacing="0" cellpadding="1" width="700" >
			<tr><th>Point visé</th><th>Hz (gon)</th><th>V (gon)</th><th>Dp (m)</th></tr>
            <xsl:for-each select="Data_Ok/obs">
				<tr>
					<td><xsl:value-of select="@pt_vis"/></td>
					<td align="right"><xsl:value-of select="@Hz"/></td>
					<td align="right"><xsl:value-of select="@V"/></td>
					<td align="right"><xsl:value-of select="@Dp"/></td>
				</tr>
            </xsl:for-each>
			</table>
		   <br/>
		   </xsl:if>
</TBODY>
</DIV>
</xsl:for-each>
<A NAME="Bottom"></A>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
