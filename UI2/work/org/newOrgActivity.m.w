<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:446px;left:69px;height:auto;"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="newOrgData" queryAction="querySa_oporg" saveAction="saveSa_oporg" url="/work/org" tableName="sa_oporg" idColumn="sID" autoNew="true" limit="-1"><column label="sID" name="sID" type="String" xid="default1"></column>
  <column label="sName" name="sName" type="String" xid="default2"></column>
  <column label="sCode" name="sCode" type="String" xid="default3"></column>
  <column label="sLongName" name="sLongName" type="String" xid="default4"></column>
  <column label="sFName" name="sFName" type="String" xid="default5"></column>
  <column label="sFCode" name="sFCode" type="String" xid="default6"></column>
  <column label="sFID" name="sFID" type="String" xid="default7"></column>
  <column label="sOrgKindID" name="sOrgKindID" type="String" xid="default8"></column>
  <column label="sSequence" name="sSequence" type="String" xid="default9"></column>
  <column label="sValidState" name="sValidState" type="Integer" xid="default10"></column>
  <column label="sParent" name="sParent" type="String" xid="default11"></column>
  <column label="sLevel" name="sLevel" type="Integer" xid="default12"></column>
  <column label="sPhone" name="sPhone" type="String" xid="default13"></column>
  <column label="sFax" name="sFax" type="String" xid="default14"></column>
  <column label="sAddress" name="sAddress" type="String" xid="default15"></column>
  <column label="sZip" name="sZip" type="String" xid="default16"></column>
  <column label="sDescription" name="sDescription" type="String" xid="default17"></column>
  <column label="sPersonID" name="sPersonID" type="String" xid="default18"></column>
  <column label="sNodeKind" name="sNodeKind" type="String" xid="default19"></column>
  <column label="sWxDeptID" name="sWxDeptID" type="Integer" xid="default20"></column>
  <column label="version" name="version" type="Integer" xid="default21"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="新建机构"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">新建机构</div>  
          <div class="x-titlebar-right reverse"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="saveBtn" icon="icon-android-checkmark" onClick="saveBtnClick">
   <i xid="i2" class="icon-android-checkmark"></i>
   <span xid="span2"></span></a></div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/bootstrap/row/row" class="row" xid="row1">
   <div class="col col-xs-12" xid="nameCol"><div component="$UI/system/components/bootstrap/row/row" class="row" xid="row3" style="width:100%;margin:0 auto;">
   <div class="col col-xs-12" xid="col7" style="padding:10px;"><span xid="nameSpan" style="font-size:large;font-family:微软雅黑;color:#7D7D7D;"><![CDATA[请输入新机构的名称：]]></span></div>
   <div class="col col-xs-12" xid="col8"><input component="$UI/system/components/justep/input/input" class="form-control" xid="nameInput"></input></div>
   </div></div>
   <div class="col col-xs-12" xid="numCol"><div component="$UI/system/components/bootstrap/row/row" class="row" xid="row4" style="width:100%;margin:0 auto;">
   <div class="col col-xs-12" xid="col10" style="padding:10px;"><span xid="numSpan" style="font-size:large;font-family:微软雅黑;color:#7D7D7D;"><![CDATA[请输入新机构的编码：]]></span></div>
   <div class="col col-xs-12" xid="col11"><input component="$UI/system/components/justep/input/input" class="form-control" xid="numInput" placeHolder="请输入6-15位编码"></input></div>
   </div></div>
   </div></div>
  </div> 
</div>