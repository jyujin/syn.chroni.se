<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
              xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              xmlns:svg="http://www.w3.org/2000/svg"
              xmlns:syn="http://syn.chroni.se/2011"
              xmlns="http://www.w3.org/2000/svg"
              xmlns:date="http://exslt.org/dates-and-times"
              xmlns:xlink="http://www.w3.org/1999/xlink"
              exclude-result-prefixes="svg syn date"
              version="1.0">
  <xsl:output method="xml" version="1.0" encoding="UTF-8"
              doctype-public="-//W3C//DTD SVG 1.1//EN"
              doctype-system="http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd"
              indent="no"
              media-type="image/svg+xml" />

  <xsl:strip-space elements="*" />

  <xsl:template match="@*">
    <xsl:copy>
      <xsl:apply-templates select="node()" />
    </xsl:copy>
  </xsl:template>

  <xsl:template match="svg:*">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()" />
    </xsl:copy>
  </xsl:template>

  <xsl:template match="svg:metadata/*">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()" />
    </xsl:copy>
  </xsl:template>

  <xsl:template match="svg:svg">
    <svg>
      <xsl:apply-templates select="@*|node()" />
    </svg>
  </xsl:template>
</xsl:stylesheet>

