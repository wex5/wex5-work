<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:102px;left:275px;height:auto;" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="false" xid="mainData" queryAction="queryOa_attendanceadmin" saveAction="saveOa_attendanceadmin" url="/work/attendance" tableName="oa_attendanceadmin" idColumn="fID" autoNew="true"><column label="fID" name="fID" type="String" xid="default18"></column>
  <column label="版本" name="version" type="Integer" xid="default19"></column>
  <column label="考勤人ID" name="fPersonID" type="String" xid="default20"></column>
  <column label="考勤人名称" name="fPersonName" type="String" xid="default21"></column>
  <column label="考勤组织ID" name="fOrgID" type="String" xid="default22"></column>
  <column label="考勤组织名称" name="fOrgName" type="String" xid="default23"></column>
  <column label="考勤部门ID" name="fDeptID" type="String" xid="default24"></column>
  <column label="考勤部门名称" name="fDeptName" type="String" xid="default25"></column>
  <column label="考勤班制" name="fAttendanceClass" type="String" xid="default26"></column>
  <column label="考勤组名称" name="fAttendanceGroupName" type="String" xid="default27"></column>
  <column label="考勤组负责人" name="fAttendanceTeamManager" type="String" xid="default28"></column>
  <column label="考勤组负责人ID" name="fAttendanceTeamManagerID" type="String" xid="default29"></column>
  <column label="创建时间" name="fCreateTime" type="DateTime" xid="default30"></column>
  <column label="修改时间" name="fUpdataTime" type="DateTime" xid="default31"></column>
  <column label="参与考勤人员" name="fAttendancePersonName" type="String" xid="default32"></column>
  <column label="参与考勤人员ID" name="fAttendancePersonID" type="String" xid="default33"></column>
  <column label="有效范围" name="fEffectiveRange" type="Integer" xid="default34"></column>
  <rule xid="rule1">
   <col name="fID" xid="ruleCol1">
    <calculate xid="calculate1">
     <expr xid="default35">justep.UUID.createUUID()</expr></calculate> </col> </rule></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="selectData" idColumn="value"><column name="value" type="String" xid="xid1"></column>
  <column name="name" type="String" xid="xid2"></column>
  <data xid="default36">[{&quot;value&quot;:&quot;1&quot;,&quot;name&quot;:&quot;固定班制(考勤时间固定)&quot;},{&quot;value&quot;:&quot;2&quot;,&quot;name&quot;:&quot;排班制(考勤时间都不固定)&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="false" xid="weekData" queryAction="queryOa_attendanceweek" saveAction="saveOa_attendanceweek" url="/work/attendance" tableName="oa_attendanceweek" idColumn="fID" autoNew="true"><column label="fID" name="fID" type="String" xid="default50"></column>
  <column label="版本" name="version" type="Integer" xid="default51"></column>
  <column label="考勤管理ID" name="fAttendanceAdminID" type="String" xid="default52"></column>
  <column label="考勤班次设置ID" name="fDepartID" type="String" xid="default53"></column>
  <column label="每周一" name="fMonday" type="String" xid="default54"></column>
  <column label="每周二" name="fTuesday" type="String" xid="default55"></column>
  <column label="每周三" name="fWednesday" type="String" xid="default56"></column>
  <column label="每周四" name="fThursday" type="String" xid="default57"></column>
  <column label="每周五" name="fFriday" type="String" xid="default58"></column>
  <column label="每周六" name="fSaturday" type="String" xid="default59"></column>
  <column label="每周日" name="fSunday" type="String" xid="default60"></column>
  <column label="班次" name="fDepart" type="String" xid="default61"></column>
  <column label="班次时间" name="fDepartTime" type="String" xid="default62"></column>
  <rule xid="rule2">
   <col name="fID" xid="ruleCol2">
    <calculate xid="calculate2">
     <expr xid="default63">justep.UUID.createUUID()</expr></calculate> </col> </rule></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="false" xid="addrData" queryAction="queryOa_attendancemap" saveAction="saveOa_attendancemap" url="/work/attendance" tableName="oa_attendancemap" idColumn="fID" autoNew="true" directDelete="true" confirmDelete="false"><column label="fID" name="fID" type="String" xid="default80"></column>
  <column label="版本" name="version" type="Integer" xid="default81"></column>
  <column label="考勤管理ID" name="fAttendanceAdminID" type="String" xid="default82"></column>
  <column label="经度" name="fLongitude" type="String" xid="default83"></column>
  <column label="纬度" name="fLatitude" type="String" xid="default84"></column>
  <column label="地址信息" name="fAddressDetail" type="String" xid="default85"></column>
  <column label="考勤地点名称" name="fAttenAddrName" type="String" xid="default86"></column>
  <rule xid="rule3">
   <col name="fID" xid="ruleCol12">
    <calculate xid="calculate12">
     <expr xid="default87">justep.UUID.createUUID()</expr></calculate> </col> </rule></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="attenData" queryAction="queryOa_attendanceadmin" saveAction="saveOa_attendanceadmin" url="/work/attendance" tableName="oa_attendanceadmin" idColumn="fID" limit="-1">
   <column label="fID" name="fID" type="String" xid="default16"></column>
   <column label="版本" name="version" type="Integer" xid="default1"></column>
   <column label="考勤人ID" name="fPersonID" type="String" xid="default14"></column>
   <column label="考勤人名称" name="fPersonName" type="String" xid="default12"></column>
   <column label="考勤组织ID" name="fOrgID" type="String" xid="default10"></column>
   <column label="考勤组织名称" name="fOrgName" type="String" xid="default8"></column>
   <column label="考勤部门ID" name="fDeptID" type="String" xid="default7"></column>
   <column label="考勤部门名称" name="fDeptName" type="String" xid="default6"></column>
   <column label="考勤班制" name="fAttendanceClass" type="String" xid="default5"></column>
   <column label="考勤组名称" name="fAttendanceGroupName" type="String" xid="default4"></column>
   <column label="考勤组负责人" name="fAttendanceTeamManager" type="String" xid="default17"></column>
   <column label="考勤组负责人ID" name="fAttendanceTeamManagerID" type="String" xid="default3"></column>
   <column label="创建时间" name="fCreateTime" type="DateTime" xid="default2"></column>
   <column label="修改时间" name="fUpdataTime" type="DateTime" xid="default15"></column>
   <column label="参与考勤人员" name="fAttendancePersonName" type="String" xid="default13"></column>
   <column label="参与考勤人员ID" name="fAttendancePersonID" type="String" xid="default11"></column>
   <column label="有效范围" name="fEffectiveRange" type="Integer" xid="default9"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="新增考勤组"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">新增考勤组</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div xid="div1" style="border:1px solid #dddddd;margin:20px 0px;background-color:white;padding-left:10px;">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
    <label class="x-label" xid="fAttendanceGroupNameL" style="font-weight:bold;"><![CDATA[考勤组名称]]></label>
    <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="fAttendanceGroupNameInput" placeHolder="请输入考勤组名称" bind-ref='$model.mainData.ref("fAttendanceGroupName")'></input></div> </div>
  <div xid="div2" style="padding-left:10px;border:1px solid #dddddd;background-color:white;">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
    <label class="x-label" xid="label2" style="width:auto;font-weight:bold;">参与考勤人员</label>
    <input component="$UI/system/components/justep/input/input" class="form-control x-edit x-right" xid="AttendancePerson" placeHolder="请选择" readonly="true" bind-click="AttendancePersonClick"></input></div> 
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
    <label class="x-label" xid="label3" style="width:auto;font-weight:bold;">考勤组负责人</label>
    <input component="$UI/system/components/justep/input/input" class="form-control x-edit x-right" xid="attendanceResponsiblePerson" placeHolder="请选择" readonly="true" bind-click="attendanceResponsiblePersonClick"></input></div> </div>
  <div xid="div7" style="padding:10px 15px;">
   <p xid="p1">管理本考勤组的排班统计,减轻管理员的考勤工作</p>
   <p xid="p2">这些人的考勤时间都一样吗?(选择后不可修改)</p></div>
  <div xid="div8" style="background-color:white;border:1px solid #dddddd;">
   <div xid="div3" style="padding:20px 10px;">
    <span component="$UI/system/components/justep/button/radio" class="x-radio" xid="radio1" name="banzhi" label="固定班制(考勤时间固定)" value="1" checkedValue="1" checked="true" bind-ref='$model.selectData.ref("value")'></span></div> 
   <div xid="div4" style="padding:20px 10px;">
    <span component="$UI/system/components/justep/button/radio" class="x-radio" xid="radio2" name="banzhi" label="排班制(考勤时间都不固定)" value="2" checkedValue="2" bind-ref='$model.selectData.ref("value")'></span></div> 
  
  </div>
  <div xid="div5" style="padding-top:10px;margin-top:15px;border:1px solid #dddddd;">
  
  <div xid="setAttenTime" bind-click="setAttenTimeClick"><h3 xid="h31" style="color:#262626;display:inline-block;margin-top:0px;"><![CDATA[考勤时间]]></h3><a component="$UI/system/components/justep/button/button" class="btn btn-link pull-right" xid="button1" icon="icon-chevron-right" style="padding-top:0px;">
   <i xid="i1" class="icon-chevron-right"></i>
   <span xid="span1"></span></a></div>
  <div xid="div9"><span xid="span9"><![CDATA[每周]]></span><span xid="span2" bind-text='$model.weekData.val("fMonday")=="true" ?"一、":""'></span>
  <span xid="span3" bind-text='$model.weekData.val("fTuesday")=="true" ?"二、":""'></span>
  <span xid="span4" bind-text='$model.weekData.val("fWednesday")=="true" ?"三、":""'></span>
  <span xid="span5" bind-text='$model.weekData.val("fThursday")=="true" ?"四、":""'></span>
  <span xid="span6" bind-text='$model.weekData.val("fFriday")=="true" ?"五、":""'></span>
  <span xid="span7" bind-text='$model.weekData.val("fSaturday")=="true" ?"六、":""'></span>
  <span xid="span8" bind-text='$model.weekData.val("fSunday")=="true" ?"日、":""'></span>
  <span xid="span10" bind-text='"班次"+$model.weekData.val("fDepart")'></span>
  <span xid="span11" bind-text='$model.weekData.val("fDepartTime")'></span></div>
  <div xid="div11">
   <span xid="span19"><![CDATA[每周]]></span>
   <span xid="span12" bind-text='$model.weekData.val("fMonday")=="false" ?"一、":""'></span>
   <span xid="span13" bind-text='$model.weekData.val("fTuesday")=="false" ?"二、":""'></span>
   <span xid="span14" bind-text='$model.weekData.val("fWednesday")=="false" ?"三、":""'></span>
   <span xid="span15" bind-text='$model.weekData.val("fThursday")=="false" ?"四、":""'></span>
   <span xid="span16" bind-text='$model.weekData.val("fFriday")=="false" ?"五、":""'></span>
   <span xid="span17" bind-text='$model.weekData.val("fSaturday")=="false" ?"六、":""'></span>
   <span xid="span18" bind-text='$model.weekData.val("fSunday")=="false" ?"日、":""'></span>
   <span xid="span20"><![CDATA[休息]]></span>
   </div></div>
  
  <div xid="div16"><h5 xid="h52" style="color:#808080; margin-left:15px;">设置符合你企业要求的考勤方式</h5></div><div xid="div15" style="background-color:white;padding-left:15px;border-top:1px solid #dbdbdb;">
   <div xid="div14">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="根据办公地点" xid="button3" icon="round round-footprint">
     <i xid="i3" class="round round-footprint" style="display:inline-block;font-size:xx-large;"></i>
     <span xid="span22">根据办公地点</span></a> </div> 
   <div xid="div13">
    <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="addrData" limit="20">
     <ul class="x-list-template" xid="listTemplateUl1">
      <li xid="li1" style="position:relative;border-bottom:1px solid #dbdbdb;">
       <h4 xid="h43" bind-text='val("fAttenAddrName")' style="color:#000000;"></h4>
       <h5 xid="h53" bind-text='val("fAddressDetail")' style="color:#808080;"></h5>
       <a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="removeAddrBtn" icon="icon-close-round" style="position:absolute;top:0px;right:0px;" onClick="removeAddrBtnClick">
        <i xid="i4" class="icon-close-round"></i>
        <span xid="span23"></span></a> </li> </ul> </div> </div> 
   <div xid="div12">
    <div xid="addAddr" bind-click="addAddrClick">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="添加办公地点" xid="button5" icon="dataControl dataControl-plus" style="font-size:medium;">
      <i xid="i5" class="dataControl dataControl-plus"></i>
      <span xid="span24">添加办公地点</span></a> </div> 
    <div xid="EffectiveRange" style="padding:10px 15px;">
     <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6">
      <label class="x-label" xid="label1" style="width:auto;font-weight:bold;">选择有效范围</label>
      <input component="$UI/system/components/justep/input/input" class="form-control x-edit x-right" xid="fEffectiveRange" placeHolder="请输入有效范围" dataType="Float" maxLength="3" bind-ref='$model.mainData.ref("fEffectiveRange")'></input>
      <a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button6" style="padding:0px;font-size:large;color:#808080;" label="米">
       <i xid="i6"></i>
       <span xid="span25">米</span></a> </div> </div> </div> </div>
  <div xid="div17"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="保存" xid="saveBtn" onClick="saveBtnClick">
   <i xid="i2"></i>
   <span xid="span26">保存</span></a></div></div>
  </div> 
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="mapDialog" src="$UI/work/sign/process/sign/signMapActivity.m.w" onReceive="mapDialogReceive" width="80%" height="80%"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="setAddrDialog" src="$UI/work/attendance/process/attendance/SetAddrActivity.m.w" onReceive="setAddrDialogReceive" status="normal" width="100%" height="40%"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="WeekDialog" src="$UI/work/attendance/process/attendance/AttendanceWeekActivity.m.w" onReceive="WeekDialogReceive"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="perDialog" src="$UI/work/common/process/personDlgActivity.w" onReceive="perDialogReceive"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="manDialog" src="$UI/work/common/process/personDlgActivity.w" onReceive="manDialogReceive"></span>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="replaceDialog" type="OKCancel"></span></div>