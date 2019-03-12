<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method='html' version='1.0' encoding='UTF-8' indent='yes'/>
<xsl:template match="/propertyList">
<html>
    <head>
      <title>QCoast Homes Brochures</title>
    </head>
      <body>
          <h1>Brochure List</h1>
         <table border="1">
          	<tr bgcolor="#9acd32">
          	<th>Packages</th>
        	<th>Price</th>
        	<th>Brochure</th>
        </tr>
    <xsl:for-each select="residential">
        <tr>
          <td><xsl:value-of select="headline"/></td>
          <td><xsl:value-of select="priceView"/></td>
          <td><a href="{objects/document/@url}"><xsl:value-of select="objects/document/@url"/></a></td>
        </tr>
    </xsl:for-each>
  </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>
