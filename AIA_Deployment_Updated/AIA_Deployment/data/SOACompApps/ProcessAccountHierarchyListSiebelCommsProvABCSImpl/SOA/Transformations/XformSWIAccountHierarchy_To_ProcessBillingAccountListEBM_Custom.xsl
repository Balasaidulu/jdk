<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:coreEBOcust="http://xmlns.oracle.com/EnterpriseObjects/Core/Custom/CommonEBO/V1"
                xmlns:corecom="http://xmlns.oracle.com/EnterpriseObjects/Core/Common/V2"
                xmlns:corecomEBO="http://xmlns.oracle.com/EnterpriseObjects/Core/CommonEBO/V1"
                xmlns:corecomcust="http://xmlns.oracle.com/EnterpriseObjects/Core/Custom/Common/V2"
                xmlns:corecustomerpartycust="http://xmlns.oracle.com/EnterpriseObjects/Core/Custom/EBO/CustomerParty/V2"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:ns0="http://xmlns.oracle.com/EnterpriseObjects/Core/EBO/CustomerParty/V2"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:sblcust="http://www.siebel.com/xml/SWICustomerPartyIO"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/"
                xmlns:svcdoc="http://xmlns.oracle.com/Services/Documentation/V1" xmlns:tns="http://siebel.com/asi/V0"
                xmlns:wsa="http://schemas.xmlsoap.org/ws/2003/03/addressing"
                xmlns:xacml="urn:oasis:names:tc:xacml:2.0:policy:schema:cd:04"
                xmlns:xacml-context="urn:oasis:names:tc:xacml:2.0:context:schema:cd:04"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="xsl tns xsd soapenc soap sblcust corecomEBO coreEBOcust corecomcust xacml corecom ns0 corecustomerpartycust svcdoc wsa xacml-context ehdr aia xp20 ora orcl dvm bpws hwf xref ids"
                version="2.0"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/AIAMetaData/AIAComponents/ApplicationObjectLibrary/Siebel/V1/wsdls/SWICustomerPartyServices.wsdl"/>
        <oracle-xsl-mapper:rootElement name="SWICustomerPartyQueryByExample_Output" namespace="http://siebel.com/asi"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="XSD">
        <oracle-xsl-mapper:schema location="oramds:/apps/AIAMetaData/AIAComponents/EnterpriseObjectLibrary/Core/EBO/CustomerParty/V2/CustomerPartyEBM.xsd"/>
        <oracle-xsl-mapper:rootElement name="QueryCustomerPartyListResponseEBM"
                                       namespace="http://xmlns.oracle.com/EnterpriseObjects/Core/EBO/CustomerParty/V2"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <oracle-xsl-mapper:mapShowPrefixes type="true"/>
    <oracle-xsl-mapper:named-template-schema>
      <oracle-xsl-mapper:template name="SenderType_ext">
        <oracle-xsl-mapper:mapSources/>
      </oracle-xsl-mapper:template>
      <oracle-xsl-mapper:template name="TargetType_ext">
        <oracle-xsl-mapper:mapSources/>
      </oracle-xsl-mapper:template>
      <oracle-xsl-mapper:template name="EBMHeaderType_ext">
        <oracle-xsl-mapper:mapSources/>
      </oracle-xsl-mapper:template>
      <oracle-xsl-mapper:template name="BusinessScopeType_ext">
        <oracle-xsl-mapper:mapSources/>
      </oracle-xsl-mapper:template>
      <oracle-xsl-mapper:template name="ProcessBillingAccountListType_ext">
        <oracle-xsl-mapper:mapSources/>
      </oracle-xsl-mapper:template>
      <oracle-xsl-mapper:template name="CustomerPartyAccountType_ext">
        <oracle-xsl-mapper:mapSources/>
      </oracle-xsl-mapper:template>
    </oracle-xsl-mapper:named-template-schema>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [WED DEC 03 17:46:18 IST 2014].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template name="SenderType_ext">
    <!-- Customers add tranformations here -->
  </xsl:template>
  <xsl:template name="TargetType_ext">
    <!-- Customers add tranformations here -->
  </xsl:template>
  <xsl:template name="EBMHeaderType_ext">
    <!-- Customers add tranformations here -->
  </xsl:template>
  <xsl:template name="BusinessScopeType_ext">
    <!-- Customers add tranformations here -->
  </xsl:template>
  <xsl:template name="ProcessBillingAccountListType_ext">
    <!-- Customers add tranformations here -->
  </xsl:template>
  <xsl:template name="CustomerPartyAccountType_ext">
    <!-- Customers add tranformations here -->
  </xsl:template>
</xsl:stylesheet>