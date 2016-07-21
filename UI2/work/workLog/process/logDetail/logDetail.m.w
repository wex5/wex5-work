<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:360px;left:53px;height:auto;" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="headSkipData" idColumn="fID" onCustomRefresh="headSkipDataCustomRefresh"><column name="fID" type="String" xid="xid1"></column>
  <column label="名称" name="fLabel" type="String" xid="xid2"></column>
  <column label="图标颜色" name="fColor" type="String" xid="xid3"></column>
  <column label="图标" name="fIconClass" type="String" xid="xid4"></column>
  <column label="路径" name="fUrl" type="String" xid="xid5"></column>
  <column name="fProcess" type="String" xid="xid6"></column>
  <column name="fActivity" type="String" xid="xid7"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="skipData" idColumn="fID" onCustomRefresh="skipDataCustomRefresh">
   <column name="fID" type="String" xid="default1"></column>
   <column label="名称" name="fLabel" type="String" xid="default2"></column>
   <column label="图标颜色" name="fColor" type="String" xid="default3"></column>
   <column label="图标" name="fIconClass" type="String" xid="default4"></column>
   <column label="路径" name="fUrl" type="String" xid="default5"></column>
   <column name="fProcess" type="String" xid="default6"></column>
   <column name="fActivity" type="String" xid="default7"></column></div></div>  
 <!--  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="workLogReportDialog" src="$UI/OA/workLog/process/workLogReport/mainActivity.m.w" process="/OA/workLog/process/workLogReport/workLogReportProcess" activity="mainActivity"></span> --><div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="工作日志"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">工作日志</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div xid="div2" style="background-color:#2FA4E7;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
    <div class="x-col" xid="col1" style="text-align:center;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="所有日志" xid="allWorkBtn" style="color:#FFFFFF;position:relative;" onClick="allWorkBtnClick">
      <i xid="i4" style="font-size:xx-large;display:block;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#FFFFFF #FFFFFF #FFFFFF #FFFFFF;border-radius:40%;padding:10px 15px 10px 15px;" bind-css=' $model.headSkipData.val("fIconClass")' bind-style=' {color:$model.headSkipData.val("fColor")}'></i>
      <span xid="span10" style="display:block;margin-top:5px;" bind-text='$model.headSkipData.val("fLabel")'><![CDATA[]]></span>
      </a> </div> 
    <div class="x-col" xid="col3" style="text-align:center;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="日志报表" xid="reportBtn" style="color:#FFFFFF;position:relative;" icon="icon-stats-bars" onClick="reportBtnClick">
      <i xid="i5" style="font-size:xx-large;display:block;border-style:solid solid solid solid;border-width:thin thin thin thin;border-color:#FFFFFF #FFFFFF #FFFFFF #FFFFFF;border-radius:40%;padding:10px 14px 10px 14px;" class="icon-stats-bars"></i>
      <span xid="span11" style="display:block;margin-top:5px;"><![CDATA[]]></span></a> </div> </div> </div><div xid="div1"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="skipData">
    
  <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" class="col-xs-4">
     <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row6" style="width:100%;margin:0 auto;">
      <div class="col " xid="col18" style="text-align:center;">
       <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" xid="leaveBtn" style="color:#808080;margin-top:10px;" onClick="leaveBtnClick">
        <i xid="i10" style="font-size:xx-large;color:#398A42;" bind-css=' val("fIconClass")' bind-style='{color:val("fColor")}'></i>
        <span xid="span1" bind-text='val("fLabel")'></span></a> </div> </div> </li> </ul></div><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup3" style="padding-top:20px;padding-bottom:20px;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="添加模板" xid="button6" icon="icon-android-add">
   <i xid="i6" class="icon-android-add"></i>
   <span xid="span6">添加模板</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button7">
   <i xid="i7"></i>
   <span xid="span7"></span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button8">
   <i xid="i8"></i>
   <span xid="span8"></span></a></div>
  </div>
  </div>
  </div> 
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="allWorkLogDialog" src="$UI/OA/schedule/process/workCalendar/process/workCalendar/allWorkLog.m.w"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="WorkDailyDialog" src="$UI/OA/workLog/process/workDaily/mainActivity.m.w"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="WorkWeeklyDialog" src="$UI/OA/workLog/process/WorkWeekly/mainActivity.m.w"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="WorkMonthlydialog" src="$UI/OA/workLog/process/Workmonthly/mainActivity.m.w"></span>
  </div>