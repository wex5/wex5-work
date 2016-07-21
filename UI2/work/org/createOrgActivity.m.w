<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:203px;left:137px;"> 
    <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="createOrgData" queryAction="querySa_oporg" saveAction="saveSa_oporg" url="/work/org" idColumn="sID" isTree="true" limit="20" directDelete="true" confirmDelete="false" confirmRefresh="false" orderBy="sOrgKindID:asc" tableName="sa_oporg"><treeOption xid="default43" parentRelation="sParent" delayLoad="true"></treeOption>
  <column label="sID" name="sID" type="String" xid="default86"></column>
  <column label="sName" name="sName" type="String" xid="default87"></column>
  <column label="sCode" name="sCode" type="String" xid="default88"></column>
  <column label="sLongName" name="sLongName" type="String" xid="default89"></column>
  <column label="sFName" name="sFName" type="String" xid="default90"></column>
  <column label="sFCode" name="sFCode" type="String" xid="default91"></column>
  <column label="sFID" name="sFID" type="String" xid="default92"></column>
  <column label="sOrgKindID" name="sOrgKindID" type="String" xid="default93"></column>
  <column label="sSequence" name="sSequence" type="String" xid="default94"></column>
  <column label="sValidState" name="sValidState" type="Integer" xid="default95"></column>
  <column label="sParent" name="sParent" type="String" xid="default96"></column>  
  <column label="sLevel" name="sLevel" type="Integer" xid="default97"></column>
  <column label="sPhone" name="sPhone" type="String" xid="default98"></column>
  <column label="sFax" name="sFax" type="String" xid="default99"></column>
  <column label="sAddress" name="sAddress" type="String" xid="default100"></column>
  <column label="sZip" name="sZip" type="String" xid="default101"></column>
  <column label="sDescription" name="sDescription" type="String" xid="default102"></column>
  <column label="sPersonID" name="sPersonID" type="String" xid="default103"></column>
  <column label="sNodeKind" name="sNodeKind" type="String" xid="default104"></column>
  <column label="sWxDeptID" name="sWxDeptID" type="Integer" xid="default105"></column>
  <column label="version" name="version" type="Integer" xid="default106"></column>
  <master xid="default108"></master></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="personData" queryAction="querySa_opperson" saveAction="saveSa_opperson" url="/work/org" tableName="sa_opperson" idColumn="sID" autoNew="false" limit="-1"><column label="sID" name="sID" type="String" xid="default198"></column>
  <column label="sName" name="sName" type="String" xid="default199"></column>
  <column label="sCode" name="sCode" type="String" xid="default200"></column>
  <column label="sIDCard" name="sIDCard" type="String" xid="default201"></column>
  <column label="sNumb" name="sNumb" type="Integer" xid="default202"></column>
  <column label="sLoginName" name="sLoginName" type="String" xid="default203"></column>
  <column label="sPassword" name="sPassword" type="String" xid="default204"></column>
  <column label="sPasswordTimeLimit" name="sPasswordTimeLimit" type="Integer" xid="default205"></column>
  <column label="sPasswordModifyTime" name="sPasswordModifyTime" type="DateTime" xid="default206"></column>
  <column label="sMainOrgID" name="sMainOrgID" type="String" xid="default207"></column>
  <column label="sSafeLevelID" name="sSafeLevelID" type="String" xid="default208"></column>
  <column label="sSequence" name="sSequence" type="Integer" xid="default209"></column>
  <column label="sValidState" name="sValidState" type="Integer" xid="default210"></column>
  <column label="sDescription" name="sDescription" type="String" xid="default211"></column>
  <column label="sSex" name="sSex" type="String" xid="default212"></column>
  <column label="sBirthday" name="sBirthday" type="DateTime" xid="default213"></column>
  <column label="sJoinDate" name="sJoinDate" type="DateTime" xid="default214"></column>
  <column label="sHomePlace" name="sHomePlace" type="String" xid="default215"></column>
  <column label="sDegree" name="sDegree" type="String" xid="default216"></column>
  <column label="sGraduateSchool" name="sGraduateSchool" type="String" xid="default217"></column>
  <column label="sSpeciality" name="sSpeciality" type="String" xid="default218"></column>
  <column label="sSchoolLength" name="sSchoolLength" type="String" xid="default219"></column>
  <column label="sTitle" name="sTitle" type="String" xid="default220"></column>
  <column label="sMarriage" name="sMarriage" type="String" xid="default221"></column>
  <column label="sCardNO" name="sCardNO" type="String" xid="default222"></column>
  <column label="sCardKind" name="sCardKind" type="String" xid="default223"></column>
  <column label="sFamilyAddress" name="sFamilyAddress" type="String" xid="default224"></column>
  <column label="sZip" name="sZip" type="String" xid="default225"></column>
  <column label="sMsn" name="sMsn" type="String" xid="default226"></column>
  <column label="sQQ" name="sQQ" type="String" xid="default227"></column>
  <column label="sMail" name="sMail" type="String" xid="default228"></column>
  <column label="sMobilePhone" name="sMobilePhone" type="String" xid="default229"></column>
  <column label="sFamilyPhone" name="sFamilyPhone" type="String" xid="default230"></column>
  <column label="sOfficePhone" name="sOfficePhone" type="String" xid="default231"></column>
  <column label="version" name="version" type="Integer" xid="default232"></column>
  <column label="sPhotoLastModified" name="sPhotoLastModified" type="DateTime" xid="default234"></column>
  <column label="sCountry" name="sCountry" type="String" xid="default235"></column>
  <column label="sProvince" name="sProvince" type="String" xid="default236"></column>
  <column label="sCity" name="sCity" type="String" xid="default237"></column>
  <column label="SPOSITIONS" name="SPOSITIONS" type="String" xid="default238"></column>
  <column label="SSCHOOL" name="SSCHOOL" type="String" xid="default239"></column>
  <column label="SSTUDY" name="SSTUDY" type="String" xid="default240"></column>
  <column label="sEnglishName" name="sEnglishName" type="String" xid="default241"></column>
  <column label="1.公司领导；2.部门主管；3.普通员工" name="sFunRole" type="Integer" xid="default242"></column>
  <master xid="default107"></master></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="false" xid="filterData" queryAction="querySa_opperson" saveAction="saveSa_opperson" url="/work/org" tableName="sa_opperson" idColumn="sID"><column label="sID" name="sID" type="String" xid="default47"></column>
  <column label="sName" name="sName" type="String" xid="default48"></column>
  <column label="sCode" name="sCode" type="String" xid="default49"></column>
  <column label="sIDCard" name="sIDCard" type="String" xid="default50"></column>
  <column label="sNumb" name="sNumb" type="Integer" xid="default51"></column>
  <column label="sLoginName" name="sLoginName" type="String" xid="default52"></column>
  <column label="sPassword" name="sPassword" type="String" xid="default53"></column>
  <column label="sPasswordTimeLimit" name="sPasswordTimeLimit" type="Integer" xid="default54"></column>
  <column label="sPasswordModifyTime" name="sPasswordModifyTime" type="DateTime" xid="default55"></column>
  <column label="sMainOrgID" name="sMainOrgID" type="String" xid="default56"></column>
  <column label="sSafeLevelID" name="sSafeLevelID" type="String" xid="default57"></column>
  <column label="sSequence" name="sSequence" type="Integer" xid="default58"></column>
  <column label="sValidState" name="sValidState" type="Integer" xid="default59"></column>
  <column label="sDescription" name="sDescription" type="String" xid="default60"></column>
  <column label="sSex" name="sSex" type="String" xid="default61"></column>
  <column label="sBirthday" name="sBirthday" type="DateTime" xid="default62"></column>
  <column label="sJoinDate" name="sJoinDate" type="DateTime" xid="default63"></column>
  <column label="sHomePlace" name="sHomePlace" type="String" xid="default64"></column>
  <column label="sDegree" name="sDegree" type="String" xid="default109"></column>
  <column label="sGraduateSchool" name="sGraduateSchool" type="String" xid="default110"></column>
  <column label="sSpeciality" name="sSpeciality" type="String" xid="default111"></column>
  <column label="sSchoolLength" name="sSchoolLength" type="String" xid="default112"></column>
  <column label="sTitle" name="sTitle" type="String" xid="default113"></column>
  <column label="sMarriage" name="sMarriage" type="String" xid="default114"></column>
  <column label="sCardNO" name="sCardNO" type="String" xid="default115"></column>
  <column label="sCardKind" name="sCardKind" type="String" xid="default116"></column>
  <column label="sFamilyAddress" name="sFamilyAddress" type="String" xid="default117"></column>
  <column label="sZip" name="sZip" type="String" xid="default118"></column>
  <column label="sMsn" name="sMsn" type="String" xid="default119"></column>
  <column label="sQQ" name="sQQ" type="String" xid="default120"></column>
  <column label="sMail" name="sMail" type="String" xid="default121"></column>
  <column label="sMobilePhone" name="sMobilePhone" type="String" xid="default122"></column>
  <column label="sFamilyPhone" name="sFamilyPhone" type="String" xid="default123"></column>
  <column label="sOfficePhone" name="sOfficePhone" type="String" xid="default124"></column>
  <column label="version" name="version" type="Integer" xid="default125"></column>
  <column label="sPhotoLastModified" name="sPhotoLastModified" type="DateTime" xid="default127"></column>
  <column label="sCountry" name="sCountry" type="String" xid="default128"></column>
  <column label="sProvince" name="sProvince" type="String" xid="default129"></column>
  <column label="sCity" name="sCity" type="String" xid="default130"></column>
  <column label="SPOSITIONS" name="SPOSITIONS" type="String" xid="default131"></column>
  <column label="SSCHOOL" name="SSCHOOL" type="String" xid="default132"></column>
  <column label="SSTUDY" name="SSTUDY" type="String" xid="default133"></column>
  <column label="sEnglishName" name="sEnglishName" type="String" xid="default134"></column>
  <column label="1.公司领导；2.部门主管；3.普通员工" name="sFunRole" type="Integer" xid="default135"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="编辑组织"
        class="x-titlebar"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}"
            xid="backBtn"> 
            <i class="icon-chevron-left"/>  
            <span/> 
          </a> 
        </div>  
        <div class="x-titlebar-title">编辑组织</div>  
        <div class="x-titlebar-right reverse"></div> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1">
      <div component="$UI/system/components/justep/tree/tree" class="x-tree x-inner-scroll" xid="tree2" rootLabel="组织机构" data="createOrgData" labelColumn="sName" autoLoad="true" onAfterRender="tree2AfterRender" disablePullToRefresh="false" onBeforeLoadChildren="tree2BeforeLoadChildren">
   <div class="x-tree-head" xid="headDiv" style="border:1px solid #ddd;">
    <ul component="$UI/system/components/bootstrap/breadcrumb/breadcrumb" class="breadcrumb"></ul></div> 
   <div class="x-tree-content" xid="div10">
    <div component="$UI/system/components/justep/scrollView/scrollView" supportPullDown="true" supportPullUp="true" hScroll="false" vScroll="true" hScrollbar="false" vScrollbar="true" bounce="true" class="x-scroll" xid="scrollView3">
     <div class="x-content-center x-pull-down container" xid="div11">
      <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i7"></i>
      <span class="x-pull-down-label" xid="span9">下拉刷新...</span></div> 
     <ul class="x-tree-template x-scroll-content" xid="treeTemplateUl3">
      <li xid="li4" style="border-bottom:1px dotted #ddd;line-height:inherit;">
       
  <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row4" style="margin:0 auto;padding:0;padding:10px 0;">
   <div class="col col-xs-1" xid="col12" style="padding:0;padding-left:5px;">
    <span component="$UI/system/components/justep/button/radio" class="x-radio" xid="checkbox" style="padding:0;margin:0;" name="orgCheck" bind-click="checkboxClick"></span></div> 
   <div class="col col-xs-1" xid="col6" bind-visible=" val(&quot;sOrgKindID&quot;) =='psm'" style="padding:0;padding-left:5px;">
    <div xid="photoDiv" class="photoDiv">
     <span xid="span8" bind-text='val("sName").slice(-2)'></span></div> </div> 
   <div class="col col-xs-7" xid="col14" style="padding:0;padding-left:10px;">
    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row2" style="width:100%;margin:0 auto;">
   <div class="col col-xs-12" xid="col3" style="padding:0;"><div component="$UI/system/components/justep/output/output" class="x-output pull-left" xid="nameOut" bind-ref='ref("sName")' style="padding:0;padding-left:20px;width:45%;"></div>
  <div component="$UI/system/components/justep/output/output" class="x-output pull-right" xid="output1" bind-ref='ref("sPhone")' style="padding:0;width:55%;color:#C0C0C0;"></div></div>
   <div class="col col-xs-12" xid="col4" bind-visible=" val(&quot;sOrgKindID&quot;) =='psm'"><span xid="isLaderSpan" bind-text="(function(){
	var r = $model.comp(&quot;personData&quot;).getValueByID(&quot;sFunRole&quot;,val(&quot;sPersonID&quot;));
	r = (r==1&amp;&amp;'管理员'||&quot;&quot;);
	return  r;
}())" style="color:red;padding:0;padding-left:5px;"></span></div>
   </div></div> 
   <div class="col col-xs-2 col-xs-offset-1" xid="col15" style="padding:0;">
    <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup6" style="padding:0;">
      
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon x-tree-link" label="button" xid="nextBtn" icon="icon-chevron-right" style="color:#808080;background-color:transparent;padding:0;" bind-visible=" val(&quot;sOrgKindID&quot;) !='psm'" onClick="nextBtnClick">
      <i xid="i13" class="icon-chevron-right"></i>
      <span xid="span18"></span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="moreBtn" icon="icon-android-more" style="color:#808080;padding:0;" onClick="moreBtnClick" bind-visible=" val(&quot;sOrgKindID&quot;) == 'psm'">
   <i xid="i3" class="icon-android-more"></i>
   <span xid="span2"></span></a> 
      
  </div> </div> </div>
  </li> </ul> 
     <div class="x-content-center x-pull-up" xid="div12">
      <span class="x-pull-up-label" xid="span10">加载更多...</span></div> </div> </div> </div></div> 
  <div class="x-panel-bottom" xid="bottom2" height="48">
   <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup1" style="border-top:1px solid #ddd;height:100%;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="createBtn" onClick="createBtnClick" label="创建组织">
     <i xid="i4"></i>
     <span xid="span5">创建组织</span></a> 
    <a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="editBtn" label="编辑组织" onClick='editBtnClick'>
     <i xid="i5"></i>
     <span xid="delSpan" id="delSpan">编辑组织</span></a> 
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="删除组织" xid="delBtn" onClick="delBtnClick">
   <i xid="i1"></i>
   <span xid="span1">删除组织</span></a></div> </div></div> 
<div component="$UI/system/components/bootstrap/dialog/dialog" class="modal fade" xid="createDialog" onShow="createDialogShow" onHide="createDialogHide">
   <div xid="div13" style="margin:0 0.7rem;position:absolute;bottom:40px;">
    <div xid="div14" class="modal-content">
     <div class="modal-header" xid="div15">
      <button type="button" class="close" data-dismiss="modal" xid="button4">
       <span class="sr-only" xid="span12">Close</span></button> 
      <h4 class="modal-title" xid="h41"><![CDATA[您可以选择以下操作:]]></h4></div> 
     <div class="modal-body" xid="div16" style="padding:0;"><ul xid="ul1"><li style="padding:5px;border-bottom:1px dotted #ddd;" xid="agencyLi"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup2"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" label="新建机构" xid="agencyBtn" onClick="agencyBtnClick">
   <img src="$UI/work/org/orgKind/ogn.gif"/>
   <span xid="span14">新建机构</span></a></div></li><li style="padding:5px;border-bottom:1px dotted #ddd;" xid="sectorLi"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup3">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" label="新建部门" xid="sectorBtn" onClick="sectorBtnClick">
    <img src="$UI/work/org/orgKind/dpt.gif"/>
    <span xid="span15">新建部门</span></a> </div></li><li style="padding:5px;" xid="personLi"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup5">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" label="分配人员" xid="personBtn" onClick="personBtnClick">
    <img src="$UI/work/org/orgKind/psm.gif"/>
    <span xid="span17">分配人员</span></a> </div></li></ul>
  </div>
     </div> </div> </div>
  <div component="$UI/system/components/bootstrap/dialog/dialog" class="modal fade" xid="editDialog">
   <div class="modal-dialog" xid="div9" style="position:absolute;bottom:40px;">
    <div class="modal-content" xid="div17">
     <div class="modal-header" xid="div18">
      
      <h4 class="modal-title" xid="h44"><![CDATA[修改当前组织相关数据：]]></h4></div> 
     <div class="modal-body" xid="div19"><div component="$UI/system/components/bootstrap/row/row" class="row" xid="row1">
   <div class="col col-xs-12" xid="col1"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label40" xid="labelEdit1">
   <label class="x-label" xid="label1"><![CDATA[原组织机构名:]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="nameOutput" bind-ref='$model.createOrgData.ref("sName")'></div></div></div>
   <div class="col col-xs-12" xid="col2"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label40" xid="labelEdit2">
   <label class="x-label" xid="label2"><![CDATA[新组织机构名:]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="nameInput"></input></div></div>
   </div></div>
     <div class="modal-footer" xid="div20">
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup12"><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="保存修改" xid="saveChangeBtn" onClick="saveChangeBtnClick">
   <i xid="i2"></i>
   <span xid="span20">保存修改</span></a></div></div> </div> </div> </div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newPersonDialog" src="$UI/work/org/assignPersonActivity.m.w" forceRefreshOnOpen="true"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newSectorDialog" src="$UI/work/org/newSectorActivity.m.w" forceRefreshOnOpen="true" onReceive="newSectorDialogReceive"></span>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="confirmDialog" message="是否将人员移动到该分组？" type="YesNo"></span>
  <resource xid="resource2"><require xid="require1" url="css!$UI/work/common/css/pub"></require></resource>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="moveDialog" src="$UI/work/common/process/orgDptDialog/index.w" forceRefreshOnOpen="true" onReceive="moveDialogReceive"></span>
  <div component="$UI/system/components/bootstrap/dialog/dialog" class="modal fade" xid="operation" onShow="operationShow">
   <div class="modal-dialog" xid="div1" style="position:absolute;bottom:40%;left:10px;right:10px;">
    <div class="modal-content" xid="div2">
     <div class="modal-header" xid="div3">
      <button type="button" class="close" data-dismiss="modal" xid="button2">
       <span aria-hidden="true" xid="span3">×</span>
       <span class="sr-only" xid="span4">Close</span></button> 
      <h4 class="modal-title" xid="h42" bind-text='"选择操作"'><![CDATA[选择操作]]></h4></div> 
     <div class="modal-body" xid="div4" style="text-align:center;"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group" tabbed="false" xid="buttonGroup4"><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="移动" xid="moveBtn" onClick="moveBtnClick">
   <i xid="i6"></i>
   <span xid="span6">移动</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="删除" xid="delPerBtn" onClick="delPerBtnClick">
   <i xid="i8"></i>
   <span xid="span7">删除</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="分配" xid="distBtn" onClick="distBtnClick">
   <i xid="i9"></i>
   <span xid="span11">分配</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default" xid="setBtn" onClick="setBtnClick">
   <i xid="i10"></i>
   <span xid="span13"></span></a></div></div>
     </div> </div> </div>
  </div>
