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
                xmlns:fn="http://www.w3.org/2005/xpath-functions"
                xmlns:hashmap="http://www.oracle.com/XSL/Transform/java/java.util.HashMap"
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
                xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:sblws="http://siebel.com/webservices" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:svcdoc="http://xmlns.oracle.com/Services/Documentation/V1" xmlns:tns="http://siebel.com/CustomUI"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:xsdLocal1="http://www.siebel.com/xml/SWIAccountHierarchy"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                exclude-result-prefixes="xsi xsl svcdoc xsdLocal1 sblws plnk soapenc soap ns2 tns ns1 ns4 custhierabcs ns0 xsd corecom ns3 custhierebo aia bpws xp20 bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap"
                version="2.0">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/SWIAccountHiearchy.WSDL"/>
        <oracle-xsl-mapper:rootElement name="SWIAccountHierarchyGetAccountHierarchy_Input"
                                       namespace="http://siebel.com/CustomUI"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/ProcessAccountHierarchyListSiebelCommsProvABCSImpl.wsdl"/>
        <oracle-xsl-mapper:rootElement name="ProcessBillingAccountListEBM"
                                       namespace="http://xmlns.oracle.com/EnterpriseObjects/Core/EBO/CustomerParty/V2"/>
        <oracle-xsl-mapper:param name="ProcessAccountHierarchyListReqMsg.ProcessAccountHierarchyListEBM"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/../../ProcessAccountHierarchyListSiebelCommsProvABCSImpl.wsdl"/>
        <oracle-xsl-mapper:rootElement name="ProcessBillingAccountListEBM"
                                       namespace="http://xmlns.oracle.com/EnterpriseObjects/Core/EBO/CustomerParty/V2"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <oracle-xsl-mapper:mapShowPrefixes type="true"/>
    <oracle-xsl-mapper:named-template-schema>
      <oracle-xsl-mapper:template name="PopulateIdentification">
        <oracle-xsl-mapper:mapSources/>
      </oracle-xsl-mapper:template>
    </oracle-xsl-mapper:named-template-schema>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [WED DEC 03 17:46:18 IST 2014].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="ProcessAccountHierarchyListReqMsg.ProcessAccountHierarchyListEBM"/>
  <xsl:variable name="TargetSystemId">
    <xsl:value-of select="$ProcessAccountHierarchyListReqMsg.ProcessAccountHierarchyListEBM/custhierebo:ProcessBillingAccountListEBM/corecom:EBMHeader/corecom:Target/corecom:ID"/>
  </xsl:variable>
  <xsl:variable name="XrefMap" select="hashmap:new()"/>
  <xsl:template match="/">
    <custhierebo:ProcessBillingAccountListEBM>
      <xsl:copy-of select="$ProcessAccountHierarchyListReqMsg.ProcessAccountHierarchyListEBM/custhierebo:ProcessBillingAccountListEBM/corecom:EBMHeader"/>
      <xsl:for-each-group select="/tns:SWIAccountHierarchyGetAccountHierarchy_Output/xsdLocal1:ListOfSWIAccountHierarchy/xsdLocal1:SWIAccountHierarchy/xsdLocal1:SWIAccountList/xsdLocal1:SWIAccount" group-by="xsdLocal1:AccountId">
        <xsl:variable name="AccID" select="xsdLocal1:AccountId"/>
		<xsl:variable name="AcctCommon">
          <xsl:call-template name="PopulateIdentification">
            <xsl:with-param name="SchemeAgencyID" select="$TargetSystemId"/>
            <xsl:with-param name="SchemeID" select="'CUSTOMERPARTY_ACCOUNTID'"/>
            <xsl:with-param name="ApplicationObjectKeyID" select="$AccID"/>
            <xsl:with-param name="CreateCommonIDFlag" select="'Y'"/>
          </xsl:call-template>
        </xsl:variable>
        <custhierebo:DataArea>
          <corecom:Process>
            <xsl:attribute name="responseCode">ID</xsl:attribute>
          </corecom:Process>
          <custhierebo:ProcessBillingAccountList>
            <xsl:if test="$ProcessAccountHierarchyListReqMsg.ProcessAccountHierarchyListEBM/custhierebo:ProcessBillingAccountListEBM/custhierebo:DataArea/custhierebo:ProcessBillingAccountList[custhierebo:CustomerPartyAccount/corecom:Identification/corecom:BusinessComponentID=$AcctCommon]/corecom:Identification">
              <xsl:copy-of select="$ProcessAccountHierarchyListReqMsg.ProcessAccountHierarchyListEBM/custhierebo:ProcessBillingAccountListEBM/custhierebo:DataArea/custhierebo:ProcessBillingAccountList[custhierebo:CustomerPartyAccount/corecom:Identification/corecom:BusinessComponentID=$AcctCommon]/corecom:Identification"/>
            </xsl:if>
            <custhierebo:CustomerPartyAccount>
              <corecom:Identification>
                <corecom:BusinessComponentID>
                  <xsl:value-of select="$AcctCommon"/>
                </corecom:BusinessComponentID>
              </corecom:Identification>
              <custhierebo:CreationDateTime>
                <xsl:value-of select="xp20:current-dateTime()"/>
              </custhierebo:CreationDateTime>
              <corecom:ParentCustomerPartyAccountIdentification>
                <xsl:variable name="ParentId"
                              select="/tns:SWIAccountHierarchyGetAccountHierarchy_Output/xsdLocal1:ListOfSWIAccountHierarchy/xsdLocal1:SWIAccountHierarchy[xsdLocal1:SWIAccountList/xsdLocal1:SWIAccount[xsdLocal1:AccountId=$AccID]][1]/xsdLocal1:SWIAccountList/xsdLocal1:SWIAccount[xsdLocal1:AccountId=$AccID]/xsdLocal1:ParentAccountId"/>
                <corecom:BusinessComponentID>
                  <xsl:call-template name="PopulateIdentification">
                    <xsl:with-param name="SchemeAgencyID" select="$TargetSystemId"/>
                    <xsl:with-param name="SchemeID" select="'CUSTOMERPARTY_ACCOUNTID'"/>
                    <xsl:with-param name="ApplicationObjectKeyID" select="$ParentId"/>
                    <xsl:with-param name="CreateCommonIDFlag" select="'Y'"/>
                  </xsl:call-template>
                </corecom:BusinessComponentID>
                <corecom:ApplicationObjectKey>
                  <corecom:ID>
                    <xsl:attribute name="schemeID">AccountId</xsl:attribute>
                    <xsl:attribute name="schemeAgencyID">SEBL_01</xsl:attribute>
                    <xsl:value-of select="$ParentId"/>
                  </corecom:ID>
                </corecom:ApplicationObjectKey>
                <corecom:AlternateObjectKey>
                  <corecom:ID>
                    <xsl:attribute name="schemeID">AccountType</xsl:attribute>
                    <xsl:attribute name="schemeAgencyID">AIA</xsl:attribute>
                    <xsl:choose>
                      <xsl:when test="$ProcessAccountHierarchyListReqMsg.ProcessAccountHierarchyListEBM/custhierebo:ProcessBillingAccountListEBM/custhierebo:DataArea/custhierebo:ProcessBillingAccountList[custhierebo:CustomerPartyAccount/corecom:Identification/corecom:BusinessComponentID=$AcctCommon]">
                        <xsl:value-of select="'Billing'"/>
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:value-of select="'Hierarchy'"/>
                        <xsl:variable name="HierarchyCommonIDValue">
                          <xsl:if test="xref:lookupXRef('oramds:/apps/AIAMetaData/xref/CUSTOMERPARTY_HIERARCHYBILLINFO.xref',$TargetSystemId,$AccID,'COMMON',false())=''">
                            <xsl:value-of select="xref:populateLookupXRefRow('oramds:/apps/AIAMetaData/xref/CUSTOMERPARTY_HIERARCHYBILLINFO.xref',$TargetSystemId,$AccID,'COMMON',$AcctCommon,'ADD')"/>
                          </xsl:if>
                        </xsl:variable>
                      </xsl:otherwise>
                    </xsl:choose>
                  </corecom:ID>
                </corecom:AlternateObjectKey>
              </corecom:ParentCustomerPartyAccountIdentification>
            </custhierebo:CustomerPartyAccount>
            <xsl:if test="$ProcessAccountHierarchyListReqMsg.ProcessAccountHierarchyListEBM/custhierebo:ProcessBillingAccountListEBM/custhierebo:DataArea/custhierebo:ProcessBillingAccountList[custhierebo:CustomerPartyAccount/corecom:Identification/corecom:BusinessComponentID=$AcctCommon]/custhierebo:CustomerPartyBillingProfile">
              <xsl:copy-of select="$ProcessAccountHierarchyListReqMsg.ProcessAccountHierarchyListEBM/custhierebo:ProcessBillingAccountListEBM/custhierebo:DataArea/custhierebo:ProcessBillingAccountList[custhierebo:CustomerPartyAccount/corecom:Identification/corecom:BusinessComponentID=$AcctCommon]/custhierebo:CustomerPartyBillingProfile"/>
            </xsl:if>
          </custhierebo:ProcessBillingAccountList>
        </custhierebo:DataArea>
      </xsl:for-each-group>
    </custhierebo:ProcessBillingAccountListEBM>
  </xsl:template>
  <xsl:template name="PopulateIdentification">
    <xsl:param name="SchemeAgencyID"/>
    <xsl:param name="SchemeID"/>
    <xsl:param name="ApplicationObjectKeyID"/>
    <xsl:param name="CreateCommonIDFlag" select="'N'"/>
    <xsl:variable name="XREF_name" select="concat('oramds:/apps/AIAMetaData/xref/',$SchemeID,'.xref')"/>
    <xsl:variable name="XrefMapKey"
                  select="concat($XREF_name,':',$SchemeAgencyID,':',$ApplicationObjectKeyID,':COMMON')"/>
    <xsl:variable name="XrefMapValue" select="hashmap:get($XrefMap,$XrefMapKey)"/>
    <xsl:if test="$ApplicationObjectKeyID != ''">
      <xsl:choose>
        <xsl:when test="$XrefMapValue!=''">
          <xsl:value-of select="$XrefMapValue"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="CommonId"
                        select="xref:lookupXRef($XREF_name,$SchemeAgencyID, $ApplicationObjectKeyID,'COMMON',false())"/>
          <xsl:choose>
            <xsl:when test="$CreateCommonIDFlag = 'Y' and $CommonId = ''">
              <xsl:variable name="newGuid" select="orcl:generate-guid()"/>
              <xsl:variable name="referenceCommonIDValue"
                            select="xref:populateLookupXRefRow($XREF_name,$SchemeAgencyID,$ApplicationObjectKeyID,'COMMON',$newGuid,'ADD')"/>
              <xsl:variable name="addToMap" select="hashmap:put($XrefMap,$XrefMapKey,$referenceCommonIDValue)"/>
              <xsl:value-of select="$referenceCommonIDValue"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="$CommonId"/>
              <xsl:variable name="addToMap" select="hashmap:put($XrefMap,$XrefMapKey,$CommonId)"/>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>