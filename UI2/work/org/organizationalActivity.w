<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:409px;left:96px;"></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" style="background-color:#4B73A4;">
   <div xid="left1" style="line-height:46px;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button1" icon="icon-chevron-left" onClick='{"operation":"window.close"}'>
   <i xid="i1" class="icon-chevron-left"></i>
   <span xid="span1"></span></a></div>
   <div xid="right1" style="text-align:left;" class="x-titlebar-right"><span xid="span2"><![CDATA[组织机构管理]]></span></div></div></div>
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/org/orgTree" class="x-tree x-inner-scroll" limit="10" rootLabel="组织机构" xid="orgTree1">
   <div component="$UI/system/components/justep/data/bizData" autoLoad="true" xid="bizData2">
    <calculateRelation relation="selected" type="Integer" xid="calculateRelation1"></calculateRelation></div> 
   <div class="x-tree-head" xid="div1" style="border-bottom:1px solid #ddd;padding-top:1rem;">
    <ul component="$UI/system/components/bootstrap/breadcrumb/breadcrumb" class="breadcrumb"></ul></div> 
   <div class="x-tree-content x-scroll-view" xid="div2">
    <div component="$UI/system/components/justep/scrollView/scrollView" supportPullDown="true" supportPullUp="true" hScroll="false" vScroll="true" hScrollbar="false" vScrollbar="true" bounce="true" class="x-scroll" xid="scrollView1">
     <div class="x-content-center x-pull-down container" xid="div3">
      <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2"></i>
      <span class="x-pull-down-label" xid="span3">下拉刷新...</span></div> 
     <ul class="x-scroll-content x-tree-template" xid="treeTemplateUl1">
      <li xid="li2" bind-click="li2Click" style="border-bottom:1px dashed #E3E3E3;">
       <div component="$UI/system/components/justep/row/row" class="x-row x-row-center" xid="row1">
        <div class="x-col" xid="col1">
         <span component="$UI/system/components/justep/button/checkbox" class="x-checkbox x-tree-checkbox" xid="checkbox1"></span></div> 
        <div class="x-col" xid="col2">
         <span component="$UI/system/components/justep/output/output" class="x-org-icon" xid="output1"></span></div> 
        <div class="x-col x-col-75" xid="col3">
         <div component="$UI/system/components/justep/output/output" class="x-output x-org-label" xid="output2"></div></div> 
        <div class="x-tree-link x-col x-col-10" xid="col4">
         <i class="icon-chevron-right" xid="i3"></i></div> </div> </li> </ul> 
     <div class="x-content-center x-pull-up" xid="div4">
      <span class="x-pull-up-label" xid="span4">加载更多...</span></div> </div> </div> </div></div>
   </div>
  <div component="$UI/system/components/bootstrap/dialog/dialog" class="modal fade" xid="agencyDialog">
   <div class="modal-dialog" xid="div11" style="width:90%;height:80%;margin:10% 5%;">
    <div class="modal-content" xid="div12" style="width:100%;height:100%;">
     <div class="modal-header" xid="div13">
      
      <h4 class="modal-title" xid="h41"><![CDATA[您可以将该人员移动到以下机构：]]></h4></div> 
     <div class="modal-body" xid="div14" style="height:90%;"><div component="$UI/system/components/justep/org/orgTree" class="x-tree x-inner-scroll" limit="10" rootLabel="请选择机构" xid="orgTree3" filter=' $row.val("sOrgKindID") !="psm"'>
   <div component="$UI/system/components/justep/data/bizData" autoLoad="true" xid="bizData4">
    <calculateRelation relation="selected" type="Integer" xid="calculateRelation3"></calculateRelation></div> 
   <div class="x-tree-head" xid="div24" style="border-bottom:1px solid #ddd;">
    <ul component="$UI/system/components/bootstrap/breadcrumb/breadcrumb" class="breadcrumb"></ul></div> 
   <div class="x-tree-content x-scroll-view" xid="div25">
    <div component="$UI/system/components/justep/scrollView/scrollView" supportPullDown="true" supportPullUp="true" hScroll="false" vScroll="true" hScrollbar="false" vScrollbar="true" bounce="true" class="x-scroll" xid="scrollView4">
     <div class="x-content-center x-pull-down container" xid="div26">
      <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i7"></i>
      <span class="x-pull-down-label" xid="span12">下拉刷新...</span></div> 
     <ul class="x-scroll-content x-tree-template" xid="treeTemplateUl4">
      <li xid="li5" style="border-bottom:1px dashed #E3E3E3;">
       <div component="$UI/system/components/justep/row/row" class="x-row x-row-center" xid="row3">
        <div class="x-col" xid="col9">
         <span component="$UI/system/components/justep/button/checkbox" class="x-checkbox x-tree-checkbox" xid="checkbox3"></span></div> 
        <div class="x-col" xid="col10">
         <span component="$UI/system/components/justep/output/output" class="x-org-icon" xid="output5"></span></div> 
        <div class="x-col x-col-75" xid="col11" bind-click="col11Click">
         <div component="$UI/system/components/justep/output/output" class="x-output x-org-label" xid="output6"></div></div> 
        <div class="x-tree-link x-col x-col-10" xid="col12">
         <i class="icon-chevron-right" xid="i8"></i></div> </div> </li> </ul> 
     <div class="x-content-center x-pull-up" xid="div27">
      <span class="x-pull-up-label" xid="span13">加载更多...</span></div> </div> </div> </div></div>
     </div> </div> </div></div>