<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:277px;left:360px;" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="workDailyData" idColumn="fID" limit="20"><column label="ID" name="fID" type="String" xid="xid1"></column>
  <column label="填报人名称" name="fPersonName" type="String" xid="xid2"></column>
  <column label="本日完成工作" name="fFinishWork" type="String" xid="xid3"></column>
  <column label="明日工作计划" name="fWorkPlan" type="String" xid="xid4"></column>
  <column label="需协调与帮助" name="fNeedHelp" type="String" xid="xid5"></column>
  <column label="创建日期" name="fCreateTime" type="String" xid="xid6"></column>
  <column label="备注" name="fRemark" type="String" xid="xid21"></column>
  <column label="图片" name="fImgURL" type="String" xid="xid22"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="workWeeklyData" idColumn="fID"><column label="ID" name="fID" type="String" xid="xid7"></column>
  <column label="填报人名称" name="fPersonName" type="String" xid="xid8"></column>
  <column label="本周完成工作" name="fFinishWork" type="String" xid="xid9"></column>
  <column label="本周工作总结" name="fWorkSummary" type="String" xid="xid10"></column>
  <column label="下周工作计划" name="fWorkPlan" type="String" xid="xid11"></column>
  <column label="需协调与帮助" name="fNeedHelp" type="String" xid="xid12"></column>
  <column label="填报日期" name="fCreateTime" type="String" xid="xid13"></column>
  <column label="备注" name="fRemark" type="String" xid="xid23"></column>
  <column label="图片" name="fImgURL" type="String" xid="xid24"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="workMonthlyData" idColumn="fID"><column label="ID" name="fID" type="String" xid="xid14"></column>
  <column label="填报人名称" name="fPersonName" type="String" xid="xid15"></column>
  <column label="本月完成工作" name="fFinishWork" type="String" xid="xid16"></column>
  <column label="本月工作总结" name="fWorkSummary" type="String" xid="xid17"></column>
  <column label="下月工作计划" name="fWorkPlan" type="String" xid="xid18"></column>
  <column label="需协调与帮助" name="fNeedHelp" type="String" xid="xid19"></column>
  <column label="填报日期" name="fCreateTime" type="String" xid="xid20"></column>
  <column label="备注" name="fRemark" type="String" xid="xid25"></column>
  <column label="图片" name="fImgURL" type="String" xid="xid26"></column></div></div>  
  <div xid="waitDiv" style="position:relative;height:400px;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button2" style="position:absolute;font-size:30px;top:42%;left:42%;" icon="icon-loading-a">
    <i xid="i4" class="icon-loading-a"></i>
    <span xid="span4"></span></a> </div><div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="所有日志"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">所有日志</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-content clearfix" xid="content2"><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1" slidable="true">
   <div class="x-contents-content  x-scroll-view" xid="WorkDaily">
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="workDailyData" limit="20">
   <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div2">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i5"></i>
    <span class="x-pull-down-label" xid="span5">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div3"><ul class="x-list-template" xid="listTemplateUl1">
    <div component="$UI/system/components/justep/controlGroup/controlGroup" class="x-control-group" title="工作日报" xid="dailyGroup" collapsible="false" collapsed="true" bind-click="controlGroupClick">
   <div class="x-control-group-title" xid="controlGroupTitle1" style="background-color:#ddd;vertical-align:middle;">
    <span xid="span6" bind-text='val("fPersonName")'><![CDATA[]]></span><span xid="span8" bind-text=' val("fCreateTime")' class="pull-right" style="font-size:small;"></span></div> 
  <li xid="li1"><div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel3">
    
   
   <div class="panel-body" xid="body1"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
   <label class="x-label" xid="finishWorkDL" bind-text='label("fFinishWork")'></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="finishWorkD" bind-ref='ref("fFinishWork")'></div></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5">
   <label class="x-label" xid="workPlanDL" bind-text='label("fWorkPlan")'></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="workPlanD" bind-ref='ref("fWorkPlan")'></div></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6">
   <label class="x-label" xid="needHelpDL" bind-text='label("fNeedHelp")'></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="needHelpD" bind-ref='ref("fNeedHelp")'></div></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit12">
   <label class="x-label" xid="fRemarkDL" bind-text='label("fRemark")'></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="fRemarkD" bind-ref='ref("fRemark")'></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row">
   <div class="x-col x-col-25" xid="col1"><span xid="fImgURLDS" bind-text='label("fImgURL")' style="text-align:left;"></span>
  <img src="" alt="" xid="image2" bind-attr-src='$model.getUrl(val("fID"),val("fImgURL"))  ' class="res-image" bind-click="image2Click"></img></div>
   </div></div></div></li></div></ul></div>
   <div class="x-content-center x-pull-up" xid="div4">
    <span class="x-pull-up-label" xid="span7">加载更多...</span></div> </div> </div>
  <div xid="div1" style="position:relative;height:100%;width:100%;" bind-visible=" $model.workDailyData.count() ==0"><div xid="div17" bind-text='"暂无数据..."' style="position:absolute;color:#C0C0C0;top:40%;left:40%;"></div></div>
  </div>
  <div class="x-contents-content" xid="WorkWeekly"><div component="$UI/system/components/justep/list/list" class="x-list  x-scroll-view" xid="list2" data="workWeeklyData" limit="20">
    
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView2">
   <div class="x-content-center x-pull-down container" xid="div5">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i6"></i>
    <span class="x-pull-down-label" xid="span11">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div6"><ul class="x-list-template" xid="listTemplateUl2">
     
  <div component="$UI/system/components/justep/controlGroup/controlGroup" class="x-control-group" title="工作周报" xid="weeklyGroup" collapsible="false" collapsed="true" bind-click="controlGroupClick">
   <div class="x-control-group-title" xid="controlGroupTitle2" style="background-color:#ddd;">
    <span xid="span9" bind-text='val("fPersonName")'></span>
    <span xid="span10" bind-text='val("fCreateTime")' class="pull-right" style="font-size:small;"></span></div> 
   <li xid="li2">
     <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel4">
      <div class="panel-body" xid="body2">
       <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
        <label class="x-label" xid="fFinishWorkWL" bind-text='label("fFinishWork")'></label>
        <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="fFinishWorkW" bind-ref='ref("fFinishWork")'></div></div> 
       <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit10">
   <label class="x-label" xid="fWorkSummaryWL" bind-text='label("fWorkSummary")'></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="fWorkSummaryW" bind-ref='ref("fWorkSummary")'></div></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
        <label class="x-label" xid="fWorkPlanWL" bind-text='label("fWorkPlan")'></label>
        <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="fWorkPlanW" bind-ref='ref("fWorkPlan")'></div></div> 
       <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
        <label class="x-label" xid="fNeedHelpWL" bind-text='label("fNeedHelp")'></label>
        <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="fNeedHelpW" bind-ref='ref("fNeedHelp")'></div></div> 
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit15">
   <label class="x-label" xid="fRemarkWL" bind-text='label("fRemark")'></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="fRemarkW" bind-ref='ref("fRemark")'></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col x-col-25" xid="col5">
    <span xid="fImgURLWS" bind-text='label("fImgURL")' style="text-align:left;"></span>
  <img src="" alt="" xid="image3" bind-attr-src='$model.getUrl(val("fID"),val("fImgURL"))  ' class="res-image" bind-click="image3Click"></img></div> 
   <div class="x-col" xid="col4">
     </div> </div>
  </div> 
      </div> </li></div></ul></div>
   <div class="x-content-center x-pull-up" xid="div7">
    <span class="x-pull-up-label" xid="span14">加载更多...</span></div> </div></div>
  <div xid="div19" style="position:relative;height:100%;width:100%;" bind-visible=" $model.workWeeklyData.count() ==0">
   <div xid="div18" bind-text='"暂无数据..."' style="position:absolute;color:#C0C0C0;top:40%;left:40%;"></div></div></div>
  <div class="x-contents-content" xid="WorkMonthly"><div component="$UI/system/components/justep/list/list" class="x-list  x-scroll-view" xid="list3" data="workMonthlyData" limit="20">
    
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView3">
   <div class="x-content-center x-pull-down container" xid="div8">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i7"></i>
    <span class="x-pull-down-label" xid="span15">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div9"><ul class="x-list-template" xid="listTemplateUl3">
     
  <div component="$UI/system/components/justep/controlGroup/controlGroup" class="x-control-group" xid="minthlyGroup" collapsible="false" collapsed="true" title="工作月报 " bind-click="controlGroupClick">
   <div class="x-control-group-title" xid="controlGroupTitle3" style="background-color:#ddd;">
    <span xid="span12" bind-text='val("fPersonName")'></span>
    <span xid="span13" bind-text='val("fCreateTime")' class="pull-right" style="font-size:small;"></span></div> 
   <li xid="li3">
     <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel5">
      <div class="panel-body" xid="body3">
       <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit9">
        <label class="x-label" xid="fFinishWorkML" bind-text='label("fFinishWork")'></label>
        <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="fFinishWorkM" bind-ref='ref("fFinishWork")'></div></div> 
       <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit11">
   <label class="x-label" xid="fWorkSummaryML" bind-text='$model.workMonthlyData.label("fWorkSummary")'></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="fWorkSummaryM" bind-ref='ref("fWorkSummary")'></div></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit8">
        <label class="x-label" xid="fWorkPlanML" bind-text='label("fWorkPlan")'></label>
        <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="fWorkPlanM" bind-ref='ref("fWorkPlan")'></div></div> 
       <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit7">
        <label class="x-label" xid="fNeedHelpML" bind-text='label("fNeedHelp")'></label>
        <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="fNeedHelpM" bind-ref='ref("fNeedHelp")'></div></div> 
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit16">
   <label class="x-label" xid="fRemarkML" bind-text='label("fRemark")'></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="fRemarkM" bind-ref='ref("fRemark")'></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col x-col-25" xid="col7">
    <span xid="fImgURLML" bind-text='label("fImgURL")' style="text-align:left;"></span>
  <img src="" alt="" xid="image4" bind-attr-src='$model.getUrl(val("fID"),val("fImgURL"))  ' class="res-image" bind-click="image4Click"></img></div> 
   <div class="x-col" xid="col6">
     </div> </div>
  </div> 
      </div> </li></div></ul></div>
   <div class="x-content-center x-pull-up" xid="div10">
    <span class="x-pull-up-label" xid="span16">加载更多...</span></div> </div></div>
  <div xid="div21" style="position:relative;height:100%;width:100%;" bind-visible=" $model.workMonthlyData.count() ==0">
   <div xid="div20" bind-text='"暂无数据..."' style="position:absolute;color:#C0C0C0;left:40%;top:40%;"></div></div></div></div></div>
   <div class="x-panel-bottom" xid="bottom1" style="position:fixed;bottom:0px;"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup1"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="工作日报" xid="WorkDailyBtn" target="WorkDaily" onClick="WorkDailyBtnClick">
   <i xid="i1"></i>
   <span xid="span1">工作日报</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="工作周报" xid="WorkWeeklyBtn" target="WorkWeekly" onClick="WorkWeeklyBtnClick">
   <i xid="i2"></i>
   <span xid="span2">工作周报</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="工作月报" xid="WorkmonthlyBtn" target="WorkMonthly" onClick="WorkmonthlyBtnClick">
   <i xid="i3"></i>
   <span xid="span3">工作月报</span></a></div></div></div></div>
  </div> 
<resource xid="resource2"><require xid="require1" url="css!$UI/work/common/css/image"></require></resource>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="imgDialog" src="$UI/work/common/process/imgDialog/mainActivity.w" height="auto" resizable="false" width="80%" status="normal"></span></div>