<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:358px;left:331px;" onLoad="modelLoad" onModelConstruct="modelModelConstruct"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="changeDepartData" idColumn="fID" confirmDelete="true" confirmDeleteText="确认删除当前班次"><column name="fID" type="String" xid="xid1"></column>
  <column label="时段" name="fTime" type="String" xid="xid2"></column>
  <column label="上班" name="fStart" type="Time" xid="xid3"></column>
  <column label="下班" name="fEnd" type="Time" xid="xid4"></column>
  <column label="班次" name="fDepart" type="String" xid="xid5"></column>
  <data xid="default4">[{&quot;fID&quot;:&quot;1&quot;,&quot;fTime&quot;:&quot;时段1&quot;,&quot;fStart&quot;:&quot;09:00:00&quot;,&quot;fEnd&quot;:&quot;18:00:00&quot;,&quot;fDepart&quot;:&quot;A&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="DepartData" queryAction="queryOa_attendancetime" saveAction="saveOa_attendancetime" url="/work/attendance" tableName="oa_attendancetime" idColumn="fID"><column label="fID" name="fID" type="String" xid="default5"></column>
  <column label="版本" name="version" type="Integer" xid="default6"></column>
  <column label="考勤管理ID" name="fAttendanceAdminID" type="String" xid="default7"></column>
  <column label="班次" name="fDepart" type="String" xid="default8"></column>
  <column label="上班" name="fStartAM" type="String" xid="default9"></column>
  <column label="下班" name="fEndAM" type="String" xid="default10"></column>
  <column label="下午上班时间" name="fStartPM" type="String" xid="default11"></column>
  <column label="下午下班时间" name="fEndPM" type="String" xid="default12"></column>
  <column label="时段" name="fTime" type="String" xid="default13"></column>
  <column label="考勤组织ID" name="fOrgID" type="String" xid="default14"></column>
  <column label="考勤组织名称" name="fOrgName" type="String" xid="default15"></column>
  <rule xid="rule1">
   <col name="fID" xid="ruleCol1">
    <calculate xid="calculate1">
     <expr xid="default1">justep.UUID.createUUID()</expr></calculate> </col> </rule></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/row/row" class="x-row " xid="row2" style="background-color:#2FA4E7;height:48px;width:100%;">
   <div class="x-col x-col-center" xid="col4"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button7" onClick='{"operation":"window.close"}' icon="icon-chevron-left" style="color:#FFFFFF;font-size:18px;">
   <i xid="i2" class="icon-chevron-left"></i>
   <span xid="span12"></span></a></div>
   <div class="x-col x-col-center" xid="col5" style="color:#FFFFFF;"><span xid="titleSpan" style="display:block;text-align:center;font-weight:bold;font-size:18px;"><![CDATA[]]></span></div>
   <div class="x-col" xid="col6"></div></div></div>  
    <div class="x-panel-content x-cards" xid="content1"><div xid="oneDiv">
   
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="DepartData" limit="20">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><span xid="span5" style="padding-left:10px;" bind-text='val("fTime")'><![CDATA[]]></span>
  <div xid="div5" style="background-color:white;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="border-top:1px solid #d9d9d9;border-bottom:1px solid #D9D9D9;">
        <div class="x-col x-col-center" xid="col7">
         <span xid="span4" bind-text='label("fStartAM")' style="color:#000000;"></span></div> 
        <div class="x-col x-col-center" xid="col8">
         <span xid="startSpan" bind-text='val("fStartAM")'></span></div> 
        <div class="x-col x-col-fixed x-col-center" xid="col9" style="width:auto;">
         <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="dateButton" icon="icon-edit" onClick="dateButtonClick">
          <i xid="i5" class="icon-edit" style="color:#000000;"></i>
          <span xid="span6"></span></a> </div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="border-bottom:1px solid #D9D9D9;">
   <div class="x-col x-col-center" xid="col3">
    <span xid="span1" bind-text='label("fEndAM")' style="color:#000000;"></span></div> 
   <div class="x-col x-col-center" xid="col1">
    <span xid="endSpan" bind-text='val("fEndAM")'></span></div> 
   <div class="x-col x-col-fixed x-col-center" xid="col2" style="width:auto;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="DateButton" icon="icon-edit" onClick="DateButtonClick" style="color:#000000;">
     <i xid="i1" class="icon-edit"></i>
     <span xid="span2"></span></a> </div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="deleteRow" style="border-bottom:1px solid #D9D9D9;" bind-click="deleteRowClick">
        <div class="x-col x-col-fixed " xid="col15" style="width:auto;">
         <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="button6" icon="icon-android-remove" style="color:#FF0000;">
          <i xid="i6" class="icon-android-remove"></i>
          <span xid="span10"></span></a> </div> 
        <div class="x-col x-col-center" xid="col14" style="font-size:medium;">
         <span xid="span11">删除时段</span></div> 
        <div class="x-col" xid="col13"></div></div></div></li></ul> </div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="addDivRow" style="background-color:white;margin-top:8px;border-top:1px solid #D9D9D9;border-bottom:1px solid #D9D9D9;margin-bottom:10px;" bind-click="addDivRowClick">
   <div class="x-col x-col-fixed" xid="col10" style="width:auto;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="button3" icon="icon-android-add" style="color:#51B138;">
     <i xid="i3" class="icon-android-add"></i>
     <span xid="span7"></span></a> </div> 
   <div class="x-col x-col-center" xid="col11" style="font-size:medium;">
    <span xid="span8">新增上班时段</span></div> 
   <div class="x-col" xid="col12"></div></div>
  </div>
  <div class="x-panel-bottom" xid="bottom1" height="42">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="保存" xid="saveButton" style="font-weight:bold;font-size:medium;" onClick="saveButtonClick">
    <i xid="i4"></i>
    <span xid="span9">保存</span></a> </div></div> 
<div component="$UI/system/components/justep/datePicker/datePicker" class="x-popPicker" xid="datePickerDD" type="time" onOK="datePickerDDOK" style="top:491px;left:568px;">
   <div class="x-popPicker-overlay" xid="div2"></div>
   <div class="x-popPicker-content" xid="div3">
    <div class="x-poppicker-header" xid="div4">
     <button class="btn btn-default x-btn-ok" xid="button2">确定</button></div> </div> </div></div>