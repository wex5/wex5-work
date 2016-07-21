<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:274px;left:515px;" onParamsReceive="modelParamsReceive"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="AttendanceAdminData" queryAction="queryOa_attendanceadmin" saveAction="saveOa_attendanceadmin" url="/work/attendance" tableName="oa_attendanceadmin" idColumn="fID"><column label="fID" name="fID" type="String" xid="default21"></column>
  <column label="版本" name="version" type="Integer" xid="default22"></column>
  <column label="考勤人ID" name="fPersonID" type="String" xid="default23"></column>
  <column label="考勤人名称" name="fPersonName" type="String" xid="default24"></column>
  <column label="考勤组织ID" name="fOrgID" type="String" xid="default25"></column>
  <column label="考勤组织名称" name="fOrgName" type="String" xid="default26"></column>
  <column label="考勤部门ID" name="fDeptID" type="String" xid="default27"></column>
  <column label="考勤部门名称" name="fDeptName" type="String" xid="default28"></column>
  <column label="考勤班制" name="fAttendanceClass" type="String" xid="default29"></column>
  <column label="考勤组名称" name="fAttendanceGroupName" type="String" xid="default30"></column>
  <column label="考勤组负责人" name="fAttendanceTeamManager" type="String" xid="default31"></column>
  <column label="考勤组负责人ID" name="fAttendanceTeamManagerID" type="String" xid="default32"></column>
  <column label="创建时间" name="fCreateTime" type="DateTime" xid="default33"></column>
  <column label="修改时间" name="fUpdataTime" type="DateTime" xid="default34"></column>
  <column label="参与考勤人员" name="fAttendancePersonName" type="String" xid="default35"></column>
  <column label="参与考勤人员ID" name="fAttendancePersonID" type="String" xid="default36"></column>
  <column label="有效范围" name="fEffectiveRange" type="String" xid="default37"></column>
  <rule xid="rule1">
   <col name="fID" xid="ruleCol1">
    <calculate xid="calculate1">
     <expr xid="default1">justep.UUID.createUUID()</expr></calculate> </col> 
   <col name="fAttendanceClass" xid="ruleCol2">
    <calculate xid="calculate2">
     <expr xid="default2">1</expr></calculate> </col> </rule></div></div>  
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
    <div class="x-panel-content" xid="content1" style="background-color:#ededed;"><div xid="div1" style="border:1px solid #dddddd;margin:20px 0px;background-color:white;padding-left:10px;"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
   <label class="x-label" xid="fAttendanceGroupNameL" bind-text='$model.AttendanceAdminData.label("fAttendanceGroupName")' style="font-weight:bold;"></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="fAttendanceGroupNameInput" bind-ref='$model.AttendanceAdminData.ref("fAttendanceGroupName")' placeHolder="请输入考勤组名称"></input></div>
  </div>
  <div xid="div2" style="padding-left:10px;border:1px solid #dddddd;background-color:white;"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
   <label class="x-label" xid="label2" style="width:auto;font-weight:bold;"><![CDATA[参与考勤人员]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit x-right" xid="AttendancePerson" placeHolder="请选择" bind-click="AttendancePersonClick" readonly="true"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
   <label class="x-label" xid="label3" style="width:auto;font-weight:bold;"><![CDATA[考勤组负责人]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit x-right" xid="attendanceResponsiblePerson" placeHolder="请选择" readonly="true" bind-click="attendanceResponsiblePersonClick"></input></div></div>
  <div xid="div7" style="padding:10px 15px;"><p xid="p1"><![CDATA[管理本考勤组的排班统计,减轻管理员的考勤工作]]></p>
  <p xid="p2"><![CDATA[这些人的考勤时间都一样吗?(选择后不可修改)]]></p></div>
  <div xid="div8" style="background-color:white;border:1px solid #dddddd;">
  
  <div xid="div3" style="padding:20px 10px;"><span component="$UI/system/components/justep/button/radio" class="x-radio" xid="radio6" name="radio" value="1" label="固定班制(考勤时间固定)" checkedValue="1"></span></div>
  <div xid="div4" style="padding:20px 10px;"><span component="$UI/system/components/justep/button/radio" class="x-radio" xid="radio5" name="radio" label="阶段考勤班制(分时间阶段考勤)" value="2"></span></div></div></div>
  <div class="x-panel-bottom" xid="bottom1"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="下一步" xid="nextBtn" onClick="nextBtnClick">
   <i xid="i1"></i>
   <span xid="span1">下一步</span></a></div></div> 
<span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog" type="OKCancel"></span>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="replaceDialog" type="OKCancel"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="AttendanceOrgDialog" src="$UI/work/common/process/personDlgActivity.w" onReceive="AttendanceOrgDialogReceive"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="ManagersOrgDialog" src="$UI/work/common/process/personDlgActivity.w" onReceive="ManagersOrgDialogReceive"></span></div>