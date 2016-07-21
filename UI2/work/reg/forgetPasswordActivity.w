<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:-6px;left:20px;height:auto;" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="false" xid="forgetPasswordData" queryAction="querySa_opperson" saveAction="saveSa_opperson" url="/org/login" tableName="sa_opperson" idColumn="sID" limit="20"><column label="sID" name="sID" type="String" xid="default1"></column>
  <column label="sName" name="sName" type="String" xid="default2"></column>
  <column label="sCode" name="sCode" type="String" xid="default3"></column>
  <column label="sIDCard" name="sIDCard" type="String" xid="default4"></column>
  <column label="sNumb" name="sNumb" type="Integer" xid="default5"></column>
  <column label="sLoginName" name="sLoginName" type="String" xid="default6"></column>
  <column label="sPassword" name="sPassword" type="String" xid="default7"></column>
  <column label="sPasswordTimeLimit" name="sPasswordTimeLimit" type="Integer" xid="default8"></column>
  <column label="sPasswordModifyTime" name="sPasswordModifyTime" type="DateTime" xid="default9"></column>
  <column label="sMainOrgID" name="sMainOrgID" type="String" xid="default10"></column>
  <column label="sSafeLevelID" name="sSafeLevelID" type="String" xid="default11"></column>
  <column label="sSequence" name="sSequence" type="Integer" xid="default12"></column>
  <column label="sValidState" name="sValidState" type="Integer" xid="default13"></column>
  <column label="sDescription" name="sDescription" type="String" xid="default14"></column>
  <column label="sSex" name="sSex" type="String" xid="default15"></column>
  <column label="sBirthday" name="sBirthday" type="DateTime" xid="default16"></column>
  <column label="sJoinDate" name="sJoinDate" type="DateTime" xid="default17"></column>
  <column label="sHomePlace" name="sHomePlace" type="String" xid="default18"></column>
  <column label="sDegree" name="sDegree" type="String" xid="default19"></column>
  <column label="sGraduateSchool" name="sGraduateSchool" type="String" xid="default20"></column>
  <column label="sSpeciality" name="sSpeciality" type="String" xid="default21"></column>
  <column label="sSchoolLength" name="sSchoolLength" type="String" xid="default22"></column>
  <column label="sTitle" name="sTitle" type="String" xid="default23"></column>
  <column label="sMarriage" name="sMarriage" type="String" xid="default24"></column>
  <column label="sCardNO" name="sCardNO" type="String" xid="default25"></column>
  <column label="sCardKind" name="sCardKind" type="String" xid="default26"></column>
  <column label="sFamilyAddress" name="sFamilyAddress" type="String" xid="default27"></column>
  <column label="sZip" name="sZip" type="String" xid="default28"></column>
  <column label="sMsn" name="sMsn" type="String" xid="default29"></column>
  <column label="sQQ" name="sQQ" type="String" xid="default30"></column>
  <column label="sMail" name="sMail" type="String" xid="default31"></column>
  <column label="sMobilePhone" name="sMobilePhone" type="String" xid="default32"></column>
  <column label="sFamilyPhone" name="sFamilyPhone" type="String" xid="default33"></column>
  <column label="sOfficePhone" name="sOfficePhone" type="String" xid="default34"></column>
  <column label="version" name="version" type="Integer" xid="default35"></column>
  <column label="sPhotoLastModified" name="sPhotoLastModified" type="DateTime" xid="default37"></column>
  <column label="sCountry" name="sCountry" type="String" xid="default38"></column>
  <column label="sProvince" name="sProvince" type="String" xid="default39"></column>
  <column label="sCity" name="sCity" type="String" xid="default40"></column>
  <column label="SPOSITIONS" name="SPOSITIONS" type="String" xid="default41"></column>
  <column label="SSCHOOL" name="SSCHOOL" type="String" xid="default42"></column>
  <column label="SSTUDY" name="SSTUDY" type="String" xid="default43"></column>
  <column label="sEnglishName" name="sEnglishName" type="String" xid="default44"></column>
  <column label="1.公司领导；2.部门主管；3.普通员工" name="sFunRole" type="Integer" xid="default45"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="忘记密码"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">忘记密码</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div xid="div1" class="form-container" style="max-width:600px;padding:0 15px;margin-top:50px;margin-right:auto;margin-left:auto;"><div class="form-horizontal ng-pristine ng-valid" component="$UI/system/components/bootstrap/form/form" xid="form1">
   <div class="form-group" xid="formGroup3">
    <div class="col-sm-3" xid="col1">
     <label class="control-label" xid="controlLabel1">手机号</label></div> 
    <div class="col-sm-5" xid="col3">
     
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="padding-left:0px;">
   <div class="x-col " xid="col4" style="padding-left:0px;"><input component="$UI/system/components/justep/input/input" class="form-control" xid="phonenumber" placeHolder="请输入手机号码"></input></div>
   <div class="x-col x-col-33" xid="col12" style="text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="获取验证码" xid="sendSmsBtn" onClick="sendSmsBtnClick">
   <i xid="i2"></i>
   <span xid="span2">获取验证码</span></a></div></div></div> 
    </div> 
   <div class="form-group" xid="formGroup4">
    <div class="col-sm-3" xid="col10">
     <label class="control-label" xid="controlLabel2">短信验证码</label></div> 
    <div class="col-sm-9" xid="col11">
     <input component="$UI/system/components/justep/input/input" class="form-control" xid="verifyCode" placeHolder="请输入验证码"></input></div> </div> 
   <div class="form-group" xid="formGroup1">
    <div class="col-sm-3" xid="col5">
     <label class="control-label" xid="controlLabel3">新密码</label></div> 
    <div class="col-sm-9" xid="col6">
     <input component="$UI/system/components/justep/input/password" class="form-control" xid="newPassword" placeHolder="请输入密码（8-16位字母和数字的组合）"></input></div> </div> 
   <div class="form-group" xid="formGroup2">
    <div class="col-sm-3" xid="col7">
     <label class="control-label" xid="controlLabel4">确认密码</label></div> 
    <div class="col-sm-9" xid="col8">
     <input component="$UI/system/components/justep/input/password" class="form-control" xid="confirmPassword" placeHolder="请确认密码（8-16位字母和数字的组合）"></input></div> </div> 
   <div class="form-group" xid="formGroup5">
    
  <a component="$UI/system/components/justep/button/button" class="btn btn-default center-block" label="确定" xid="okBtn" style="margin:5px 15px 5px 15px;" onClick="okBtnClick">
   <i xid="i1"></i>
   <span xid="span1">确定</span></a></div> 
  </div></div></div>
  </div> 
</div>