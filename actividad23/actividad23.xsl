<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1."
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <table border="1">
                    <xsl:for-each select="factura">
                        <tr>
                            <th>Factura nª<xsl:value-of select="@nombre"/></th>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>