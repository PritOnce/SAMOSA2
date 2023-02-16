<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    <html>
        <body>
            <h1>
                INFORMACIÓN CLASES DE BAILE
            </h1>
            <table border="1" cellpadding = "3">
                <tr>
                    <th rowspan="2">Nombre baile</th>
                    <th colspan="3">Precio De las Clases</th>
                    <th rowspan="2">Número de Plazas</th>
                    <th rowspan="2">Hora Incio</th>
                    <th rowspan="2">Hora Fin</th>
                    <th rowspan="2">Numero a la Semana</th>
                    <th rowspan="2">Nombre Profesor</th>
                    <th rowspan="2">Sala</th>
                </tr>

                <tr>
                    <th>Precio</th>
                    <th>Duranción inscipción</th>
                    <th>Divisa</th>
                </tr>
                <xsl:for-each select="bailes/baile">
                <tr>
                    <td style="text-align:center"><xsl:value-of select="nom"/></td>
                    <td style="text-align:center"><xsl:value-of select="precio_clase/precio"/></td>
                    <td style="text-align:center"><xsl:value-of select="precio_clase/duracion"/></td>
                    <td style="text-align:center"><xsl:value-of select="precio_clase/moneda"/></td>   
                    <td style="text-align:center"><xsl:value-of select="numplazas"/></td>
                    <td style="text-align:center"><xsl:value-of select="inicio"/></td>
                    <td style="text-align:center"><xsl:value-of select="fin"/></td>
                    <td style="text-align:center"><xsl:value-of select="numclases"/></td>
                    <td style="text-align:center"><xsl:value-of select="nom_profesor"/></td>
                    <td style="text-align:center"><xsl:value-of select="sala"/></td>
                </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>