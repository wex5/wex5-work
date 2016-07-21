<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:383px;left:202px;height:auto;" onLoad="modelLoad" onunLoad="modelUnLoad"><div component="$UI/system/components/justep/reportData/reportData" xid="reportData">
   <source xid="default1"><action xid="default2" name="queryWorkLogReportAction" type="action" columns="fID,fPersonName,fCreateTime,fFinishWork,fWorkPlan,fNeedHelp,fRemark,fImgURL"></action></source></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="tobarData" idColumn="modelName"><column label="日志名称" name="modelName" type="String" xid="xid1"></column>
  <column name="startDate" type="Date" xid="xid2"></column>
  <column name="endDate" type="Date" xid="xid3"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="radioData" idColumn="radio"><column name="radio" type="String" xid="xid4"></column>
  <data xid="default3">[{&quot;radio&quot;:&quot;日报&quot;},{&quot;radio&quot;:&quot;周报&quot;},{&quot;radio&quot;:&quot;月报&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="titleData" idColumn="title" autoNew="true"><column name="title" type="String" xid="xid5"></column>
  <data xid="default4">[{&quot;title&quot;:&quot;&quot;}]</data></div>
  </div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1">
   <div class="x-titlebar-left" xid="left1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="backBtn" onClick='{"operation":"window.close"}'>
   <i xid="i1" class="icon-chevron-left"></i>
   <span xid="span1"></span></a></div>
   <div class="x-titlebar-title" xid="title1"></div>
   <div class="x-titlebar-right reverse" xid="right1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="筛选" xid="screenBtn" target="screenContent">
   <i xid="i2"></i>
   <span xid="span2">筛选</span></a></div></div></div>
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1" wrap="false">
   <div class="x-contents-content" xid="reportContent">
  <div component="$UI/system/components/justep/toolBar/toolBar" class="x-toolbar form-inline x-toolbar-spliter" xid="reportBar"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" onClick="{'operation':'report.exportPDF'}" xid="button1">
   <i xid="i5"></i>
   <span xid="span4"></span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" onClick="{'operation':'report.exportWord'}" xid="button2">
   <i xid="i8"></i>
   <span xid="span5"></span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" onClick="{'operation':'report.exportExcel'}" xid="button3">
   <i xid="i9"></i>
   <span xid="span6"></span></a></div><div component="$UI/system/components/justep/report/report" src="workLogReport.xml" reportName="report" autoLoad="true" class="x-report x-scroll-h" xid="report" dataList="reportData" style="margin-top:10px;"></div></div>
  <div class="x-contents-content" xid="screenContent"><div xid="content4">
   <div component="$UI/system/components/bootstrap/row/row" class="row" xid="timeRow" style="width:100%;margin:0 auto;border-bottom:1px solid #dddddd;padding:2px;">
    <div class="col col-xs-3" xid="col1" style="padding:0px 0px 0px 0px;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-icon-left" label="选择时间" xid="timeBtn" style="margin-top:5px;font-size:medium;font-weight:bold;margin-left:-5px;">
      <i xid="i3" class="icon-ios7-time-outline" style="color:#8000FF;"></i>
      <span xid="timeSpan" style="color:#808080;">选择时间</span></a> </div> 
    <div class="col col-xs-9" xid="col2">
     <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row2">
      <div class="col col-xs-5" xid="col4" style="padding:0px 0px 0px 0px;">
       <input component="$UI/system/components/justep/input/input" class="form-control" xid="startDataInput" dataType="Date" style="border-color:#aaa;" format="yyyy-MM-dd" bind-ref='$model.tobarData.ref("startDate")'></input></div> 
      <div class="col col-xs-1" xid="col5" style="margin-top:15px;border-bottom:2px solid #aaa;"></div>
      <div class="col col-xs-5" xid="col6" style="padding:0px 0px 0px 0px;">
       <input component="$UI/system/components/justep/input/input" class="form-control" xid="endDataInput" dataType="Date" style="border-color:#aaa;" format="yyyy-MM-dd" bind-ref='$model.tobarData.ref("endDate")'></input></div> </div> </div> 
    </div> 
   <div component="$UI/system/components/bootstrap/row/row" class="row" xid="templateRow" style="width:100%;margin:0 auto;">
    <div class="col col-xs-12" xid="col7">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-icon-left" label="选择模板" xid="templateBtn" style="margin-top:5px;font-size:medium;font-weight:bold;">
      <i xid="i4" class="icon-ios7-copy" style="font-size:medium;color:#8000FF;"></i>
      <span xid="span3" style="color:#808080;">选择模板</span></a> 
     <div component="$UI/system/components/bootstrap/row/row" class="row" xid="templateRowTow">
      <div class="col col-xs-6" xid="col10" style="padding:5px 20px 5px;">
       <span component="$UI/system/components/justep/select/radioGroup" class="x-radio-group" xid="radioGroup" bind-itemset="radioData" bind-itemsetValue='ref("radio")' bind-itemsetLabel='ref("radio")'></span></div> </div> </div> </div> </div>
  <div class="x-panel-bottom" xid="bottom1" style="height:48px;">
   <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="取消" xid="cancelBtn" target="reportContent">
     <i xid="i6"></i>
     <span xid="span7">取消</span></a> 
    <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="确定" xid="determineBtn" target="reportContent" onClick="determineBtnClick">
     <i xid="i7"></i>
     <span xid="span8">确定</span></a> </div> </div>
  </div></div></div>
   </div></div>