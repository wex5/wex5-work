<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:560px;left:34px;" onParamsReceive="modelParamsReceive" onActive="modelActive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="AttendanceInfo" idColumn="fAttendanceID" limit="-1" confirmDelete="false"><column label="考勤管理ID" name="fAttendanceID" type="String" xid="xid1"></column>
  <column label="考勤组名称" name="fAttendanceGroupName" type="String" xid="xid2"></column>
  <column label="班次" name="fAttendanceClass" type="String" xid="xid4"></column>
  <column label="考勤周" name="fWeek" type="String" xid="xid5"></column>
  <column label="班制" name="fDepart" type="String" xid="xid6"></column>
  <column label="考勤时间" name="fAMPM" type="String" xid="xid7"></column>
  <column label="考勤地点名称" name="fAttenAddrName" type="String" xid="xid8"></column>
  <column label="考勤组负责人" name="fPersonNameS" type="String" xid="xid3"></column>
  <data xid="default4">[{}]</data>
  <column label="考勤组负责人ID" name="fPersonNameSID" type="String" xid="xid9"></column>
  <column label="参与考勤人数" name="fPersonNameJ" type="String" xid="xid3"></column>
  <column label="参与考勤人数ID" name="fPersonNameJID" type="String" xid="xid10"></column>
  <column label="考勤组负责人" name="fPersonNameS" type="String" xid="xid11"></column></div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="考勤组管理"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">考勤组管理</div>  
          <div class="x-titlebar-right reverse"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link samBtn" label="高级设置" xid="advancedSetting" onClick="advancedSettingClick">
   <i xid="i7"></i>
   <span xid="span4">高级设置</span></a></div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1" style="background-color:#ededed;"><div xid="div4" style="background-color:white;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-block" label="新增考勤组" xid="addAttenGroup" icon="linear linear-shirt" style="font-size:large;" onClick="addAttenGroupClick">
   <i xid="i4" class="linear linear-shirt"></i>
   <span xid="span5">新增考勤组</span></a></div><p xid="p1" style="padding:5px 15px 20px 20px;"><![CDATA[考勤规则相同的人设置到同一考勤组,方便统计]]></p>
  <div xid="div2"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="AttendanceInfo" style="background-color:#ededed;">
   <ul class="x-list-template" xid="listTemplateUl2">
    <li xid="li2" style="margin-bottom:15px;border-top:1px solid #ddd;border-bottom:1px solid #ddd;padding:10px 20px;position:relative;background-color:white;"><div xid="div5"><span xid="fAttendanceGroupName" bind-text='val("fAttendanceGroupName")' style="font-weight:bold;font-size:large;"></span>
  <span xid="fPersonName" bind-text='val("fPersonNameJ")' style="padding-right:10px;padding-left:10px;"></span>
  <span xid="fAttendanceClass" bind-text='val("fAttendanceClass")==1?"固定班制":"阶段考勤班制"'></span></div>
  <div xid="div1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-padding" xid="button3" icon="linear linear-chevronrightcircle">
   <i xid="i3" class="linear linear-chevronrightcircle"></i>
   <span xid="span2"></span></a>
  <span xid="span3" bind-text='"负责人："+val("fPersonNameS")'></span></div><div xid="div3" class="text-overflow"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-padding" xid="button2" icon="linear linear-cloudsync">
   <i xid="i2" class="linear linear-cloudsync"></i>
   <span xid="span1"></span></a><span xid="fWeek" bind-text='val("fWeek")'></span>
  <span xid="fDepart" style="margin-left:10px;margin-right:10px;" bind-text='"班次"+val("fDepart")'></span>
  <span xid="fAMPM" bind-text='val("fAMPM")'></span>
  </div>
  <div xid="div6"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-padding" xid="button1" icon="linear linear-mapmarker">
   <i xid="i1" class="linear linear-mapmarker"></i>
   <span xid="span7"></span></a>
  <span xid="fAttenAddrName" bind-text='val("fAttenAddrName")'></span></div>
  <div xid="div7"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup1"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="修改成员及负责人" xid="undataPerson" onClick="undataPersonClick">
   <i xid="i5"></i>
   <span xid="span8">修改成员及负责人</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="修改规则" xid="updataRule" onClick="updataRuleClick">
   <i xid="i6"></i>
   <span xid="span9">修改规则</span></a></div>
  </div><a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="deleteBtn" icon="linear linear-cart" style="position:absolute;right:-5px;top:0px;" onClick="deleteBtnClick">
   <i xid="i9" class="linear linear-cart"></i>
   <span xid="span12"></span></a>
  </li></ul> </div></div>
  </div>
  </div> 
<span component="$UI/system/components/justep/messageDialog/messageDialog" xid="delMessageDialog" type="OKCancel" message="确定删除该考勤组吗？" onOK="delMessageDialogOK"></span>
  </div>