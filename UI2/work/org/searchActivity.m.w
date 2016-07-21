<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:310px;left:55px;height:auto;" onParamsReceive="modelParamsReceive" onModelConstruct="modelModelConstruct"><div component="$UI/system/components/justep/data/data" autoLoad="false" xid="inputData" idColumn="inputID" autoNew="true"><column name="inputID" type="String" xid="xid1"></column>
  <data xid="default22">[{&quot;inputID&quot;:&quot;&quot;}]</data>
  <rule xid="rule1">
   <col name="inputID" xid="ruleCol1">
    <required xid="required1">
     <expr xid="default1">true</expr>
     <message xid="default2">必须输入邀请码</message></required> </col> </rule></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="orgData" queryAction="querySa_oporg" saveAction="saveSa_oporg" url="/work/org" tableName="sa_oporg" idColumn="sID" limit="-1"><column label="sID" name="sID" type="String" xid="default23"></column>
  <column label="sName" name="sName" type="String" xid="default24"></column>
  <column label="sCode" name="sCode" type="String" xid="default25"></column>
  <column label="sLongName" name="sLongName" type="String" xid="default26"></column>
  <column label="sFName" name="sFName" type="String" xid="default27"></column>
  <column label="sFCode" name="sFCode" type="String" xid="default28"></column>
  <column label="sFID" name="sFID" type="String" xid="default29"></column>
  <column label="sOrgKindID" name="sOrgKindID" type="String" xid="default30"></column>
  <column label="sSequence" name="sSequence" type="String" xid="default31"></column>
  <column label="sValidState" name="sValidState" type="Integer" xid="default32"></column>
  <column label="sParent" name="sParent" type="String" xid="default33"></column>
  <column label="sLevel" name="sLevel" type="Integer" xid="default34"></column>
  <column label="sPhone" name="sPhone" type="String" xid="default35"></column>
  <column label="sFax" name="sFax" type="String" xid="default36"></column>
  <column label="sAddress" name="sAddress" type="String" xid="default37"></column>
  <column label="sZip" name="sZip" type="String" xid="default38"></column>
  <column label="sDescription" name="sDescription" type="String" xid="default39"></column>
  <column label="sPersonID" name="sPersonID" type="String" xid="default40"></column>
  <column label="sNodeKind" name="sNodeKind" type="String" xid="default41"></column>
  <column label="sWxDeptID" name="sWxDeptID" type="Integer" xid="default42"></column>
  <column label="version" name="version" type="Integer" xid="default43"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="perData" queryAction="querySa_opperson" saveAction="saveSa_opperson" url="/work/org" tableName="sa_opperson" idColumn="sID" autoNew="false"><column label="sID" name="sID" type="String" xid="default132"></column>
  <column label="sName" name="sName" type="String" xid="default133"></column>
  <column label="sCode" name="sCode" type="String" xid="default134"></column>
  <column label="sIDCard" name="sIDCard" type="String" xid="default135"></column>
  <column label="sNumb" name="sNumb" type="Integer" xid="default136"></column>
  <column label="sLoginName" name="sLoginName" type="String" xid="default137"></column>
  <column label="sPassword" name="sPassword" type="String" xid="default138"></column>
  <column label="sPasswordTimeLimit" name="sPasswordTimeLimit" type="Integer" xid="default139"></column>
  <column label="sPasswordModifyTime" name="sPasswordModifyTime" type="DateTime" xid="default140"></column>
  <column label="sMainOrgID" name="sMainOrgID" type="String" xid="default141"></column>
  <column label="sSafeLevelID" name="sSafeLevelID" type="String" xid="default142"></column>
  <column label="sSequence" name="sSequence" type="Integer" xid="default143"></column>
  <column label="sValidState" name="sValidState" type="Integer" xid="default144"></column>
  <column label="sDescription" name="sDescription" type="String" xid="default145"></column>
  <column label="sSex" name="sSex" type="String" xid="default146"></column>
  <column label="sBirthday" name="sBirthday" type="DateTime" xid="default147"></column>
  <column label="sJoinDate" name="sJoinDate" type="DateTime" xid="default148"></column>
  <column label="sHomePlace" name="sHomePlace" type="String" xid="default149"></column>
  <column label="sDegree" name="sDegree" type="String" xid="default150"></column>
  <column label="sGraduateSchool" name="sGraduateSchool" type="String" xid="default151"></column>
  <column label="sSpeciality" name="sSpeciality" type="String" xid="default152"></column>
  <column label="sSchoolLength" name="sSchoolLength" type="String" xid="default153"></column>
  <column label="sTitle" name="sTitle" type="String" xid="default154"></column>
  <column label="sMarriage" name="sMarriage" type="String" xid="default155"></column>
  <column label="sCardNO" name="sCardNO" type="String" xid="default156"></column>
  <column label="sCardKind" name="sCardKind" type="String" xid="default157"></column>
  <column label="sFamilyAddress" name="sFamilyAddress" type="String" xid="default158"></column>
  <column label="sZip" name="sZip" type="String" xid="default159"></column>
  <column label="sMsn" name="sMsn" type="String" xid="default160"></column>
  <column label="sQQ" name="sQQ" type="String" xid="default161"></column>
  <column label="sMail" name="sMail" type="String" xid="default162"></column>
  <column label="sMobilePhone" name="sMobilePhone" type="String" xid="default163"></column>
  <column label="sFamilyPhone" name="sFamilyPhone" type="String" xid="default164"></column>
  <column label="sOfficePhone" name="sOfficePhone" type="String" xid="default165"></column>
  <column label="version" name="version" type="Integer" xid="default166"></column>
  <column label="sPhoto" name="sPhoto" type="String" xid="default167"></column>
  <column label="sPhotoLastModified" name="sPhotoLastModified" type="DateTime" xid="default168"></column>
  <column label="sCountry" name="sCountry" type="String" xid="default169"></column>
  <column label="sProvince" name="sProvince" type="String" xid="default170"></column>
  <column label="sCity" name="sCity" type="String" xid="default171"></column>
  <column label="SPOSITIONS" name="SPOSITIONS" type="String" xid="default172"></column>
  <column label="SSCHOOL" name="SSCHOOL" type="String" xid="default173"></column>
  <column label="SSTUDY" name="SSTUDY" type="String" xid="default174"></column>
  <column label="sEnglishName" name="sEnglishName" type="String" xid="default175"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="搜索"
        class="x-titlebar"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}"
            xid="backBtn"> 
            <i class="icon-chevron-left"/>  
            <span/> 
          </a> 
        </div>  
        <div class="x-titlebar-title">搜索</div>  
        <div class="x-titlebar-right reverse"/> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1"> 
      <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30"
        xid="labelEdit2" style="padding:0;border-bottom:1px solid #ccc;margin:5px 0;"> 
        <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input2" placeHolder="请输入邀请码" style="border:0;" bind-ref='$model.inputData.ref("inputID")'/> 
        <label xid="label2">
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            label="" xid="searchBtn" icon="icon-android-search"> 
            <i xid="i3" class="icon-android-search"/>  
            <span xid="span3"></span> 
          </a>
        </label>
      </div>  
      <div component="$UI/system/components/justep/list/list" class="x-list"
        xid="list1" data="orgData" autoLoad="true" filter=' $model.inputData.val("inputID") == $row.val("sID")'> 
        <ul class="x-list-template" xid="listTemplateUl1"> 
          <li xid="li1"> 
            <div component="$UI/system/components/bootstrap/row/row" class="row"
              xid="row4" style="width:100%;margin:0 auto;padding-left:4rem"> 
              <div class="col col-xs-1" xid="col12"> 
                <span component="$UI/system/components/justep/button/checkbox"
                  class="x-checkbox" xid="checkbox" value="1" checked="false"/> 
              </div>  
              <div class="col col-xs-1" xid="col13"> 
                <img alt="" xid="classImage"/> 
              </div>  
              <div class="col col-xs-6" xid="col14"> 
                <div component="$UI/system/components/justep/output/output"
                  class="x-output" xid="output4" bind-ref='ref("sName")'/> 
              </div>  
              <div class="col col-xs-2" xid="col15" style="padding:0;"> 
                <div component="$UI/system/components/justep/button/buttonGroup"
                  class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup6"> 
                  </div> 
              </div> 
            </div> 
          </li> 
        </ul> 
      </div> 
    </div>  
    <div class="x-panel-bottom" xid="bottom1" style="border-top:1px solid #ddd;"
      height="48"> 
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified"
        tabbed="true" xid="buttonGroup1" style="height:100%;"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
          label="加入已选中的组织" xid="joinBtn" onClick="joinBtnClick"> 
          <i xid="i3"/>  
          <span xid="span3">加入已选中的组织</span> 
        </a> 
      </div> 
    </div> 
  </div> 
</div>
