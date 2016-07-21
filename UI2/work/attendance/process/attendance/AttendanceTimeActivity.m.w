<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:340px;left:70px;" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="showData" idColumn="fID" autoNew="false"><column name="fID" type="String" xid="xid1"></column>
  <column name="fDepart" type="String" xid="xid2"></column>
  <column name="fTime" type="String" xid="xid3"></column>
  <column name="isChecked" type="String" xid="xid4"></column>
  <rule xid="rule1">
   <col name="fID" xid="ruleCol1">
    <calculate xid="calculate1">
     <expr xid="default1">justep.UUID.createUUID()</expr></calculate> </col> </rule></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="false" xid="DepartData" queryAction="queryOa_attendancetime" saveAction="saveOa_attendancetime" url="/work/attendance" tableName="oa_attendancetime" idColumn="fID"><column label="fID" name="fID" type="String" xid="default15"></column>
  <column label="版本" name="version" type="Integer" xid="default16"></column>
  <column label="考勤管理ID" name="fAttendanceAdminID" type="String" xid="default17"></column>
  <column label="班次" name="fDepart" type="String" xid="default18"></column>
  <column label="上班" name="fStartAM" type="String" xid="default19"></column>
  <column label="下班" name="fEndAM" type="String" xid="default20"></column>
  <column label="下午上班时间" name="fStartPM" type="String" xid="default21"></column>
  <column label="下午下班时间" name="fEndPM" type="String" xid="default22"></column>
  <column label="时段" name="fTime" type="String" xid="default23"></column>
  <column label="考勤组织ID" name="fOrgID" type="String" xid="default24"></column>
  <column label="考勤组织名称" name="fOrgName" type="String" xid="default25"></column>
  <rule xid="rule2">
   <col name="fID" xid="ruleCol2">
    <calculate xid="calculate2">
     <expr xid="default2">justep.UUID.createUUID()</expr></calculate> </col> </rule></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="班次设置"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">班次设置</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    
  <div class="x-panel-content x-cards" xid="content2">
   <span xid="span3" style="padding-left:10px;">从全局班次中选择你想要的班次</span><ul component="$UI/system/components/justep/list/list" class="x-list x-list-template" xid="showList" data="showData" style="background-color:white;">
   <li xid="showLi">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
     <div class="x-col x-col-fixed x-col-center" xid="col6" style="width:auto;">
      <span component="$UI/system/components/justep/button/radio" class="x-radio" xid="radio" name="choose" checkedValue="1" uncheckedValue="0" bind-ref='ref("isChecked")' checked="true"></span></div> 
     <div class="x-col" xid="col7">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
       <div class="x-col x-col-fixed" xid="col9" style="width:auto;">
        <span xid="departSpan" bind-text='"班次"+val("fDepart")'></span></div> 
       <div class="x-col text-overflow" xid="col12">
        <span xid="timeSpan" bind-text='val("fTime")'></span></div> </div> </div> 
     <div class="x-col x-col-fixed" xid="col8" style="width:auto;">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="editButton" icon="icon-edit" onClick="editButtonClick">
       <i xid="i1" class="icon-edit"></i>
       <span xid="span5"></span></a> </div> </div> </li> </ul><div component="$UI/system/components/justep/row/row" class="x-row" xid="row" bind-click="rowClick" style="background-color:white;">
   <div class="x-col x-col-fixed" xid="col5" style="width:auto;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="button3" icon="icon-android-add">
     <i xid="i4" class="icon-android-add"></i>
     <span xid="span2"></span></a> </div> 
   <div class="x-col x-col-center" xid="col11" style="font-size:medium;">
    <span xid="span3">新增全局班次</span></div> 
   <div class="x-col" xid="col1"></div></div></div>
  <div class="x-panel-bottom" xid="bottom1" height="42">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="保存" xid="saveButton" style="font-weight:bold;font-size:medium;" onClick="saveButtonClick">
    <i xid="i4"></i>
    <span xid="span9">保存</span></a> </div>
  </div> 
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="timeDlg" onReceive="timeDlgReceive"></span></div>