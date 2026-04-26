<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <body>
        <h1>Biblioteca</h1>
        <p>Llista de documents disponibles</p>
        <p>
          <xsl:value-of select="/biblioteca/llibre[1]/titol"/>
        </p>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>