<?xml version='1.0'?>
<!--
  ~ Copyright (c) 2010-2012. Light Framework
  ~
  ~ Licensed under the Apache License, Version 2.0 (the "License");
  ~ you may not use this file except in compliance with the License.
  ~ You may obtain a copy of the License at
  ~
  ~     http://www.apache.org/licenses/LICENSE-2.0
  ~
  ~ Unless required by applicable law or agreed to in writing, software
  ~ distributed under the License is distributed on an "AS IS" BASIS,
  ~ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  ~ See the License for the specific language governing permissions and
  ~ limitations under the License.
  -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xslthl="http://xslthl.sf.net"
                exclude-result-prefixes="xslthl"
                version='1.0'>

    <!-- ********************************************************************
   $Id: highlight.xsl 8419 2009-04-29 20:37:52Z kosek $
   ********************************************************************

   This file is part of the XSL DocBook Stylesheet distribution.
   See ../README or http://docbook.sf.net/release/xsl/current/ for
   and other information.

   ******************************************************************** -->

    <xsl:import href="../highlighting/common.xsl"/>

    <xsl:param name="highlight.source" select="1"/>
    <xsl:param name="highlight.default.language" select="java"/>

    <xsl:template match='xslthl:tag' mode="xslthl">
        <span class="code_tag">
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <xsl:template match='xslthl:attribute' mode="xslthl">
        <span class="code_attribute">
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <xsl:template match='xslthl:value' mode="xslthl">
        <span class="code_value">
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <xsl:template match='xslthl:keyword' mode="xslthl">
        <span class="code_keyword">
            <xsl:apply-templates mode="xslthl"/>
        </span>
    </xsl:template>

    <xsl:template match='xslthl:string' mode="xslthl">
        <span class="code_string">
            <xsl:apply-templates mode="xslthl"/>
        </span>
    </xsl:template>

    <xsl:template match='xslthl:comment' mode="xslthl">
        <span class="code_comment">
            <xsl:apply-templates mode="xslthl"/>
        </span>
    </xsl:template>

    <!--
    <xsl:template match='xslthl:html'>
      <span style='background:#AFF'><font color='blue'><xsl:apply-templates/></font></span>
    </xsl:template>

    <xsl:template match='xslthl:xslt'>
      <span style='background:#AAA'><font color='blue'><xsl:apply-templates/></font></span>
    </xsl:template>

    <xsl:template match='xslthl:section'>
      <span style='background:yellow'><xsl:apply-templates/></span>
    </xsl:template>
    -->

    <xsl:template match='xslthl:number' mode="xslthl">
        <span class="code_number">
            <xsl:apply-templates mode="xslthl"/>
        </span>
    </xsl:template>

    <xsl:template match='xslthl:annotation' mode="xslthl">
        <span class="code_annotation">
            <xsl:apply-templates mode="xslthl"/>
        </span>
    </xsl:template>

    <xsl:template match='xslthl:directive' mode="xslthl">
        <span class="code_directive">
            <xsl:apply-templates mode="xslthl"/>
        </span>
    </xsl:template>

    <!-- Not sure which element will be in final XSLTHL 2.0 -->
    <xsl:template match='xslthl:doccomment|xslthl:doctype' mode="xslthl">
        <span class="code_doctype">
            <xsl:apply-templates mode="xslthl"/>
        </span>
    </xsl:template>

</xsl:stylesheet>

