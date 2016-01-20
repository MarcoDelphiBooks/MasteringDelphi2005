<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  
  <xsl:template match="/">
    <h3>Customers List</h3>
    <p/>
    <table border="1" cellspacing="0" cellpadding="3">
      <tr> 
        <xsl:for-each select="/NewDataSet/CUSTOMER[1]/*">
          <th><xsl:value-of select="name()"/></th>
        </xsl:for-each>
      </tr>
      <xsl:apply-templates select="/NewDataSet/CUSTOMER"/>
    </table>
  </xsl:template>

  <xsl:template match="CUSTOMER">
    <tr valign="top">
      <td align="left"><xsl:value-of select="CUSTNO"/><br/></td>
      <td align="left"><xsl:value-of select="COMPANY"/><br/></td>
      <td align="left"><xsl:value-of select="ADDR1"/><br/></td>
      <td align="left"><xsl:value-of select="ADDR2"/><br/></td>
      <td align="left"><xsl:value-of select="CITY"/><br/></td>
      <td align="left"><xsl:value-of select="STATE"/><br/></td>
      <td align="left"><xsl:value-of select="ZIP"/><br/></td>
      <td align="left"><xsl:value-of select="COUNTRY"/><br/></td>
      <td align="left"><xsl:value-of select="PHONE"/><br/></td>
      <td align="left"><xsl:value-of select="FAX"/><br/></td>
      <td align="left"><xsl:value-of select="TAXRATE"/><br/></td>
      <td align="left"><xsl:value-of select="CONTACT"/><br/></td>
      <td align="left"><xsl:value-of select="LASTINVOICEDATE"/><br/></td>
    </tr>
  </xsl:template>
</xsl:stylesheet>
