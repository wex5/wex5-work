<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:267px;left:49px;" onModelConstructDone="modelModelConstructDone" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/baasData" autoLoad="false" xid="signInfoData" queryAction="queryOa_sign" saveAction="saveOa_sign" url="/work/sign" tableName="oa_sign" idColumn="fID" orderBy="fSignTime:desc" confirmDelete="true"><column label="fID" name="fID" type="String" xid="default15"></column>
  <column label="版本" name="version" type="Integer" xid="default16"></column>
  <column label="签到人" name="fPersonID" type="String" xid="default17"></column>
  <column label="签到人名称" name="fPersonName" type="String" xid="default18"></column>
  <column label="签到组织" name="fOrgID" type="String" xid="default19"></column>
  <column label="组织名称" name="fOrgName" type="String" xid="default20"></column>
  <column label="签到部门" name="fDeptID" type="String" xid="default21"></column>
  <column label="部门名称" name="fDeptName" type="String" xid="default22"></column>
  <column label="签到时间" name="fSignTime" type="DateTime" xid="default23"></column>
  <column label="经度" name="fLongitude" type="String" xid="default24"></column>
  <column label="纬度" name="fDimension" type="String" xid="default25"></column>
  <column label="签到地址" name="fSignAddress" type="String" xid="default26"></column>
  <column label="备注" name="fRemark" type="String" xid="default27"></column>
  <column label="图片" name="fImgURL" type="String" xid="default28"></column></div></div>  
  <div xid="waitDiv" style="position:relative;height:200px;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button1" style="position:absolute;font-size:30px;top:42%;left:42%;" icon="icon-loading-a">
    <i xid="i4" class="icon-loading-a"></i>
    <span xid="span5"></span></a> </div><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="统计"
        class="x-titlebar"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}"
            xid="backBtn"> 
            <i class="icon-chevron-left"/>  
            <span/> 
          </a> 
        </div>  
        <div class="x-titlebar-title">统计</div>  
        <div class="x-titlebar-right reverse"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-icon-left pull-right" label="选择日期" xid="selDate" onClick="{operation:'datePicker.show'}" icon="icon-ios7-calendar-outline" style="font-size:0.8em;font-weight:bold;">
   <i xid="i1" class="icon-ios7-calendar-outline"></i>
   <span xid="span1">选择日期</span></a></div> 
      </div> 
    </div>  
    <div class="x-panel-content x-cards" xid="content1" style="background-color:#ddd;"> 
      <div xid="div1" style="padding:10px;margin-bottom:10px;background-color:white;"> 
        <span xid="weekSpan" style="padding:5px 5px 5px 10px;" /><span xid="dateSpan" style="padding:5px 5px 5px 10px;"/></div> 
    <div component="$UI/system/components/justep/list/list" class="x-list" xid="signList" data="signInfoData" style="background-color:white;" limit="20">
    <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div3">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2"></i>
    <span class="x-pull-down-label" xid="span7">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div7"><ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" style="margin-bottom:5px;border-bottom:1px solid #bbbbbb;" class="x-min-height  x-scroll-view">
  
  
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel2">
   <div class="panel-heading" xid="heading1" style="background-color:#eeeeee;">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="padding-bottom:0;">
   <div class="x-col x-col-fixed x-col-center" xid="col3" style="width:auto;"><div xid="div2" class="photoDiv" align="center">
   <span xid="perImgSpan" bind-text='$object.val("fPersonName").slice(-2)'></span></div></div>
   <div class="x-col x-col-fixed x-col-center" xid="col4" style="width:auto;"><span xid="span2" bind-text='val("fPersonName")'></span>
  </div>
   <div class="x-col x-col-fixed x-col-center" xid="col5" style="width:auto;"><span xid="span3" bind-text='$object.val("fSignTime").toString().split(" ")[1]'></span></div></div></div> 
   <div class="panel-body" xid="body1" bind-visible=' val("fRemark")'><div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="padding-left:15px;margin-top:10px;margin-bottom:10px;">
   <div class="x-col" xid="col1"><span xid="remarkSpan" bind-text='"备注："+val("fRemark")' bind-visible='val("fRemark")'></span></div>
   </div></div>
   <div class="panel-footer" xid="footer1" style="background-color:white;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col6" style="padding-top:0;">
  <div component="$UI/system/components/justep/row/row" class="x-row no-padding" xid="row1">
   <div class="x-col x-col-fixed no-padding x-col-center" xid="col2" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="button2" icon="icon-android-location" style="margin-left:5px;color:#999;">
   <i xid="i5" class="icon-android-location"></i>
   <span xid="span4" bind-text=' val("fSignAddress")? val("fSignAddress"):"地理信息暂无"'></span></a></div>
   <div class="x-col x-col-center no-padding" xid="col7" style="color:#999;"><span xid="span6" bind-text=' val("fSignAddress")? val("fSignAddress"):"地理信息暂无"'></span></div>
   </div></div>
   </div></div></div></li></ul></div>
   <div class="x-content-center x-pull-up" xid="div8">
    <span class="x-pull-up-label" xid="span8">加载更多...</span></div> </div></div>
  <h2 xid="h21" bind-visible=' !$model.signInfoData.val("fSignTime")' style="text-align:center;font-size:small;color:#aaa;"><![CDATA[用户还未签到]]></h2></div> 
  </div> 
<div component="$UI/system/components/justep/datePicker/datePicker" class="x-popPicker" xid="datePicker" onOK="datePickerOK" type="date" style="top:68px;left:29px;">
   <div class="x-popPicker-overlay" xid="div4"></div>
   <div class="x-popPicker-content" xid="div5">
    <div class="x-poppicker-header" xid="div6">
     <button class="btn btn-default x-btn-ok" xid="button3">确定</button></div> </div> </div>
  
  <resource xid="resource2"><require xid="require1" url="css!$UI/work/common/css/pub"></require></resource></div>
