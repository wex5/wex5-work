<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:348px;left:132px;height:auto;" onParamsReceive="modelParamsReceive"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="departData" queryAction="queryOa_attendancetime" saveAction="saveOa_attendancetime" url="/work/attendance" tableName="oa_attendancetime" idColumn="fID"><column label="fID" name="fID" type="String" xid="default4"></column>
  <column label="版本" name="version" type="Integer" xid="default5"></column>
  <column label="考勤管理ID" name="fAttendanceAdminID" type="String" xid="default6"></column>
  <column label="班次" name="fDepart" type="String" xid="default7"></column>
  <column label="上班" name="fStartAM" type="String" xid="default8"></column>
  <column label="下班" name="fEndAM" type="String" xid="default9"></column>
  <column label="下午上班时间" name="fStartPM" type="String" xid="default10"></column>
  <column label="下午下班时间" name="fEndPM" type="String" xid="default11"></column>
  <column label="时段" name="fTime" type="String" xid="default12"></column>
  <column label="考勤组织ID" name="fOrgID" type="String" xid="default13"></column>
  <column label="考勤组织名称" name="fOrgName" type="String" xid="default14"></column>
  <rule xid="rule1">
   <col name="fID" xid="ruleCol1">
    <calculate xid="calculate1">
     <expr xid="default1">justep.UUID.createUUID()</expr></calculate> </col> </rule></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="新增班次"
          class="x-titlebar">
            
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left" />  
              <span></span> 
            </a> 
          </div><div class="x-titlebar-title">新增班次</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content x-cards" xid="content1"><div xid="div1"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="departData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1">
   <span xid="span1" style="padding-left:10px;" bind-text='val("fTime")'></span>
   
  <div xid="div3" style="background-color:white;" bind-blur="div3Blur">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="border-top:1px solid #d9d9d9;border-bottom:1px solid #D9D9D9;">
    <div class="x-col x-col-center " xid="col21" bind-focus="col1Focus">
     <span xid="span3" bind-text='label("fStartAM")'></span></div> 
    <div class="x-col x-col-center" xid="col19">
     <span xid="span4" bind-text='val("fStartAM")'></span></div> 
    <div class="x-col x-col-fixed" xid="col20" style="width:auto;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="dateButton" icon="icon-edit" onClick="dateButtonClick">
      <i xid="i2" class="icon-edit"></i>
      <span xid="span5"></span></a> </div> </div> 
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7" style="border-bottom:1px solid #D9D9D9;">
    <div class="x-col x-col-center" xid="col17">
     <span xid="span6" bind-text='label("fEndAM")'></span></div> 
    <div class="x-col x-col-center" xid="col18">
     <span xid="span7" bind-text='val("fEndAM")'></span></div> 
    <div class="x-col x-col-fixed x-col-center" xid="col15" style="width:auto;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon " label="button" xid="DateButton" icon="icon-edit" onClick="DateButtonClick">
      <i xid="i3" class="icon-edit"></i>
      <span xid="span8"></span></a> </div> </div> 
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="deleteRow" style="border-bottom:1px solid #D9D9D9;" bind-click="deleteRowClick">
    <div class="x-col x-col-fixed x-col-center" xid="col16" style="width:auto;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button4" icon="icon-android-remove" style="color:#FF0000;">
      <i xid="i4" class="icon-android-remove"></i>
      <span xid="span9"></span></a> </div> 
    <div class="x-col x-col-center" xid="col13">
     <span xid="span10" style="font-size:16px;">删除时段</span></div> 
    <div class="x-col" xid="col14"></div></div> </div></li></ul> </div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="addDivRow" bind-click="addDivRowClick">
   <div class="x-col x-col-fixed" xid="col10" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button5" icon="icon-android-add">
   <i xid="i5" class="icon-android-add"></i>
   <span xid="span11"></span></a></div>
   <div class="x-col x-col-center" xid="col11"><span xid="span12"><![CDATA[新增时段]]></span></div>
   <div class="x-col" xid="col12"></div></div></div>
  <div class="x-panel-bottom" xid="bottom1"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="保存" xid="saveButton" onClick="saveButtonClick">
   <i xid="i1"></i>
   <span xid="span2">保存</span></a></div></div> 
<div component="$UI/system/components/justep/datePicker/datePicker" class="x-popPicker" xid="datePickerBB" style="top:491px;left:568px;" type="time" onOK="datePickerBBOK">
   <div class="x-popPicker-overlay" xid="div4"></div>
   <div class="x-popPicker-content" xid="div5">
    <div class="x-poppicker-header" xid="div6">
     <button class="btn btn-default x-btn-ok" xid="button6">确定</button></div> </div> </div></div>