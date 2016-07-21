<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:362px;left:30px;" onLoad="modelLoad"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="统计"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">统计</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content x-cards" xid="content1"><div xid="group">
   <h4 xid="h42">查看团队成员的今日最新签到位置分布</h4>
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="openGroup" bind-click="openGroupClick">
    <div class="x-col x-col-center" xid="col8">
     <span xid="span6" style="font-weight:bold;font-size:small;">团队今日最新签到</span></div> 
    <div class="x-col x-col-fixed " xid="col7" style="width:auto;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button4" icon="icon-chevron-right">
      <i xid="i3" class="icon-chevron-right"></i>
      <span xid="span8"></span></a> </div> </div> </div>
  <div xid="personal">
   <h4 xid="h41">查看个人签到历史</h4>
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="openMeDetail" style="border-bottom:1px solid #ddd;" bind-click="openMeDetailClick">
    <div class="x-col x-col-center" xid="col1">
     <span xid="span3" style="font-weight:bold;font-size:small;">查看我的</span></div> 
    <div class="x-col x-col-fixed " xid="col2" style="width:auto;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button1" icon="icon-chevron-right">
      <i xid="i1" class="icon-chevron-right"></i>
      <span xid="span1"></span></a> </div> </div> 
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="selPerson" style="margin-top:0;padding-top:5px;" bind-click="selPersonClick">
    <div class="x-col x-col-center" xid="col4">
     <span xid="span4" style="font-weight:bold;font-size:small;">查看他人</span></div> 
    <div class="x-col x-col-fixed " xid="col5" style="width:auto;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button2" icon="icon-chevron-right">
      <i xid="i2" class="icon-chevron-right"></i>
      <span xid="span2"></span></a> </div> </div> </div></div>
  </div> 
<div xid="waitDiv" style="position:relative;height:200px;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button3" style="position:absolute;font-size:30px;top:42%;left:42%;" icon="icon-loading-a">
    <i xid="i5" class="icon-loading-a"></i>
    <span xid="span5"></span></a> </div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="selectPersontWindowDialog" src="$UI/work/common/process/personDlgActivity.w" title="选择人员" onReceive="selectPersontWindowDialogReceive"></span></div>