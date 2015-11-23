<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    exclude-result-prefixes="xs xd"
    version="2.0">
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p><xd:b>Created on:</xd:b> Nov 23, 2015</xd:p>
            <xd:p><xd:b>Author:</xd:b> cmarchand</xd:p>
            <xd:p></xd:p>
        </xd:desc>
    </xd:doc>
    
    <xsl:output method="xhtml" indent="yes"/>
    
    <xsl:template match="/*">
        <html>
            <head>
                <title>Essai</title>
            </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="*">
        <xsl:copy><xsl:apply-templates select="* | text()"/></xsl:copy>
    </xsl:template>
    
    <xsl:template match="text()">
        <xsl:value-of select="upper-case(.)"/>
    </xsl:template>
</xsl:stylesheet>