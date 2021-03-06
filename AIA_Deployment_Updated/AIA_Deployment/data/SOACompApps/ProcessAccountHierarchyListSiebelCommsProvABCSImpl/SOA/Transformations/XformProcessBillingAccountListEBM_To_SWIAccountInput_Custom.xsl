<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:corecom="http://xmlns.oracle.com/EnterpriseObjects/Core/Common/V2"
                xmlns:custebo="http://xmlns.oracle.com/EnterpriseObjects/Core/EBO/CustomerParty/V2"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:sblacctqry="http://www.siebel.com/xml/SWICustomerPartyIO" xmlns:sblasi="http://siebel.com/asi/V0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                exclude-result-prefixes="xsl xref dvm xp20 bpws ora ehdr aia orcl ids hwf" version="2.0">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/ProcessAccountHierarchyListSiebelCommsProvABCSImpl.wsdl"/>
        <oracle-xsl-mapper:rootElement name="ProcessBillingAccountListEBM"
                                       namespace="http://xmlns.oracle.com/EnterpriseObjects/Core/EBO/CustomerParty/V2"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/SWIAccountHiearchy.WSDL"/>
        <oracle-xsl-mapper:rootElement name="SWIAccountHierarchyGetAccountHierarchy_Input"
                                       namespace="http://siebel.com/CustomUI"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <oracle-xsl-mapper:mapShowPrefixes type="true"/>
    <oracle-xsl-mapper:named-template-schema>
      <oracle-xsl-mapper:template name="SWIAccountHierarchyGetAccountHierarchy_Input_ext">
        <oracle-xsl-mapper:mapSources/>
      </oracle-xsl-mapper:template>
      <oracle-xsl-mapper:template name="ListOfSWIAccountHierarchy_ext">
        <oracle-xsl-mapper:mapSources/>
      </oracle-xsl-mapper:template>
      <oracle-xsl-mapper:template name="SWIAccountHierarchy_ext">
        <oracle-xsl-mapper:mapSources/>
      </oracle-xsl-mapper:template>
      <oracle-xsl-mapper:template name="SWIAccountList_ext">
        <oracle-xsl-mapper:mapSources/>
      </oracle-xsl-mapper:template>
      <oracle-xsl-mapper:template name="SWIAccount_ext">
        <oracle-xsl-mapper:mapSources/>
      </oracle-xsl-mapper:template>
    </oracle-xsl-mapper:named-template-schema>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [WED DEC 03 17:46:18 IST 2014].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template name="SWIAccountHierarchyGetAccountHierarchy_Input_ext">
    <!-- Customers add tranformations here -->
  </xsl:template>
  <xsl:template name="ListOfSWIAccountHierarchy_ext">
    <!-- Customers add tranformations here -->
  </xsl:template>
  <xsl:template name="SWIAccountHierarchy_ext">
    <!-- Customers add tranformations here -->
  </xsl:template>
  <xsl:template name="SWIAccountList_ext">
    <!-- Customers add tranformations here -->
  </xsl:template>
  <xsl:template name="SWIAccount_ext">
    <!-- Customers add tranformations here -->
  </xsl:template>
</xsl:stylesheet>