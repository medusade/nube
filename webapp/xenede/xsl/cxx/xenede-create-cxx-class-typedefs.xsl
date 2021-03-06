<?xml version="1.0"?>
<!--========================================================================-->
<!-- Copyright (c) 1988-2011 $organization$                                 -->
<!--                                                                        -->
<!-- This software is provided by the author and contributors ``as is''     -->
<!-- and any express or implied warranties, including, but not limited to,  -->
<!-- the implied warranties of merchantability and fitness for a particular -->
<!-- purpose are disclaimed. In no event shall the author or contributors   -->
<!-- be liable for any direct, indirect, incidental, special, exemplary,    -->
<!-- or consequential damages (including, but not limited to, procurement   -->
<!-- of substitute goods or services; loss of use, data, or profits; or     -->
<!-- business interruption) however caused and on any theory of liability,  -->
<!-- whether in contract, strict liability, or tort (including negligence   -->
<!-- or otherwise) arising in any way out of the use of this software,      -->
<!-- even if advised of the possibility of such damage.                     -->
<!--                                                                        -->
<!--   File: xenede-create-cxx-class-typedefs.xsl                        -->
<!--                                                                        -->
<!-- Author: $author$                                                       -->
<!--   Date: 10/6/2011                                                      -->
<!--========================================================================-->
<xsl:transform
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:exsl="http://exslt.org/common"
 xmlns:xalan="http://xml.apache.org/xalan"
 xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 xmlns:xde="Medusa-Xos-Development-Environment"
 xmlns:mxde="Medusa-Xos-Development-Environment"
 xmlns:medusade="Medusa-Xos-Development-Environment"
 xmlns:xenede="Medusa-Xos-Development-Environment"
 exclude-result-prefixes="xsl exsl xalan msxsl xde mxde medusade xenede"
 version="1.0">

<!--========================================================================-->
<!-- Includes                                                               -->
<!--========================================================================-->
<xsl:include href="xenede-create-cxx-class-part.xsl"/>

<!--========================================================================-->
<!-- Parameters                                                             -->
<!--========================================================================-->
<xsl:param name="default_xde_form_title_what_what" select="''"/>
<xsl:param name="default_xde_form_title_what_what_what_what" select="' typedefs'"/>
<xsl:param name="default_cxx_form_class_interface" select="''"/>
<xsl:param name="default_cxx_form_class" select="'c'"/>
<xsl:param name="default_cxx_form_class_implements" select="''"/>
<xsl:param name="default_cxx_form_class_extends" select="''"/>
<xsl:param name="default_cxx_form_class_constructor" select="'yes'"/>
<xsl:param name="default_cxx_form_class_destructor" select="'virtual'"/>
<xsl:param name="default_cxx_form_class_function" select="'virtual'"/>
<xsl:param name="default_cxx_form_class_members_only" select="''"/>

<!--========================================================================-->
<!-- Templates                                                              -->
<!--========================================================================-->
<!--========================================================================-->
<!-- Template: "form_fields"                                                -->
<!--                                                                        -->
<!--   Author: $author$                                                     -->
<!--     Date: 10/6/2011                                                    -->
<!--========================================================================-->
<xsl:template name="form_fields">
    <!--========================================================================-->
    <!-- Template Body                                                          -->
    <!--========================================================================-->
    <xsl:call-template name="cxx_file_form_fields">
        <xsl:with-param name="section_text" select="$form_section"/>
        <xsl:with-param name="is_param_file_case_is" select="'no'"/>
        <xsl:with-param name="is_param_file_name_is" select="'no'"/>
        <xsl:with-param name="is_param_file_is" select="'no'"/>
    </xsl:call-template>
    <xsl:call-template name="cxx_form_fields">
        <xsl:with-param name="is_param_" select="'no'"/>
        <xsl:with-param name="is_param_style" select="'no'"/>
        <xsl:with-param name="is_param_module" select="'yes'"/>
        <xsl:with-param name="is_param_include" select="'yes'"/>
        <xsl:with-param name="is_param_include_system" select="'yes'"/>
        <xsl:with-param name="is_param_namespace" select="'yes'"/>
        <xsl:with-param name="namespace_param" select="'class_namespace'"/>
    </xsl:call-template>
    <xsl:call-template name="cxx_form_fields">
        <xsl:with-param name="is_param_" select="'no'"/>
        <xsl:with-param name="is_param_section" select="'yes'"/>
        <xsl:with-param name="is_param_typedef" select="'yes'"/>
        <xsl:with-param name="is_param_enum" select="'yes'"/>
    </xsl:call-template>
    <xsl:call-template name="cxx_form_fields">
        <xsl:with-param name="is_param_" select="'no'"/>
        <xsl:with-param name="is_param_ifdef_separator" select="'yes'"/>
        <xsl:with-param name="is_param_ifdef" select="'yes'"/>
        <xsl:with-param name="is_param_ifndef" select="'yes'"/>
        <xsl:with-param name="is_param_define" select="'yes'"/>
        <xsl:with-param name="is_param_undef" select="'yes'"/>
    </xsl:call-template>
    <xsl:call-template name="file_creation_form_fields">
    </xsl:call-template>
    <xsl:call-template name="transformation_form_fields">
    </xsl:call-template>
    <xsl:call-template name="form_form_fields">
    </xsl:call-template>
</xsl:template>
</xsl:transform>

        

