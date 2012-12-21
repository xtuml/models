<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:param name="make.valid.html" select="1"></xsl:param>
<xsl:param name="html.cleanup" select="1"></xsl:param>
<xsl:param name="graphic.default.extension">png</xsl:param>
<xsl:param name="html.stylesheet">techpub.css</xsl:param>
<xsl:param name="variablelist.as.table" select="1"></xsl:param>
<xsl:param name="section.autolabel" select="1"></xsl:param>
<xsl:param name="funcsynopsis.style">ansi</xsl:param>
<xsl:param name="funcsynopsis.tabular.threshold" select="80"></xsl:param>
<xsl:param name="toc.section.depth">5</xsl:param>
<xsl:param name="generate.toc">
appendix  toc,title
article   toc,title,figure,table
book      toc,title,figure,table,example,equation
</xsl:param>
<!--<xsl:include href="/usr/share/docbook-xsl/xhtml/docbook.xsl"/>-->
<xsl:include href="C:/MentorGraphics/BridgePoint/tools/docgen/docbook/docbook-xsl-1.75.1/xhtml/docbook.xsl"/>
</xsl:stylesheet>



