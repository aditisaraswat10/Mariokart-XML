<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="xml" indent="yes" />
    
    
    <xsl:template  match="/">

<!--  
        <results >
            <xsl:for-each select="mariokart/characters/character/name" > 
                <xsl:sort select="."/>  
                <xsl:copy-of select="." />
            </xsl:for-each >
        </results >


        <results >
            <xsl:for-each select="mariokart/bodies/body" > 
                <xsl:sort select="name"/>  
                <xsl:copy-of select="name" />
            </xsl:for-each >
        </results >
        
        
        <results >
            <xsl:for-each select="mariokart/gliders/glider" > 
                <xsl:sort select="name"/>  
                <xsl:copy-of select="name" />
            </xsl:for-each >
        </results >
        

        <results >
            <xsl:for-each select="mariokart/tires/tire" > 
                <xsl:sort select="name"/>  
                <xsl:copy-of select="name" />
            </xsl:for-each >
        </results >



-->
        <results >
            <xsl:for-each select= "mariokart/bodies/body | mariokart/characters/character | mariokart/gliders/glider | mariokart/tires/tire" > 
                <xsl:sort select="name"/>  
                <xsl:copy-of select="name" />
            </xsl:for-each >
        </results >



    </xsl:template >



</xsl:stylesheet>