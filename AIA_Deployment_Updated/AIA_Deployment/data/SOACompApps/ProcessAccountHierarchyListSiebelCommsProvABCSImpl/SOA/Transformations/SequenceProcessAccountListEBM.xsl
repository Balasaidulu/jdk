<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:corecom="http://xmlns.oracle.com/EnterpriseObjects/Core/Common/V2"
                xmlns:custhierabcs="http://xmlns.oracle.com/ABCSImpl/Siebel/Industry/Comms/ProcessAccountHierarchyListSiebelCommsProvABCSImpl/V1"
                xmlns:custhierebo="http://xmlns.oracle.com/EnterpriseObjects/Core/EBO/CustomerParty/V2"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:ns0="http://xmlns.oracle.com/EnterpriseObjects/Core/Custom/EBO/CustomerParty/V2"
                xmlns:ns1="http://schemas.xmlsoap.org/ws/2003/03/addressing"
                xmlns:ns2="http://xmlns.oracle.com/EnterpriseObjects/Core/Custom/Common/V2"
                xmlns:ns3="urn:oasis:names:tc:xacml:2.0:context:schema:cd:04"
                xmlns:ns4="urn:oasis:names:tc:xacml:2.0:policy:schema:cd:04"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:sblws="http://siebel.com/webservices" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:svcdoc="http://xmlns.oracle.com/Services/Documentation/V1"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                exclude-result-prefixes="xsi xsl svcdoc sblws plnk soap ns2 ns1 ns4 ns0 custhierabcs xsd corecom ns3 custhierebo aia bpws xp20 bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap"
                version="2.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/AIAMetaData/AIAComponents/ApplicationConnectorServiceLibrary/Siebel/V1/ProviderABCS/ProcessAccountHierarchyListSiebelCommsProvABCSImpl.wsdl"/>
        <oracle-xsl-mapper:rootElement name="ProcessBillingAccountListEBM"
                                       namespace="http://xmlns.oracle.com/EnterpriseObjects/Core/EBO/CustomerParty/V2"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="oramds:/apps/AIAMetaData/AIAComponents/ApplicationConnectorServiceLibrary/Siebel/V1/ProviderABCS/ProcessAccountHierarchyListSiebelCommsProvABCSImpl.wsdl"/>
        <oracle-xsl-mapper:rootElement name="ProcessBillingAccountListEBM"
                                       namespace="http://xmlns.oracle.com/EnterpriseObjects/Core/EBO/CustomerParty/V2"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <oracle-xsl-mapper:mapShowPrefixes type="true"/>
    <oracle-xsl-mapper:named-template-schema>
      <oracle-xsl-mapper:template name="BuildHierarchy">
        <oracle-xsl-mapper:mapSources/>
      </oracle-xsl-mapper:template>
    </oracle-xsl-mapper:named-template-schema>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [WED DEC 03 17:46:18 IST 2014].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <custhierebo:ProcessBillingAccountListEBM>
      <xsl:copy-of select="/custhierebo:ProcessBillingAccountListEBM/corecom:EBMHeader">
        <?oracle-xsl-mapper-position corecom:EBMHeader?>
      </xsl:copy-of>
      <xsl:for-each select='/custhierebo:ProcessBillingAccountListEBM/custhierebo:DataArea[./custhierebo:ProcessBillingAccountList/custhierebo:CustomerPartyAccount/corecom:ParentCustomerPartyAccountIdentification/corecom:BusinessComponentID = ""]'>
        <xsl:copy-of select=".">
          <?oracle-xsl-mapper-position custhierebo:DataArea?>
        </xsl:copy-of>
        <xsl:variable name="RootParent">
          <xsl:value-of select="./custhierebo:ProcessBillingAccountList/custhierebo:CustomerPartyAccount/corecom:Identification/corecom:BusinessComponentID"/>
        </xsl:variable>
        <!--abc>
	  <xsl:value-of select="$RootParent">
	  </xsl:value-of>
	  </abc-->
        <!--xsl:call-template name="BuildHierarchy">
	  <xsl:with-param name="Cnodes" select='//custhierebo:ProcessBillingAccountListEBM/custhierebo:DataArea[./custhierebo:ProcessBillingAccountList/custhierebo:CustomerPartyAccount/corecom:ParentCustomerPartyAccountIdentification/corecom:BusinessComponentID = "$RootParent"]'/>	  
	</xsl:call-template-->
        <xsl:call-template name="BuildHierarchy">
          <xsl:with-param name="Cnodes"
                          select="/custhierebo:ProcessBillingAccountListEBM/custhierebo:DataArea[./custhierebo:ProcessBillingAccountList/custhierebo:CustomerPartyAccount/corecom:ParentCustomerPartyAccountIdentification/corecom:BusinessComponentID=$RootParent]"/>
        </xsl:call-template>
      </xsl:for-each>
    </custhierebo:ProcessBillingAccountListEBM>
    <!--custhierebo:ProcessBillingAccountListEBM>
      <xsl:copy-of select="/custhierebo:ProcessBillingAccountListEBM/corecom:EBMHeader"/>
      <xsl:for-each select="/custhierebo:ProcessBillingAccountListEBM/cpartyebo:DataArea">
      
      </xsl:for-each>
    </custhierebo:ProcessBillingAccountListEBM-->
  </xsl:template>
  <xsl:template name="BuildHierarchy">
    <xsl:param name="Cnodes"/>
    <!--abc3>
	  <xsl:value-of select="count($Cnodes/custhierebo:ProcessBillingAccountList)">
	  </xsl:value-of>
	  </abc3-->
    <!--xsl:for-each select="$Cnodes/*">
<abc3>
	  <xsl:value-of select="local-name()">
	  </xsl:value-of>
	  </abc3>
	  </xsl:for-each-->
    <xsl:for-each select="$Cnodes/custhierebo:ProcessBillingAccountList">
      <xsl:variable name="Parent">
        <xsl:value-of select="./custhierebo:CustomerPartyAccount/corecom:Identification/corecom:BusinessComponentID"/>
      </xsl:variable>
      <!--abc1>
	  <xsl:value-of select="$Parent">
	  </xsl:value-of>
	  </abc1-->
      <xsl:choose>
        <xsl:when test="count(/custhierebo:ProcessBillingAccountListEBM/custhierebo:DataArea[./custhierebo:ProcessBillingAccountList/custhierebo:CustomerPartyAccount/corecom:ParentCustomerPartyAccountIdentification/corecom:BusinessComponentID =$Parent])=0">
          <!--abc4>
	  <xsl:value-of select="'In When'">
	  </xsl:value-of>
	  </abc4-->
          <xsl:copy-of select="/custhierebo:ProcessBillingAccountListEBM/custhierebo:DataArea[./custhierebo:ProcessBillingAccountList/custhierebo:CustomerPartyAccount/corecom:Identification/corecom:BusinessComponentID=$Parent]"/>
        </xsl:when>
        <xsl:otherwise>
          <!--abc4>
	  <xsl:value-of select="'In Otherwise'">
	  </xsl:value-of>
	  </abc4-->
          <xsl:copy-of select="/custhierebo:ProcessBillingAccountListEBM/custhierebo:DataArea[./custhierebo:ProcessBillingAccountList/custhierebo:CustomerPartyAccount/corecom:Identification/corecom:BusinessComponentID=$Parent]"/>
          <xsl:call-template name="BuildHierarchy">
            <xsl:with-param name="Cnodes"
                            select="/custhierebo:ProcessBillingAccountListEBM/custhierebo:DataArea[./custhierebo:ProcessBillingAccountList/custhierebo:CustomerPartyAccount/corecom:ParentCustomerPartyAccountIdentification/corecom:BusinessComponentID =$Parent]"/>
          </xsl:call-template>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>