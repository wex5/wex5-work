<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:10px;left:123px;height:auto;" onParamsReceive="modelParamsReceive" onModelConstruct="modelModelConstruct"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="false" xid="orgData" queryAction="querySa_oporg" saveAction="saveSa_oporg" url="/work/org" tableName="sa_oporg" idColumn="sID" autoNew="false" limit="1"><column label="sID" name="sID" type="String" xid="default22"></column>
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
  <column label="version" name="version" type="Integer" xid="default42"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="regData" queryAction="querySa_opperson" saveAction="saveSa_opperson" url="/work/org" tableName="sa_opperson" idColumn="sID"><column label="sID" name="sID" type="String" xid="default268"></column>
  <column label="sName" name="sName" type="String" xid="default269"></column>
  <column label="sCode" name="sCode" type="String" xid="default270"></column>
  <column label="sIDCard" name="sIDCard" type="String" xid="default271"></column>
  <column label="sNumb" name="sNumb" type="Integer" xid="default272"></column>
  <column label="sLoginName" name="sLoginName" type="String" xid="default273"></column>
  <column label="sPassword" name="sPassword" type="String" xid="default274"></column>
  <column label="sPasswordTimeLimit" name="sPasswordTimeLimit" type="Integer" xid="default275"></column>
  <column label="sPasswordModifyTime" name="sPasswordModifyTime" type="DateTime" xid="default276"></column>
  <column label="sMainOrgID" name="sMainOrgID" type="String" xid="default277"></column>
  <column label="sSafeLevelID" name="sSafeLevelID" type="String" xid="default278"></column>
  <column label="sSequence" name="sSequence" type="Integer" xid="default279"></column>
  <column label="sValidState" name="sValidState" type="Integer" xid="default280"></column>
  <column label="sDescription" name="sDescription" type="String" xid="default281"></column>
  <column label="sSex" name="sSex" type="String" xid="default282"></column>
  <column label="sBirthday" name="sBirthday" type="DateTime" xid="default283"></column>
  <column label="sJoinDate" name="sJoinDate" type="DateTime" xid="default284"></column>
  <column label="sHomePlace" name="sHomePlace" type="String" xid="default285"></column>
  <column label="sDegree" name="sDegree" type="String" xid="default286"></column>
  <column label="sGraduateSchool" name="sGraduateSchool" type="String" xid="default287"></column>
  <column label="sSpeciality" name="sSpeciality" type="String" xid="default288"></column>
  <column label="sSchoolLength" name="sSchoolLength" type="String" xid="default289"></column>
  <column label="sTitle" name="sTitle" type="String" xid="default290"></column>
  <column label="sMarriage" name="sMarriage" type="String" xid="default291"></column>
  <column label="sCardNO" name="sCardNO" type="String" xid="default292"></column>
  <column label="sCardKind" name="sCardKind" type="String" xid="default293"></column>
  <column label="sFamilyAddress" name="sFamilyAddress" type="String" xid="default294"></column>
  <column label="sZip" name="sZip" type="String" xid="default295"></column>
  <column label="sMsn" name="sMsn" type="String" xid="default296"></column>
  <column label="sQQ" name="sQQ" type="String" xid="default297"></column>
  <column label="sMail" name="sMail" type="String" xid="default298"></column>
  <column label="sMobilePhone" name="sMobilePhone" type="String" xid="default299"></column>
  <column label="sFamilyPhone" name="sFamilyPhone" type="String" xid="default300"></column>
  <column label="sOfficePhone" name="sOfficePhone" type="String" xid="default301"></column>
  <column label="version" name="version" type="Integer" xid="default302"></column>
  <column label="sPhotoLastModified" name="sPhotoLastModified" type="DateTime" xid="default304"></column>
  <column label="sCountry" name="sCountry" type="String" xid="default305"></column>
  <column label="sProvince" name="sProvince" type="String" xid="default306"></column>
  <column label="sCity" name="sCity" type="String" xid="default307"></column>
  <column label="SPOSITIONS" name="SPOSITIONS" type="String" xid="default308"></column>
  <column label="SSCHOOL" name="SSCHOOL" type="String" xid="default309"></column>
  <column label="SSTUDY" name="SSTUDY" type="String" xid="default310"></column>
  <column label="sEnglishName" name="sEnglishName" type="String" xid="default311"></column>
  <column label="sFunRole" name="sFunRole" type="Integer" xid="default312"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="选择方式"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            </div>  
          <div class="x-titlebar-title">选择方式</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="height:100%;">
   <div class="x-col" xid="col1" style="padding:0 20px;height:100%;"><img src="$UI/work/org/img/recommend.jpg" alt="" xid="image1" style="width:100%;" height="100%"></img>
  <div xid="div1" style="position:absolute;width:60%;height:35%;bottom:10%;left:20%;"><div component="$UI/system/components/bootstrap/row/row" class="row" xid="row3" style="text-align:left;">
   <div class="col col-xs-12" xid="col7" style="margin-bottom:10px;"><h3 xid="h31"><![CDATA[为您推荐以下方式：]]></h3></div>
   <div class="col col-xs-12" xid="callCol" style="margin-bottom:10px;" bind-click="callColClick"><h4 xid="h41"><![CDATA[NO.1 联系管理员创建组织]]></h4></div>
   <div class="col col-xs-12" xid="searchCol" bind-click="searchColClick"><h4 xid="h42" style="width:215px;"><![CDATA[NO.2 加入已有组织]]></h4></div></div></div></div>
   </div></div>
  </div> 
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="joinOrgDialog" src="$UI/work/common/process/orgDptDialog/index.w" onReceive="joinOrgDialogReceive"></span></div>