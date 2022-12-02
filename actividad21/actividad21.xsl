<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
    <body>
        <table border="1">
            <tr>
                <th rowspan="2">Descripción de cada hecho</th>
                <th colspan="3">Fecha</th>
            </tr>
            <tr>
                <th>Dia</th>
                <th>Mes</th>
                <th>Año</th>
            </tr>
            <xsl:for-each select="caja/h/f">
            <tr>
                <td><xsl:value-of select="n"/></td>
                <td><xsl:value-of select="d"/></td>
                <td><xsl:value-of select="m"/></td>
                <td><xsl:value-of select="a"/></td>
            </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>
