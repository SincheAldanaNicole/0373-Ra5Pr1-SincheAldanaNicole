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
          <xsl:sort select="any"/>
            <li>
              <xsl:value-of select="titol"/>
              <xsl:value-of select="autor"/>
            </li>
          </xsl:for-each>
        </ul>
        <table border="1">
          <tr>
            <th>Titol</th>
            <th>Autor</th>
            <th>Any</th>
            <th>Preu</th>
          </tr>
          <xsl:for-each select="/biblioteca/llibre[@estat='disponible']">
          <xsl:sort select="any"/>
            <tr>
              <td><xsl:value-of select="titol"/></td>
              <xsl:if test="any &lt; 1980">
                (antic)
              </xsl:if>
              <td><xsl:value-of select="autor"/></td>
              <td><xsl:value-of select="any"/></td>
              <td><xsl:value-of select="preu"/></td>
              <td>
              <xsl:choose>
                <xsl:when test="@estat='prestat'">En prestec</xsl:when>
                <xsl:otherwise>Disponible</xsl:otherwise>
              </xsl:choose>
              </td>
            </tr>
          </xsl:for-each>
        </table>
        <p>Total libros: 
          <xsl:value-of select="count(/biblioteca/llibre)"/>
        </p>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="llibre">
    <li><xsl:value-of select="titol"/></li>
  </xsl:template>
</xsl:stylesheet>
