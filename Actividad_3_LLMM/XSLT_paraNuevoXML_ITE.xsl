<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">

        <ite>
            <xsl:attribute name="nombre"><xsl:value-of select="/ite/@nombre"/></xsl:attribute>
            <xsl:attribute name="link"><xsl:value-of select="/ite/@web"/></xsl:attribute>
            <xsl:attribute name="empresa"><xsl:value-of select="/ite/empresa"/></xsl:attribute>
            <xsl:attribute name="tlf"><xsl:value-of select="/ite/telefono"/></xsl:attribute>

            <administración>
                <director>
                    <xsl:attribute name="nombre"><xsl:value-of select="/ite/director/nombre"/></xsl:attribute>
                    <xsl:attribute name="despacho"><xsl:value-of select="/ite/director/despacho"/></xsl:attribute>
                </director>

                <jefe_estudios>
                    <xsl:attribute name="nombre"><xsl:value-of select="/ite/jefe_estudios/nombre"/></xsl:attribute>
                    <xsl:attribute name="despacho"><xsl:value-of select="/ite/jefe_estudios/despacho"/></xsl:attribute>
                </jefe_estudios>
                           
            </administración>

            <profesores>
                <xsl:for-each select="/ite/profesores/profesor">
                    <profesor>
                        <xsl:attribute name="id"><xsl:value-of select="id"/></xsl:attribute>
                        <xsl:attribute name="nombre"><xsl:value-of select="nombre"/></xsl:attribute>
                    </profesor>                
                </xsl:for-each>                  
            </profesores>

            <estudios>
                <xsl:for-each select="/ite/ciclos/ciclo">
                    <ciclo>
                        <xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
                        <xsl:attribute name="grado"><xsl:value-of select="grado"/></xsl:attribute>
                        <xsl:attribute name="año_decreto"><xsl:value-of select="decretoTitulo/@año"/></xsl:attribute>
                        <xsl:value-of select="nombre"/>
                    </ciclo>
                </xsl:for-each>
            </estudios>
        </ite>

    </xsl:template>

</xsl:stylesheet>