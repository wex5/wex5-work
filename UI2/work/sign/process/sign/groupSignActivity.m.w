<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:239px;left:60px;"
    onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="hasSignData" idColumn="id" onCustomRefresh="hasSignDataCustomRefresh">
      <column label="人员ID" name="fPersonID" type="String" xid="xid1"></column>
  <column label="人员名称" name="fPersonName" type="String" xid="xid2"></column>
  <column label="签到时间" name="fSignTime" type="String" xid="xid3"></column>
  <column label="签到地址" name="fAddress" type="String" xid="xid4"></column>
  <column label="人员头像" name="fPersonImg" type="String" xid="xid5"></column>
  <data xid="default6">[]</data>
  <column label="签到次数" name="fSignCount" type="String" xid="xid6"></column>
  <column label="ID" name="id" type="String" xid="xid7"></column></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="unSignData" idColumn="ID" onCustomRefresh="unSignDataCustomRefresh"> 
      <column label="人员ID" name="fPersonID" type="String" xid="default1"></column>
  <column label="人员名称" name="fPersonName" type="String" xid="default2"></column>
  <column name="ID" type="String" xid="xid8"></column>
  <data xid="default8">[{&quot;fPersonID&quot;:&quot;87930426E1EE42C29F592484CA028A9C&quot;,&quot;fPersonName&quot;:&quot;aasdd&quot;,&quot;ID&quot;:&quot;1111&quot;},{&quot;fPersonID&quot;:&quot;87930426E1EE42C29F592484CA028A9C&quot;,&quot;fPersonName&quot;:&quot;dddd&quot;,&quot;ID&quot;:&quot;2222&quot;}]</data></div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="团队最新签到"
        class="x-titlebar"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}"
            xid="backBtn"> 
            <i class="icon-chevron-left"/>  
            <span/> 
          </a> 
        </div>  
        <div class="x-titlebar-title">团队最新签到</div>  
        <div class="x-titlebar-right reverse"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-icon-left pull-right" label="选择日期" xid="selDate" onClick="{operation:'datePickerg.show'}" icon="icon-ios7-calendar-outline" style="font-size:0.8em;font-weight:bold;">
   <i xid="i10" class="icon-ios7-calendar-outline"></i>
   <span xid="span6">选择日期</span></a></div> 
      </div> 
    </div>  
    <div class="x-panel-content x-cards" xid="content1" _xid="C721DEB7A1400001B4FBBCB6104089F0"> 
      
    <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel3"> 
        <div class="x-panel-top" xid="top3" style="background:#eee;" height="38">
   <div xid="div3" style="padding:5px 5px 5px 15px;">
    <span xid="weekSpang"></span>
    <span xid="dateSpang"></span></div> </div><div class="x-panel-content x-cards " xid="content5">
          <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents2" wrap="false"> 
            <div class="x-contents-content" xid="hasSign">
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="signPeopleList" data="hasSignData" bind-click="signPeopleListClick" limit="20">
    <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" style="background-color:white;margin-bottom:10px;border-bottom:1px solid #ddd;" class="x-min-height">
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col x-col-fixed x-col-center" xid="col1" style="width:auto;padding-top:0;"><div xid="div1" class="photoDiv" align="center">
   <span xid="groupImgSpan" style="line-height:40px;" bind-text='$object.val("fPersonName").slice(-2)'></span></div></div>
   <div class="x-col x-col-center" xid="col2" style="width:auto;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col4"><span xid="signName" bind-text='val("fPersonName")' style="color:#000;font-size:1.1em;"></span>
  <span xid="signCount" style="color:#999;" bind-text='"今日签到" +  val("fSignCount") + "次"'></span>
  </div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="color:#999;">
   <div class="x-col x-col-center no-padding" xid="col7">
  
  <div component="$UI/system/components/justep/row/row" class="x-row no-padding" xid="row4">
   <div class="x-col x-col-fixed no-padding" xid="col5" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs" xid="button6" icon="icon-android-location" style="color:#999;">
   <i xid="i5" class="icon-android-location"></i>
   <span xid="span8"></span></a></div>
   <div class="x-col no-padding" xid="col6"><span xid="span7" bind-text='val("fSignTime").split("T")[1].split(":")[0] + ":"+val("fSignTime").split("T")[1].split(":")[1] + val("fAddress")'></span></div>
   </div></div>
   </div></div>
   <div class="x-col x-col-fixed x-col-center" xid="col3" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button5" icon="icon-chevron-right">
   <i xid="i4" class="icon-chevron-right"></i>
   <span xid="span4"></span></a></div></div></li></ul></div><h2 xid="h21" bind-visible=" $model.hasSignData.count()==0" style="text-align:center;font-size:small;color:#aaa;"><![CDATA[您的团队还没有成员签到]]></h2></div>  
            <div class="x-contents-content" xid="unSign"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="unSignData" limit="20">
    <ul class="x-list-template x-min-height" xid="listTemplateUl2" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl2">
    <li xid="li2" class="x-min-height col-xs-4" componentname="li(html)" id="undefined_li2">
  
  
  <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row5" style="margin-bottom:10px;">
   <div class="col col-xs-12" xid="col9" style="text-align:center;"><div xid="div2" class="photoDiv" align="center" style="display:inline-block;">
   <span xid="span9" bind-text='$object.val("fPersonName").slice(-2)'></span></div></div>
   <div class="col col-xs-12" xid="col10" style="text-align:center;"><span xid="span5" bind-text='ref("fPersonName")'></span></div>
   </div></li></ul></div></div>
          </div>
        </div> 
      </div></div> 
  <div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup1" selected="button1">
            <a component="$UI/system/components/justep/button/button" class="btn btn-default" xid="button1" target="hasSign"> 
              <i xid="i1" />  
              <span xid="span1" bind-text='"已签到（"+$model.hasSignData.count()+"）"'></span>
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-default" xid="button2" target="unSign"> 
              <i xid="i2" />  
              <span xid="span2" bind-text='"未签到（"+$model.unSignData.count()+"）"'></span>
            </a>
          </div></div></div>  
  <div component="$UI/system/components/justep/datePicker/datePicker" class="x-popPicker" xid="datePickerg" onOK="datePickergOK" type="date" style="top:10px;left:660px;">
   <div class="x-popPicker-overlay" xid="div4"></div>
   <div class="x-popPicker-content" xid="div5">
    <div class="x-poppicker-header" xid="div6">
     <button class="btn btn-default x-btn-ok" xid="button4">确定</button></div> </div> </div>
  <div xid="waitDiv" style="position:relative;height:200px;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button3" style="position:absolute;font-size:30px;top:42%;left:42%;" icon="icon-loading-a">
    <i xid="i3" class="icon-loading-a"></i>
    <span xid="span3"></span></a> </div>
  <resource xid="resource2"><require xid="require2" url="css!$UI/work/common/css/pub"></require></resource></div>
