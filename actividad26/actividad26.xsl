<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:content="http://purl.org/rss/1.0/modules/content/"
    xmlns:dcterms="http://purl.org/dc/terms/"
    xmlns:atom="http://www.w3.org/2005/Atom"
    xmlns:media="http://search.yahoo.com/mrss/">

    <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous"/>
            </head>
            <body style="margin: 40px 50px 40px" >

                <figure class="text-center">
                    <a href ="{/rss/channel/link}" >
                        <button type="button" class="btn btn-secondary btn-lg">
                            <xsl:value-of select="rss/channel/title"/>
                        </button>
                    </a>

                </figure>

                <figure class="text-center">
                    <p class="fw-bold">
                        <xsl:value-of select="rss/channel/description"/>
                    </p>
                </figure>

                <xsl:for-each select="rss/channel/item">
                <div class="card text-center">
                    <div class="card-header" >
                        <img src="{media:content/media:thumbnail/@url}" class="card-img-top" alt="{media:content/media:title}" style="width: 40rem;"></img>
                    </div>
                    <div class="card-body">
                      <h5 class="card-title"><xsl:value-of select="title"/></h5>
                      <p class="card-text"><xsl:value-of select="description"/></p>
                      <a href="{link}" class="btn btn-primary">Noticia Completa</a>
                    </div>
                    <div class="card-footer text-muted">
                        <xsl:value-of select="dc:creator"/>
                      </div>
                    <div class="card-footer text-muted">
                      <xsl:value-of select="pubDate"/>
                    </div>
                  </div><p></p>
                </xsl:for-each>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
