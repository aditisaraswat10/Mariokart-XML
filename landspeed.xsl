<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" indent="yes"/>
<xsl:template match="/">
<results>   
        
    <xsl:for-each select="mariokart/bodies/body">
    <xsl:variable name="bodyName" select="name" />
    <xsl:variable name="bodySpeed" select="speed/land" />
    <xsl:for-each select="../../tires/tire">
        <result>
            <tire>
                <xsl:value-of select="name" />
            </tire>
            <body>
                <xsl:value-of select="$bodyName" />
            </body>
            <speed>
                <xsl:value-of select="$bodySpeed + speed/land" />
            </speed>
        </result>
 
    </xsl:for-each>
</xsl:for-each>
    
</results>
</xsl:template>
</xsl:stylesheet>