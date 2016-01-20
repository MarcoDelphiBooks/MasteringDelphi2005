<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/employeeList">

        <DATAPACKET Version="2.0">
          <METADATA>
            <FIELDS>
              <FIELD attrname="id" fieldtype="i2" required="true"/>
              <FIELD attrname="fullname" fieldtype="string" required="true" WIDTH="45"/>
            </FIELDS>
            <PARAMS/>
          </METADATA>
          <ROWDATA>
             <xsl:apply-templates select="employee"/>
          </ROWDATA>
        </DATAPACKET>

  </xsl:template>

  <xsl:template match="employee">
    <ROW id="{@id}" fullname="{.}"/>
  </xsl:template>

</xsl:stylesheet>
