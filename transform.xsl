<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <body>
        <h1>Biblioteca</h1>
        <p>Llista de documents disponibles</p>
        <p>
          <xsl:value-of select="/biblioteca/llibre[1]/titol"/>
          -
          <xsl:value-of select="/biblioteca/llibre[1]/autor"/>
        </p>
        <p>
          <xsl:value-of select="/biblioteca/revista/@codi"/>
        </p>
        <ul>
          <xsl:for-each select="/biblioteca/llibre">
            <li>
              <xsl:value-of select="titol"/>
              <xsl:value-of select="autor"/>
            </li>
          </xsl:for-each>
        </ul>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>