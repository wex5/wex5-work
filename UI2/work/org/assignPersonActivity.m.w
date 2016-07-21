<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:409px;left:79px;" onModelConstruct="modelModelConstruct" onActive="modelActive"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="NoDeptPersonData" queryAction="querySa_opperson" saveAction="saveSa_opperson" url="/work/org" tableName="sa_opperson" idColumn="sID" limit="-1" directDelete="false" confirmDelete="false"><column label="sID" name="sID" type="String" xid="default43"></column>
  <column label="sName" name="sName" type="String" xid="default44"></column>
  <column label="sCode" name="sCode" type="String" xid="default45"></column>
  <column label="sIDCard" name="sIDCard" type="String" xid="default46"></column>
  <column label="sNumb" name="sNumb" type="Integer" xid="default47"></column>
  <column label="sLoginName" name="sLoginName" type="String" xid="default48"></column>
  <column label="sPassword" name="sPassword" type="String" xid="default49"></column>
  <column label="sPasswordTimeLimit" name="sPasswordTimeLimit" type="Integer" xid="default50"></column>
  <column label="sPasswordModifyTime" name="sPasswordModifyTime" type="DateTime" xid="default51"></column>
  <column label="sMainOrgID" name="sMainOrgID" type="String" xid="default52"></column>
  <column label="sSafeLevelID" name="sSafeLevelID" type="String" xid="default53"></column>
  <column label="sSequence" name="sSequence" type="Integer" xid="default54"></column>
  <column label="sValidState" name="sValidState" type="Integer" xid="default55"></column>
  <column label="sDescription" name="sDescription" type="String" xid="default56"></column>
  <column label="sSex" name="sSex" type="String" xid="default57"></column>
  <column label="sBirthday" name="sBirthday" type="DateTime" xid="default58"></column>
  <column label="sJoinDate" name="sJoinDate" type="DateTime" xid="default59"></column>
  <column label="sHomePlace" name="sHomePlace" type="String" xid="default60"></column>
  <column label="sDegree" name="sDegree" type="String" xid="default61"></column>
  <column label="sGraduateSchool" name="sGraduateSchool" type="String" xid="default62"></column>
  <column label="sSpeciality" name="sSpeciality" type="String" xid="default63"></column>
  <column label="sSchoolLength" name="sSchoolLength" type="String" xid="default64"></column>
  <column label="sTitle" name="sTitle" type="String" xid="default65"></column>
  <column label="sMarriage" name="sMarriage" type="String" xid="default66"></column>
  <column label="sCardNO" name="sCardNO" type="String" xid="default67"></column>
  <column label="sCardKind" name="sCardKind" type="String" xid="default68"></column>
  <column label="sFamilyAddress" name="sFamilyAddress" type="String" xid="default69"></column>
  <column label="sZip" name="sZip" type="String" xid="default70"></column>
  <column label="sMsn" name="sMsn" type="String" xid="default71"></column>
  <column label="sQQ" name="sQQ" type="String" xid="default72"></column>
  <column label="sMail" name="sMail" type="String" xid="default73"></column>
  <column label="sMobilePhone" name="sMobilePhone" type="String" xid="default74"></column>
  <column label="sFamilyPhone" name="sFamilyPhone" type="String" xid="default75"></column>
  <column label="sOfficePhone" name="sOfficePhone" type="String" xid="default76"></column>
  <column label="version" name="version" type="Integer" xid="default77"></column>
  <column label="sPhoto" name="sPhoto" type="String" xid="default78"></column>
  <column label="sPhotoLastModified" name="sPhotoLastModified" type="DateTime" xid="default79"></column>
  <column label="sCountry" name="sCountry" type="String" xid="default80"></column>
  <column label="sProvince" name="sProvince" type="String" xid="default81"></column>
  <column label="sCity" name="sCity" type="String" xid="default82"></column>
  <column label="SPOSITIONS" name="SPOSITIONS" type="String" xid="default83"></column>
  <column label="SSCHOOL" name="SSCHOOL" type="String" xid="default84"></column>
  <column label="SSTUDY" name="SSTUDY" type="String" xid="default85"></column>
  <column label="sEnglishName" name="sEnglishName" type="String" xid="default86"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="false" xid="addOrgData" queryAction="querySa_oporg" saveAction="saveSa_oporg" url="/work/org" tableName="sa_oporg" idColumn="sID" limit="20"><column label="sID" name="sID" type="String" xid="default87"></column>
  <column label="sName" name="sName" type="String" xid="default88"></column>
  <column label="sCode" name="sCode" type="String" xid="default89"></column>
  <column label="sLongName" name="sLongName" type="String" xid="default90"></column>
  <column label="sFName" name="sFName" type="String" xid="default91"></column>
  <column label="sFCode" name="sFCode" type="String" xid="default92"></column>
  <column label="sFID" name="sFID" type="String" xid="default93"></column>
  <column label="sOrgKindID" name="sOrgKindID" type="String" xid="default94"></column>
  <column label="sSequence" name="sSequence" type="String" xid="default95"></column>
  <column label="sValidState" name="sValidState" type="Integer" xid="default96"></column>
  <column label="sParent" name="sParent" type="String" xid="default97"></column>
  <column label="sLevel" name="sLevel" type="Integer" xid="default98"></column>
  <column label="sPhone" name="sPhone" type="String" xid="default99"></column>
  <column label="sFax" name="sFax" type="String" xid="default100"></column>
  <column label="sAddress" name="sAddress" type="String" xid="default101"></column>
  <column label="sZip" name="sZip" type="String" xid="default102"></column>
  <column label="sDescription" name="sDescription" type="String" xid="default103"></column>
  <column label="sPersonID" name="sPersonID" type="String" xid="default104"></column>
  <column label="sNodeKind" name="sNodeKind" type="String" xid="default105"></column>
  <column label="sWxDeptID" name="sWxDeptID" type="Integer" xid="default106"></column>
  <column label="version" name="version" type="Integer" xid="default107"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="分配人员"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">分配人员</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="newPersonRow" bind-click="newPersonRowClick" style="border-bottom:1px solid #ddd;">
   <div class="x-col x-col-center" xid="col1"><span xid="span2" style="font-size:1.2em;"><![CDATA[新增人员]]></span></div>
   <div class="x-col x-col-fixed x-col-center" xid="col2" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-link btn-only-icon" label="button" xid="button1" icon="icon-chevron-right">
   <i xid="i1" class="icon-chevron-right"></i>
   <span xid="span1"></span></a></div>
   </div>
  <h4 xid="h41" style="padding:15px 0px;background:#ccc;margin:0;color:#000;"><![CDATA[未激活人员]]></h4>
  <div component="$UI/system/components/justep/contents/contents" class="x-contents" active="0" xid="contents1" style="height:75%;">
   <div class="x-contents-content  x-scroll-view" xid="content2"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i4"></i>
    <span class="x-pull-down-label" xid="span7">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="NoDeptPersonData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" style="border-bottom:1px solid #ddd;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <!-- <div class="x-col x-col-fixed x-col-center" xid="col7" style="width:auto;"><span component="$UI/system/components/justep/button/checkbox" class="x-checkbox" xid="checkbox1"></span></div> -->
   <div class="x-col x-col-center" xid="col8"><span xid="span3" bind-text='"用户名："+val("sName")' style="display:block;"></span>
  <span xid="span4" bind-text='"手机号："+val("sCode")' style="display:block;"></span></div>
   <div class="x-col x-col-fixed  x-col-center" xid="col9" style="width:auto;"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-sm" tabbed="false" xid="buttonGroup1" style="border:1px solid #ddd;"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-link" label="分配" xid="assignBtn" onClick="assignBtnClick">
   <i xid="i2"></i>
   <span xid="span5">分配</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-link" label="删除" xid="delBtn" onClick="delBtnClick">
   <i xid="i3"></i>
   <span xid="span6">删除</span></a></div></div></div></li></ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span8">加载更多...</span></div> </div></div></div></div>
  </div> 
<span component="$UI/system/components/justep/messageDialog/messageDialog" xid="warningDialog" message="您确定删除吗？" type="YesNo" onYes="warningDialogYes"></span>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="confirmAssignDialog" message="确定分配到当前组织下？" type="YesNo" onYes="confirmAssignDialogYes"></span></div>