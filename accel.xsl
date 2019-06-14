<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">

        <xsl:variable name="varaccel" select="mariokart/characters/character/accel"/>

        <results>

            <xsl:for-each-group select="mariokart/characters/character" group-by="accel">
                <xsl:sort select="accel"/>
                <xsl:variable name="VARaccel" select="current-grouping-key()"/>
                <result accel="{$VARaccel}">
                    <xsl:for-each select="current-group()">
                        <xsl:copy-of select="name"/>
                    </xsl:for-each>
                </result>
            </xsl:for-each-group>

        </results>




    </xsl:template>

</xsl:stylesheet>
