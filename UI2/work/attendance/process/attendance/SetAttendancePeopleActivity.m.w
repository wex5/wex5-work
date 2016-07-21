<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:161px;left:311px;" onParamsReceive="modelParamsReceive" onModelConstruct="modelModelConstruct"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="AttendanceAdminData" queryAction="queryOa_attendanceadmin" saveAction="saveOa_attendanceadmin" url="/work/attendance" tableName="oa_attendanceadmin" idColumn="fID"><column label="fID" name="fID" type="String" xid="default4"></column>
  <column label="版本" name="version" type="Integer" xid="default5"></column>
  <column label="考勤人ID" name="fPersonID" type="String" xid="default6"></column>
  <column label="考勤人名称" name="fPersonName" type="String" xid="default7"></column>
  <column label="考勤组织ID" name="fOrgID" type="String" xid="default8"></column>
  <column label="考勤组织名称" name="fOrgName" type="String" xid="default9"></column>
  <column label="考勤部门ID" name="fDeptID" type="String" xid="default10"></column>
  <column label="考勤部门名称" name="fDeptName" type="String" xid="default11"></column>
  <column label="考勤班制" name="fAttendanceClass" type="String" xid="default12"></column>
  <column label="考勤组名称" name="fAttendanceGroupName" type="String" xid="default13"></column>
  <column label="考勤组负责人" name="fAttendanceTeamManager" type="String" xid="default14"></column>
  <column label="考勤组负责人ID" name="fAttendanceTeamManagerID" type="String" xid="default15"></column>
  <column label="创建时间" name="fCreateTime" type="DateTime" xid="default16"></column>
  <column label="修改时间" name="fUpdataTime" type="DateTime" xid="default17"></column>
  <column label="参与考勤人员" name="fAttendancePersonName" type="String" xid="default18"></column>
  <column label="参与考勤人员ID" name="fAttendancePersonID" type="String" xid="default19"></column>
  <column label="有效范围" name="fEffectiveRange" type="String" xid="default20"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="mainData" queryAction="queryOa_attendanceadmin" saveAction="saveOa_attendanceadmin" url="/work/attendance" tableName="oa_attendanceadmin" idColumn="fID" limit="-1"><column label="fID" name="fID" type="String" xid="default1"></column>
  <column label="版本" name="version" type="Integer" xid="default2"></column>
  <column label="考勤人ID" name="fPersonID" type="String" xid="default3"></column>
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
  <column label="有效范围" name="fEffectiveRange" type="String" xid="default34"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="修改人员"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">修改人员</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1" style="background-color:#ededed;"><div xid="div1" style="border:1px solid #dddddd;margin:20px 0px;background-color:white;padding-left:10px;"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
   <label class="x-label" xid="fAttendanceGroupNameL" bind-text='$model.AttendanceAdminData.label("fAttendanceGroupName")'></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="fAttendanceGroupNameInput" placeHolder="请输入考勤组名称"></input></div>
  </div>
  <div xid="div2" style="padding-left:10px;border:1px solid #dddddd;background-color:white;"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
   <label class="x-label" xid="label2" style="width:auto;"><![CDATA[参与考勤人员]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit x-right" xid="AttendancePerson" placeHolder="请选择" bind-click="AttendancePersonClick" readonly="true"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
   <label class="x-label" xid="label3" style="width:auto;"><![CDATA[考勤组负责人]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit x-right" xid="attendanceResponsiblePerson" placeHolder="请选择" readonly="true" bind-click="attendanceResponsiblePersonClick"></input></div></div>
  <div xid="div7" style="padding:10px 15px;"><p xid="p1"><![CDATA[管理本考勤组的排班统计,减轻管理员的考勤工作]]></p>
  <p xid="p2"><![CDATA[这些人的考勤时间都一样吗?(选择后不可修改)]]></p></div>
  <div xid="div8" style="background-color:white;border:1px solid #dddddd;">
  
  </div></div>
  <div class="x-panel-bottom" xid="bottom1"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="保存" xid="saveBtn" onClick="saveBtnClick">
   <i xid="i1"></i>
   <span xid="span1">保存</span></a></div></div> 
<span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog" type="OKCancel"></span>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="replaceDialog" type="OKCancel"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="AttendanceOrgDialog" src="$UI/work/common/process/personDlgActivity.w" onReceive="AttendanceOrgDialogReceive"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="ManagersOrgDialog" src="$UI/work/common/process/personDlgActivity.w" onReceive="ManagersOrgDialogReceive"></span></div>