<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" href="style.css" />
            </head>
            <body>
                <h1 style="text-align:center">
                    <xsl:value-of select="/rss/channel/title"/>
                </h1>

                <div class="container">
                    <h2>
                        <a href="{/rss/channel/link}">EL PAÍS</a>
                    </h2>
                    <h2 style="text-align:right">
                        <xsl:value-of select="/rss/channel/language"/>
                    </h2>
                </div>
                <h3>
                    <xsl:value-of select="/rss/channel/description"/>
                </h3>

                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>