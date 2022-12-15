<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" version="4.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
    {
        "caja": {
          "cd": [
        <xsl:for-each select="caja/cd">
            {
              "t": "<xsl:value-of select="t"/>",
              "a": "<xsl:value-of select="a"/>",
              "p": "<xsl:value-of select="p"/>",
              "c.d": "<xsl:value-of select="c.d"/>",
              "pr": <xsl:value-of select="pr"/>,
              "año": <xsl:value-of select="año"/>
            }
            <xsl:if test="position() &lt; last()">,</xsl:if>
        </xsl:for-each>
            ]
        }
    }
    </xsl:template>
</xsl:stylesheet>
        
        