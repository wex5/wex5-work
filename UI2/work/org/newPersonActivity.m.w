<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:138px;left:131px;height:auto;"><div component="$UI/system/components/justep/data/baasData" autoLoad="false" xid="regData" queryAction="querySa_oporg" saveAction="saveSa_oporg" url="/work/org" tableName="sa_oporg" idColumn="sID" autoNew="true"><column label="sID" name="sID" type="String" xid="default22"></column>
  <column label="sName" name="sName" type="String" xid="default23"></column>
  <column label="sCode" name="sCode" type="String" xid="default24"></column>
  <column label="sLongName" name="sLongName" type="String" xid="default25"></column>
  <column label="sFName" name="sFName" type="String" xid="default26"></column>
  <column label="sFCode" name="sFCode" type="String" xid="default27"></column>
  <column label="sFID" name="sFID" type="String" xid="default28"></column>
  <column label="sOrgKindID" name="sOrgKindID" type="String" xid="default29"></column>
  <column label="sSequence" name="sSequence" type="String" xid="default30"></column>
  <column label="sValidState" name="sValidState" type="Integer" xid="default31"></column>
  <column label="sParent" name="sParent" type="String" xid="default32"></column>
  <column label="sLevel" name="sLevel" type="Integer" xid="default33"></column>
  <column label="sPhone" name="sPhone" type="String" xid="default34"></column>
  <column label="sFax" name="sFax" type="String" xid="default35"></column>
  <column label="sAddress" name="sAddress" type="String" xid="default36"></column>
  <column label="sZip" name="sZip" type="String" xid="default37"></column>
  <column label="sDescription" name="sDescription" type="String" xid="default38"></column>
  <column label="sPersonID" name="sPersonID" type="String" xid="default39"></column>
  <column label="sNodeKind" name="sNodeKind" type="String" xid="default40"></column>
  <column label="sWxDeptID" name="sWxDeptID" type="Integer" xid="default41"></column>
  <column label="version" name="version" type="Integer" xid="default42"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="添加人员">
   <div class="x-titlebar-left" xid="left1"><a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick='{"operation":"window.close"}' xid="backBtn">
   <i class="icon-chevron-left" xid="i1"></i>
   <span xid="span1"></span></a></div>
   <div class="x-titlebar-title" xid="title1">添加人员</div>
   <div class="x-titlebar-right reverse" xid="right1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="okBtn" icon="icon-android-checkmark" style="font-size:medium;" onClick="okBtnClick">
   <i xid="i2" class="icon-android-checkmark"></i>
   <span xid="span2"></span></a></div></div></div>
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/bootstrap/row/row" class="row" xid="inputRow" style="width:100%;margin:0 auto;">
    <div class="col col-xs-12" xid="col1" style="padding:10px 5px;">
     <input component="$UI/system/components/justep/input/input" class="form-control" xid="nameInput" placeHolder="请输入用户姓名" bind-ref='$model.regData.ref("sName")'></input></div> 
    <div class="col col-xs-12" xid="col4" style="padding:10px 5px;">
     <input component="$UI/system/components/justep/input/input" class="form-control" xid="phonenumber" placeHolder="请输入用户手机号" bind-ref='$model.regData.ref("sPhone")'></input></div> </div></div>
   </div></div>