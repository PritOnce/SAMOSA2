<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <table border="1">
                    <xsl:for-each select="factura">
                        <tr>
                            <th colspan="6">Factura nª<xsl:value-of select="@nombre"/>
                            </th>
                        </tr>
                    </xsl:for-each>
                    <tr>
                        <xsl:for-each select="factura/empresa">
                            <td colspan="3">
                                <xsl:value-of select="nom.empresa"/>
                                <br/>
                                <xsl:value-of select="calle.empresa"/>
                                <br/>
                                <xsl:value-of select="localidad.empresa"/>
                                <br/>
                                <xsl:value-of select="CIF.empresa"/>
                                <br/>
                                <xsl:value-of select="telf.empresa"/>
                                <br/>
                                <xsl:value-of select="fax.empresa"/>
                            </td>
                        </xsl:for-each>
                        <xsl:for-each select="factura/fecha.emisión">
                            <td colspan="3">
                                Fecha: <xsl:value-of select="fecha"/>
                                <br/>
                                Pedido <xsl:value-of select="pedido"/>
                                <br/>
                                Forma de pago: <xsl:value-of select="forma.pago"/>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td colspan="6"><b>Datos CLIENTE</b></td>
                    </tr>
                    <tr>
                        <xsl:for-each select="factura/datos.cliente">
                        <td colspan="6">
                            nª cliente: <xsl:value-of select="num.cliente"/>
                            <br/>
                            Nombre: <xsl:value-of select="nom.cliente"/>
                            <br />
                            Dirección de envio: <xsl:value-of select="calle.envio"/>
                            <br />
                            Población: <xsl:value-of select="población.cliente"/>
                            <br />
                            cod. postal: <xsl:value-of select="cod.postal"/>
                            <br />
                            Provincia: <xsl:value-of select="provincia"/>
                        </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td colspan="6"><b>Datos FACTURA</b></td>
                    </tr>
                    <tr>
                        <td style="text-align: right"><b>REF.</b></td>
                        <td style="text-align: right"><b>DESCRIPCIÓN</b></td>
                        <td><b>CANT.</b></td>
                        <td><b>PRECIO.</b></td>
                        <td><b>I.V.A</b></td>
                        <td><b>IMPORTE.</b></td>
                    </tr>
                    <xsl:for-each select="factura/datos.facturas/dato.facutura">
                        <tr>
                            <td><xsl:value-of select="REF"/></td>
                            <td><xsl:value-of select="descripción"/></td>
                            <td><xsl:value-of select="Cant"/></td>
                            <td><xsl:value-of select="precio"/></td>
                            <td><xsl:value-of select="I.V.A"/></td>
                            <td><xsl:value-of select="importe"/></td>
                        </tr>
                    </xsl:for-each>
                    <tr>
                        <td colspan="2"><b>Base imposible</b></td>
                        <td colspan="2"><b>I.V.A</b></td>
                        <td colspan="2"><b>Cuota I.V.A</b></td>
                    </tr>
                    <xsl:for-each select="factura/datos.facturas/suma">
                        <tr>
                            <td colspan="2"><xsl:value-of select="base.imposible"/></td>
                            <td colspan="2"><xsl:value-of select="IVA"/></td>
                            <td colspan="2"><xsl:value-of select="cuotaIVA"/></td>
                        </tr>
                    </xsl:for-each>
                    <xsl:for-each select="factura/datos.facturas">
                        <tr>
                            <th colspan="6">TOTAL FACTURA: <xsl:value-of select="total.factura"/></th>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>