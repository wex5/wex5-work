<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:449px;left:741px;" onParamsReceive="modelParamsReceive" onModelConstructDone="modelModelConstructDone"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="OA_AttendanceMap" queryAction="queryOa_attendancemap" saveAction="saveOa_attendancemap" url="/work/attendance" tableName="oa_attendancemap" idColumn="fID"><column label="fID" name="fID" type="String" xid="default13"></column>
  <column label="版本" name="version" type="Integer" xid="default14"></column>
  <column label="考勤管理ID" name="fAttendanceAdminID" type="String" xid="default15"></column>
  <column label="经度" name="fLongitude" type="String" xid="default16"></column>
  <column label="纬度" name="fLatitude" type="String" xid="default17"></column>
  <column label="地址信息" name="fAddressDetail" type="String" xid="default18"></column>
  <column label="考勤地点名称" name="fAttenAddrName" type="String" xid="default19"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="OA_AttendanceAdmin" queryAction="queryOa_attendanceadmin" saveAction="saveOa_attendanceadmin" url="/work/attendance" tableName="oa_attendanceadmin" idColumn="fID"><column label="fID" name="fID" type="String" xid="default37"></column>
  <column label="版本" name="version" type="Integer" xid="default38"></column>
  <column label="考勤人ID" name="fPersonID" type="String" xid="default39"></column>
  <column label="考勤人名称" name="fPersonName" type="String" xid="default40"></column>
  <column label="考勤组织ID" name="fOrgID" type="String" xid="default41"></column>
  <column label="考勤组织名称" name="fOrgName" type="String" xid="default42"></column>
  <column label="考勤部门ID" name="fDeptID" type="String" xid="default43"></column>
  <column label="考勤部门名称" name="fDeptName" type="String" xid="default44"></column>
  <column label="考勤班制" name="fAttendanceClass" type="String" xid="default45"></column>
  <column label="考勤组名称" name="fAttendanceGroupName" type="String" xid="default46"></column>
  <column label="考勤组负责人" name="fAttendanceTeamManager" type="String" xid="default47"></column>
  <column label="考勤组负责人ID" name="fAttendanceTeamManagerID" type="String" xid="default48"></column>
  <column label="创建时间" name="fCreateTime" type="DateTime" xid="default49"></column>
  <column label="修改时间" name="fUpdataTime" type="DateTime" xid="default50"></column>
  <column label="参与考勤人员" name="fAttendancePersonName" type="String" xid="default51"></column>
  <column label="参与考勤人员ID" name="fAttendancePersonID" type="String" xid="default52"></column>
  <column label="有效范围" name="fEffectiveRange" type="String" xid="default53"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="Data" queryAction="queryOa_attendanceadmin" saveAction="saveOa_attendanceadmin" url="/work/attendance" tableName="oa_attendanceadmin" idColumn="fID"><column label="fID" name="fID" type="String" xid="default54"></column>
  <column label="版本" name="version" type="Integer" xid="default55"></column>
  <column label="考勤人ID" name="fPersonID" type="String" xid="default56"></column>
  <column label="考勤人名称" name="fPersonName" type="String" xid="default57"></column>
  <column label="考勤组织ID" name="fOrgID" type="String" xid="default58"></column>
  <column label="考勤组织名称" name="fOrgName" type="String" xid="default59"></column>
  <column label="考勤部门ID" name="fDeptID" type="String" xid="default60"></column>
  <column label="考勤部门名称" name="fDeptName" type="String" xid="default61"></column>
  <column label="考勤班制" name="fAttendanceClass" type="String" xid="default62"></column>
  <column label="考勤组名称" name="fAttendanceGroupName" type="String" xid="default63"></column>
  <column label="考勤组负责人" name="fAttendanceTeamManager" type="String" xid="default64"></column>
  <column label="考勤组负责人ID" name="fAttendanceTeamManagerID" type="String" xid="default65"></column>
  <column label="创建时间" name="fCreateTime" type="DateTime" xid="default66"></column>
  <column label="修改时间" name="fUpdataTime" type="DateTime" xid="default67"></column>
  <column label="参与考勤人员" name="fAttendancePersonName" type="String" xid="default68"></column>
  <column label="参与考勤人员ID" name="fAttendancePersonID" type="String" xid="default69"></column>
  <column label="有效范围" name="fEffectiveRange" type="String" xid="default70"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="OA_AttendanceWeek" queryAction="queryOa_attendanceweek" saveAction="saveOa_attendanceweek" url="/work/attendance" tableName="oa_attendanceweek" idColumn="fID"><column label="fID" name="fID" type="String" xid="default84"></column>
  <column label="版本" name="version" type="Integer" xid="default85"></column>
  <column label="考勤管理ID" name="fAttendanceAdminID" type="String" xid="default86"></column>
  <column label="考勤班次设置ID" name="fDepartID" type="String" xid="default87"></column>
  <column label="每周一" name="fMonday" type="String" xid="default88"></column>
  <column label="每周二" name="fTuesday" type="String" xid="default89"></column>
  <column label="每周三" name="fWednesday" type="String" xid="default90"></column>
  <column label="每周四" name="fThursday" type="String" xid="default91"></column>
  <column label="每周五" name="fFriday" type="String" xid="default92"></column>
  <column label="每周六" name="fSaturday" type="String" xid="default93"></column>
  <column label="每周日" name="fSunday" type="String" xid="default94"></column>
  <column label="班次" name="fDepart" type="String" xid="default95"></column>
  <column label="班次时间" name="fDepartTime" type="String" xid="default96"></column>
  <rule xid="rule1">
   <col name="fID" xid="ruleCol1">
    <calculate xid="calculate1">
     <expr xid="default1">justep.UUID.createUUID()</expr></calculate> </col> </rule></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="OA_AttendanceTime" queryAction="queryOa_attendancetime" saveAction="saveOa_attendancetime" url="/work/attendance" tableName="oa_attendancetime" idColumn="fID"><column label="fID" name="fID" type="String" xid="default2"></column>
  <column label="版本" name="version" type="Integer" xid="default3"></column>
  <column label="考勤管理ID" name="fAttendanceAdminID" type="String" xid="default4"></column>
  <column label="班次" name="fDepart" type="String" xid="default5"></column>
  <column label="上班" name="fStartAM" type="String" xid="default6"></column>
  <column label="下班" name="fEndAM" type="String" xid="default7"></column>
  <column label="下午上班时间" name="fStartPM" type="String" xid="default8"></column>
  <column label="下午下班时间" name="fEndPM" type="String" xid="default9"></column>
  <column label="时段" name="fTime" type="String" xid="default10"></column>
  <column label="考勤组织ID" name="fOrgID" type="String" xid="default11"></column>
  <column label="考勤组织名称" name="fOrgName" type="String" xid="default12"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="规则设置"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">规则设置</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1" style="background-color:#ededed;"><h5 xid="setGroup" style="color:#808080;font-weight:bold;"><![CDATA[]]></h5>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="setAttenTime" bind-click="setAttenTimeClick" style="background-color:white;">
   <div class="x-col x-col-fixed x-col-center" xid="col1" style="width:auto;"><span xid="span1" style="font-weight:bold;font-size:large;"><![CDATA[考勤时间]]></span></div>
   <div class="x-col x-col-center" xid="col2"><span xid="attendanceTime" class="text-overflow" bind-text=" ' 班次' +$model.OA_AttendanceWeek.val(&quot;fDepart&quot;)+'  ' + $model.OA_AttendanceWeek.val(&quot;fDepartTime&quot;)"></span></div>
   <div class="x-col x-col-fixed" xid="col3" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-link pull-right" xid="button1" icon="icon-chevron-right">
   <i xid="i1" class="icon-chevron-right"></i>
   <span xid="span2"></span></a></div></div><h5 xid="h52" style="color:#808080; margin-left:15px;"><![CDATA[设置符合你企业要求的考勤方式]]></h5>
  <div xid="div4" style="background-color:white;padding-left:15px;border-top:1px solid #dbdbdb;"><div xid="div5"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="根据办公地点" xid="button3" icon="round round-footprint">
   <i xid="i3" class="round round-footprint" style="display:inline-block;font-size:xx-large;"></i>
   <span xid="span4">根据办公地点</span></a></div>
  <div xid="div6"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="OA_AttendanceMap">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" style="position:relative;border-bottom:1px solid #dbdbdb;"><h4 xid="h43" bind-text='val("fAttenAddrName")' style="color:#000000;"><![CDATA[]]></h4>
  <h5 xid="h53" bind-text='val("fAddressDetail")' style="color:#808080;"><![CDATA[]]></h5>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="removeAddrBtn" icon="icon-close-round" style="position:absolute;top:0px;right:0px;" onClick="removeAddrBtnClick">
   <i xid="i4" class="icon-close-round"></i>
   <span xid="span5"></span></a></li></ul> </div></div>
  <div xid="div7"><div xid="addAddr" bind-click="addAddrClick"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="添加办公地点" xid="button5" icon="dataControl dataControl-plus" style="font-size:medium;">
   <i xid="i5" class="dataControl dataControl-plus"></i>
   <span xid="span6">添加办公地点</span></a></div>
  <div xid="EffectiveRange" style="padding:10px 15px;"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
   <label class="x-label" xid="label1" style="width:auto;font-weight:bold;"><![CDATA[选择有效范围]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit x-right" xid="fEffectiveRange" placeHolder="请输入有效范围" dataType="Float" maxLength="2"></input><a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button6" style="padding:0px;font-size:large;color:#808080;" label="米">
   <i xid="i6"></i>
   <span xid="span8">米</span></a></div></div></div></div>
  </div>
  <div class="x-panel-bottom" xid="bottom1"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block btn-" label="保存" xid="saveBtn" onClick="saveBtnClick">
   <i xid="i2"></i>
   <span xid="span3">保存</span></a></div></div> 
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="mapDialog" src="$UI/work/sign/process/sign/signMapActivity.m.w" onReceive="mapDialogReceive"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="setAddrDialog" status="normal" src="$UI/work/attendance/process/attendance/SetAddrActivity.m.w" height="40%" width="100%" onReceive="setAddrDialogReceive"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="WeekDialog" src="$UI/work/attendance/process/attendance/AttendanceWeekActivity.m.w" activity="AttendanceWeekActivity" process="/work/attendance/process/attendance/attendanceProcess" onReceive="WeekDialogReceive"></span></div>