<div 
  xmlns:xu="http://www.xmldb.org/xupdate" 
  xmlns:xui="http://www.justep.com/xui" 
  __id="id_1" 
  component="$UI/system/components/justep/window/window" 
  extends="$UI/OA/common/process/pubBaseCode/pubBaseCodeActivity.w" 
  xid="window" 
  class="window" 
  xmlns="http://www.w3.org/1999/xhtml" 
  design="device:mobile" >

  <div xid="rule6" xui:update-mode="delete"/>
    <filter name="filter0" xid="filter1_1" xui:parent="dPubBaseCode" xui:update-mode="insert" >
<![CDATA[OA_Pub_BaseCode.fScope='末主题词']]>
</filter>
    <rule xid="rule6" xui:parent="dPubBaseCode" xui:update-mode="insert" >
<col name="fScope" xid="ruleCol1_2" >
<calculate xid="calculate1_2" >
<expr xid="default1_2" >
'末主题词'</expr>
</calculate>
</col>
<col name="fName" xid="ruleCol11" >
<required xid="required3" >
<expr xid="default18" >
undefined</expr>
<message xid="default19" />
</required>
</col>
</rule>

</div>