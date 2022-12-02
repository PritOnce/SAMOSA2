<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1." xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
    <body>
        <table border="1">
            <tr>
                <th colspan="6">CDs En </th>
            </tr>
            <tr>
                <th>Titulo</th>
                <th>Artista</th>
                <th>Pais</th>
                <th>Compañia discografica</th>
                <th>Precio</th>
                <th>Año de publicacion</th>
            </tr>
            <xsl:for-each select="caja/cd">
                <tr>
                    <td><xsl:value-of select="t"/></td>
                    <td><xsl:value-of select="a"/></td>
                    <td><xsl:value-of select="p"/></td>
                    <td><xsl:value-of select="c.d"/></td>
                    <td><xsl:value-of select="pr"/></td>
                    <td><xsl:value-of select="año"/></td>
                </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>