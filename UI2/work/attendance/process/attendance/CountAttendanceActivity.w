<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:54px;left:17px;"
    onParamsReceive="modelParamsReceive" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="attenStatusData" idColumn="fID" limit="-1" onCustomRefresh="attenStatusDataCustomRefresh"><column label="ID" name="fID" type="String" xid="xid2"></column>
  <column label="组织ID" name="fOrgID" type="String" xid="xid26"></column>
  <column label="组织名称" name="fOrgName" type="String" xid="xid27"></column>
  <column label="部门ID" name="fDeptID" type="String" xid="xid28"></column>
  <column label="部门名称" name="fDeptName" type="String" xid="xid29"></column>
  <column label="人员ID" name="fPersonID" type="String" xid="xid30"></column>
  <column label="人员名称" name="fPersonName" type="String" xid="xid31"></column>
  <column label="状态名" name="fStatus" type="String" xid="xid32"></column>
  <data xid="default3">[{&quot;fID&quot;:&quot;&quot;,&quot;fOrgName&quot;:&quot;&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="deptStatusData" idColumn="fID" limit="1" onCustomRefresh="deptStatusDataCustomRefresh"><column name="fID" type="String" xid="xid17"></column>
  <column label="组织ID" name="fOrgID" type="String" xid="xid18"></column>
  <column label="组织名称" name="fOrgName" type="String" xid="xid19"></column>
  <column label="部门ID" name="fDeptID" type="String" xid="xid20"></column>
  <column label="部门名称" name="fDeptName" type="String" xid="xid21"></column>
  <column label="应到" name="fOrgPersonCount" type="String" xid="xid22"></column>
  <column label="实到" name="fActualPersonCount" type="String" xid="xid23"></column>
  <data xid="default1">[{&quot;fID&quot;:&quot;1212&quot;,&quot;fOrgID&quot;:&quot;1&quot;,&quot;fOrgName&quot;:&quot;阳光科技&quot;,&quot;fDeptID&quot;:&quot;/F92C257AEA094865A96.ogn&quot;,&quot;fDeptName&quot;:&quot;/阳光集团（演示数据）/综合办公室&quot;,&quot;fOrgPersonCount&quot;:&quot;104&quot;,&quot;fActualPersonCount&quot;:&quot;104&quot;}]</data>
  <column name="fStatus" type="String" xid="xid1"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="AllStatusData" idColumn="ID"><column label="ID" name="ID" type="String" xid="xid24"></column>
  <column label="状态" name="fStatus" type="String" xid="xid25"></column>
  <data xid="default4">[{&quot;ID&quot;:&quot;01&quot;,&quot;fStatus&quot;:&quot;正常&quot;},{&quot;ID&quot;:&quot;02&quot;,&quot;fStatus&quot;:&quot;迟到&quot;},{&quot;ID&quot;:&quot;03&quot;,&quot;fStatus&quot;:&quot;早退&quot;},{&quot;ID&quot;:&quot;04&quot;,&quot;fStatus&quot;:&quot;未打卡&quot;},{&quot;ID&quot;:&quot;05&quot;,&quot;fStatus&quot;:&quot;出差&quot;},{&quot;ID&quot;:&quot;06&quot;,&quot;fStatus&quot;:&quot;外出&quot;},{&quot;ID&quot;:&quot;07&quot;,&quot;fStatus&quot;:&quot;请假&quot;},{&quot;ID&quot;:&quot;08&quot;,&quot;fStatus&quot;:&quot;旷工&quot;}]</data></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel3">
   <div class="x-panel-top" xid="top3" style="padding-top:5px;padding-right:15px;padding-left:15px;background-color:white;"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="false" xid="buttonGroup2" style="border-radius:15px;border-style:solid solid solid solid;border-width:1px 1px 1px 1px;border-color:#0E80E5 #0E80E5 #0E80E5 #0E80E5;height:30px;"><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="团队考勤" xid="teamRecordBtn" style="font-size:medium;font-weight:bold;border-bottom-left-radius:15px;border-top-left-radius:15px;height:30px;padding-bottom:5px;" target="teamRecord"> 
          <i xid="i1" />  
          <span xid="span2">团队考勤</span>
        </a><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="我的考勤" xid="personRecordBtn" style="font-size:medium;font-weight:bold;border-top-right-radius:15px;border-bottom-right-radius:15px;height:30px;" target="personRecord"> 
          <i xid="i2" />  
          <span xid="span4">我的考勤</span>
        </a></div></div>
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contentsGP" onActiveChange="contentsGPActiveChange" slidable="false" swipe="false" wrap="false">
   <div class="x-contents-content" xid="teamRecord" style="height:100%;padding:5px 5px 5px 5px;" >
  <div xid="waitDiv" style="position:relative;height:200px;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button2" style="position:absolute;font-size:30px;top:42%;left:42%;" icon="icon-loading-a">
    <i xid="i6" class="icon-loading-a"></i>
    <span xid="span3"></span></a> </div><div class="panel panel-default x-cards" component="$UI/system/components/bootstrap/panel/panel" xid="panel1" style="padding:5px 5px 5px 5px;margin-top:5px;display:none;">
   <div xid="heading1" style="padding:0;background-color:white;border-radius:10px;height:38px;">
   <div xid="div6" align="center" style="padding:0px 0px 0px 0px;margin:0px 0px 0px 0px;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" bind-click="selDeptBtnClick" style="padding:0px 0px 0px 0px;margin:0px 0px 0px 0px;">
   <div class="x-col x-col-center x-col-fixed" xid="col4" bind-text=' $model.deptStatusData.val("fDeptName")' style="width:auto;font-weight:bold;font-size:1.1em;"></div>
   <div class="x-col x-col-center" xid="col6" bind-text='"应到："+ $model.deptStatusData.val("fOrgPersonCount")' style="text-align:right;"></div>
   <div class="x-col x-col-center" xid="col7" bind-text='"实到：" +  $model.deptStatusData.val("fActualPersonCount")'></div>
  <div class="x-col x-col-fixed" xid="col11" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon" label="button" xid="selDeptBtn" icon="glyphicon glyphicon-menu-down" onClick="selDeptBtnClick">
   <i xid="i5" class="glyphicon glyphicon-menu-down"></i>
   <span xid="span11"></span></a></div></div>
  </div></div>
  <div class="panel-body" xid="body1" style="margin-top:10px;background-color:white;border-radius:10px;border-style:solid solid solid solid;border-width:1px 1px 1px 1px;border-color:#FFFFFF #FFFFFF #FFFFFF #FFFFFF;">
  <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="scheTitleBar" style="height:40px;background-color:white;border-radius:10px;">
   <div class="x-titlebar-left " xid="left1" style="text-align:right;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" icon="icon-chevron-left" xid="prevBtn" onClick="prevBtnClick" style="color:#0E80E5;">
   <i xid="i3" class="icon-chevron-left"></i>
   <span xid="span7"></span></a></div>
   <div class="x-titlebar-title" xid="title1" style="padding:0;line-height:40px;font-size:medium;"></div>
   <div class="x-titlebar-right reverse" xid="right1" style="text-align:left;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="nextBtn" icon="icon-chevron-right" onClick="nextBtnClick" style="color:#0E80E5;">
   <i xid="i4" class="icon-chevron-right"></i>
   <span xid="span9"></span></a></div></div><div xid="div5" style="border-style:solid solid solid solid;border-width:1px 0px 0px 0px;border-color:#D0D0D0 #D0D0D0 #D0D0D0 #D0D0D0;">
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="showCountList" data="AllStatusData" style="text-align:center;" bind-click="showCountListClick">
   <ul class="x-list-template" xid="listTemplateUl4">
    <li xid="li4" class="col-xs-6" style="padding:0;"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
   <label class="x-label" xid="label1" bind-text='ref("fStatus")' style="font-size:small;"></label>
   <div class="x-edit" xid="div2">
  
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col x-col-center" xid="col1">
  <div xid="div9" class="progress">
   <div xid="progressBar1" class="progress-bar" role="progressbar"  bind-style='{"width":($model.comp("attenStatusData").count(function(e){var v = e.source.getValue("fStatus",e.row);
        return v.indexOf(val("fStatus"))==0;}))/$model.deptStatusData.val("fOrgPersonCount")*100+"%"}'></div></div></div>
   <div class="x-col x-col-10 x-col-center" xid="col3" style="padding:0;"><span xid="personCount" bind-text='$model.comp("attenStatusData").count(function(e){var v = e.source.getValue("fStatus",e.row);
 return v.indexOf(val("fStatus"))==0;})'></span></div></div></div></div></li></ul> </div></div>
  </div>
   <div xid="rankDiv" style="padding:0;background-color:white;border-radius:10px;margin-top:10px;display:none"><div component="$UI/system/components/justep/row/row" class="x-row" xid="rankRow" style="padding:0px 0px 0px 0px;margin:0px 0px 0px 0px;" bind-click="rankRowClick">
   <div class="x-col x-col-center" xid="col12"><span xid="span12"><![CDATA[排行榜]]></span></div>
   <div class="x-col x-col-fixed" xid="col9" style="width:auto;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon" label="button" xid="button5" icon="icon-chevron-right" onClick="selDeptBtnClick">
     <i xid="i10" class="icon-chevron-right"></i>
     <span xid="span10"></span></a> </div> </div></div></div>
  </div><div xid="personRecord" class="x-contents-content">
        <div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="personWindow" src="./personRecord.m.w" autoLoad="false"></div></div></div></div>
   </div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="selDeptDialog" src="./selDeptDialog.m.w" status="normal" showTitle="true" title="请选择部门" forceRefreshOnOpen="true" onReceive="selDeptDialogReceive"></span><span component="$UI/system/components/justep/windowDialog/windowDialog" xid="detailStatusDialog" src="./detailStatusDlg.m.w" showTitle="false" forceRefreshOnOpen="true" style="top:10px;left:9px;"></span></div>
