<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xs="http://www.w3.org/2001/XMLSchema"
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				exclude-result-prefixes="xs"
				version="2.0">
	<xsl:output omit-xml-declaration="yes"/>

	<xsl:template match="/">
		<xsl:text>INSERT ALL </xsl:text>

		<!-- Iterates all the rows from all the tables of the document -->
		<xsl:for-each select="//tr[@attr='foo']">

			<!-- Skip the table header -->
			<xsl:if test="generate-id(.)!=generate-id(../tr[1])">
				<xsl:text>INTO conversion VALUES(</xsl:text>
				<!-- Extracts the cells -->
				<xsl:for-each select="tc">
					'<xsl:value-of select="replace(normalize-space(.), '^pe([a-z-[bcd]]{2,4})$', 'item $1')"/>'
				</xsl:for-each>
				<xsl:text>)</xsl:text>
			</xsl:if>
		</xsl:for-each>

		<xsl:text>SELECT * FROM dual</xsl:text>

	</xsl:template>
</xsl:stylesheet>
