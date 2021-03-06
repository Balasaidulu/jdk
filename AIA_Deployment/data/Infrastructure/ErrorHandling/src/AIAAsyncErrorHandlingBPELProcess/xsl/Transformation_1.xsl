<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="oramds:/apps/AIAMetaData/AIAComponents/InfrastructureServiceLibrary/V1/wsdls/AIAAsyncErrorHandlingBPELProcess.wsdl"/>
      <rootElement name="Fault" namespace="http://xmlns.oracle.com/EnterpriseObjects/Core/Common/V2"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="oramds:/apps/AIAMetaData/AIAComponents/InfrastructureServiceLibrary/V1/wsdls/AIAAsyncErrorHandlingBPELProcess.wsdl"/>
      <rootElement name="Fault" namespace="http://xmlns.oracle.com/EnterpriseObjects/Core/Common/V2"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.7.8(build 150622.2350.0222) AT [FRI OCT 21 18:39:39 IST 2016]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:str="http://www.oracle.com/XSL/Transform/java/java.lang.String"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:ns2="http://xmlns.oracle.com/EnterpriseObjects/Core/Custom/Common/V2"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ns0="http://schemas.xmlsoap.org/ws/2003/03/addressing"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:ns4="urn:oasis:names:tc:xacml:2.0:policy:schema:cd:04"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:client="http://xmlns.oracle.com/AIAAsyncErrorHandlingBPELProcess"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:ns1="http://xmlns.oracle.com/EnterpriseObjects/Core/Common/V2"
                xmlns:ns3="urn:oasis:names:tc:xacml:2.0:context:schema:cd:04"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                exclude-result-prefixes="xsi xsl plnk ns2 ns0 ns4 client xsd ns1 ns3 aia bpws xp20 bpel bpm ora socket mhdr orcl dvm hwf med ids xdk xref ldap">
  <xsl:param name="EscapedRequestEBM"/>
  <xsl:variable name="AmpersandReplacement">&lt;![CDATA[&amp;amp;amp;]]&gt;</xsl:variable>
    <xsl:variable name="EscapedRequestEBM_fixed"
                  select="str:replaceAll(string($EscapedRequestEBM),'\u0026(amp;)*+',$AmpersandReplacement)"/>
    <xsl:variable name="FaultVar"
                  select="orcl:parseEscapedXML($EscapedRequestEBM_fixed)"/>
  <!--xsl:variable name="AmpersandReplacement">&amp;</xsl:variable>
    <xsl:variable name="EscapedRequestEBM_fixed"
                  select="str:replaceAll(string($EscapedRequestEBM),'\u0026(amp;)*+',$AmpersandReplacement)"/>
    <xsl:variable name="FaultVar"
                  select="orcl:parseEscapedXML($EscapedRequestEBM_fixed)"/-->                  
    <!--xsl:text disable-output-escaping="yes">&lt;ns1:Fault xmlns:ns1="http://xmlns.oracle.com/EnterpriseObjects/Core/Common/V2"/&gt;</xsl:text-->
  <xsl:template match="/">
    <ns1:Fault>
    <xsl:copy-of select="$FaultVar/ns1:EBMReference"/>
    <!--xsl:copy-of select="$FaultVar/ns1:B2BMReference"/-->
    <xsl:copy-of select="$FaultVar/ns1:FaultNotification"/>
    </ns1:Fault>
  </xsl:template>
   <xsl:template match="@*|node()">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()"/>
      </xsl:copy>
   </xsl:template>  
</xsl:stylesheet>
