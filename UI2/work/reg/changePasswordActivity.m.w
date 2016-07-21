<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:477px;left:162px;" onModelConstruct="modelModelConstruct"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="changePasswordData" queryAction="querySa_opperson" saveAction="saveSa_opperson" url="/work/org" tableName="sa_opperson" idColumn="sID" limit="-1"><column label="sID" name="sID" type="String" xid="default441"></column>
  <column label="sName" name="sName" type="String" xid="default442"></column>
  <column label="sCode" name="sCode" type="String" xid="default443"></column>
  <column label="sIDCard" name="sIDCard" type="String" xid="default444"></column>
  <column label="sNumb" name="sNumb" type="Integer" xid="default445"></column>
  <column label="sLoginName" name="sLoginName" type="String" xid="default446"></column>
  <column label="sPassword" name="sPassword" type="String" xid="default447"></column>
  <column label="sPasswordTimeLimit" name="sPasswordTimeLimit" type="Integer" xid="default448"></column>
  <column label="sPasswordModifyTime" name="sPasswordModifyTime" type="DateTime" xid="default449"></column>
  <column label="sMainOrgID" name="sMainOrgID" type="String" xid="default450"></column>
  <column label="sSafeLevelID" name="sSafeLevelID" type="String" xid="default451"></column>
  <column label="sSequence" name="sSequence" type="Integer" xid="default452"></column>
  <column label="sValidState" name="sValidState" type="Integer" xid="default453"></column>
  <column label="sDescription" name="sDescription" type="String" xid="default454"></column>
  <column label="sSex" name="sSex" type="String" xid="default455"></column>
  <column label="sBirthday" name="sBirthday" type="DateTime" xid="default456"></column>
  <column label="sJoinDate" name="sJoinDate" type="DateTime" xid="default457"></column>
  <column label="sHomePlace" name="sHomePlace" type="String" xid="default458"></column>
  <column label="sDegree" name="sDegree" type="String" xid="default459"></column>
  <column label="sGraduateSchool" name="sGraduateSchool" type="String" xid="default460"></column>
  <column label="sSpeciality" name="sSpeciality" type="String" xid="default461"></column>
  <column label="sSchoolLength" name="sSchoolLength" type="String" xid="default462"></column>
  <column label="sTitle" name="sTitle" type="String" xid="default463"></column>
  <column label="sMarriage" name="sMarriage" type="String" xid="default464"></column>
  <column label="sCardNO" name="sCardNO" type="String" xid="default465"></column>
  <column label="sCardKind" name="sCardKind" type="String" xid="default466"></column>
  <column label="sFamilyAddress" name="sFamilyAddress" type="String" xid="default467"></column>
  <column label="sZip" name="sZip" type="String" xid="default468"></column>
  <column label="sMsn" name="sMsn" type="String" xid="default469"></column>
  <column label="sQQ" name="sQQ" type="String" xid="default470"></column>
  <column label="sMail" name="sMail" type="String" xid="default471"></column>
  <column label="sMobilePhone" name="sMobilePhone" type="String" xid="default472"></column>
  <column label="sFamilyPhone" name="sFamilyPhone" type="String" xid="default473"></column>
  <column label="sOfficePhone" name="sOfficePhone" type="String" xid="default474"></column>
  <column label="version" name="version" type="Integer" xid="default475"></column>
  <column label="sPhotoLastModified" name="sPhotoLastModified" type="DateTime" xid="default477"></column>
  <column label="sCountry" name="sCountry" type="String" xid="default478"></column>
  <column label="sProvince" name="sProvince" type="String" xid="default479"></column>
  <column label="sCity" name="sCity" type="String" xid="default480"></column>
  <column label="SPOSITIONS" name="SPOSITIONS" type="String" xid="default481"></column>
  <column label="SSCHOOL" name="SSCHOOL" type="String" xid="default482"></column>
  <column label="SSTUDY" name="SSTUDY" type="String" xid="default483"></column>
  <column label="sEnglishName" name="sEnglishName" type="String" xid="default484"></column>
  </div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="修改密码"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">修改密码</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div xid="div1" style="max-width:420px;padding:0 15px;margin-top:50px;margin-right:auto;margin-left:auto;" class="form-container"><div class="form-horizontal container-fluid" component="$UI/system/components/bootstrap/form/form" xid="form1"><div class="form-group" xid="formGroup1">
   <div class="col-sm-3" xid="col9"><label class="control-label" xid="controlLabel1"><![CDATA[当前密码]]></label></div>
   <div class="col-sm-9" xid="col10"><input component="$UI/system/components/justep/input/password" class="form-control" xid="oldPassword" placeHolder="请输入当前密码"></input>
  </div>
   </div>
  <div class="form-group" xid="formGroup2">
   <div class="col-sm-3" xid="col13">
    <label class="control-label" xid="controlLabel2"><![CDATA[新密码]]></label></div> 
   <div class="col-sm-9" xid="col14">
    <input component="$UI/system/components/justep/input/password" class="form-control" xid="newPassword" placeHolder="密码由8-16位字母和数字的组合"></input></div> </div>
  <div class="form-group" xid="formGroup3">
   <div class="col-sm-3" xid="col15">
    <label class="control-label" xid="controlLabel3"><![CDATA[确认新密码]]></label></div> 
   <div class="col-sm-9" xid="col16">
    <input component="$UI/system/components/justep/input/password" class="form-control" xid="confirmPasswd" placeHolder="密码由8-16位字母和数字的组合"></input></div> </div>
  <div class="form-group" xid="formGroup5">
   <div class="col-sm-2" xid="col21"></div>
   </div><div class="form-group" xid="formGroup4">
   <div class="col-sm-12" xid="col17"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="确认" xid="passwordSaveBtn" onClick="passwordSaveBtnClick">
   <i xid="i2"></i>
   <span xid="span3">确认</span></a></div>
   </div>
  </div></div></div>
  </div> 
</div>