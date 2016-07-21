<div 
  xmlns:xu="http://www.xmldb.org/xupdate" 
  xmlns:xui="http://www.justep.com/xui" 
  __id="id_1" 
  component="$UI/system/components/justep/window/window" 
  extends="$UI/OA/common/process/pubMultySelect/pubMultySelect.w" 
  xid="window" 
  class="window window" 
  xmlns="http://www.w3.org/1999/xhtml" 
  design="device:mobile" >

   <div xid="main" autoLoad="true" concept="OA_Pub_BaseCode"  xui:update-mode="merge"/>
    <reader action="/OA/common/logic/action/queryOA_Pub_BaseCodeAction" xid="default1_5" xui:parent="main" xui:update-mode="insert" />
    <filter name="filter0" xid="filter1_5" xui:parent="main" xui:update-mode="insert" >
<![CDATA[OA_Pub_BaseCode.fUseStatus = '1' and OA_Pub_BaseCode.fScope='自选主题词']]>
</filter>
    <column name="fName" xid="column1_5" xui:parent="columns2" xui:update-mode="insert" />

</div>