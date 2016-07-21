<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:181px;left:231px;height:auto;" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="detailData" queryAction="queryWk_activity_start" saveAction="saveWk_activity_start" url="/work/activity" tableName="wk_activity_start" idColumn="fID"><column label="fID" name="fID" type="String" xid="default63"></column>
  <column label="版本" name="version" type="Integer" xid="default64"></column>
  <column label="图片" name="fImage" type="String" xid="default65"></column>
  <column label="标题" name="fTitle" type="String" xid="default66"></column>
  <column label="说明" name="fExplain" type="String" xid="default67"></column>
  <column label="发起人ID" name="fPersonID" type="String" xid="default68"></column>
  <column label="发起人姓名" name="fPersonName" type="String" xid="default69"></column>
  <column label="报名结束时间" name="fRegistrationTime" type="DateTime" xid="default70"></column>
  <column label="活动开始时间" name="fStartTime" type="DateTime" xid="default71"></column>
  <column label="活动结束时间" name="fEndTime" type="DateTime" xid="default72"></column>
  <column label="报名人数" name="fNumber" type="Integer" xid="default73"></column>
  <column label="地点" name="fAdds" type="String" xid="default74"></column>
  <column label="手机号" name="fTel" type="String" xid="default75"></column>
  <column label="性别" name="fSex" type="String" xid="default76"></column>
  <column label="年龄" name="fAge" type="String" xid="default77"></column>
  <column label="备注" name="fRemark" type="String" xid="default78"></column>
  <column label="费用" name="fCost" type="String" xid="default79"></column>
  <column label="报名人姓名" name="fName" type="String" xid="default80"></column>
  <column label="状态" name="fType" type="String" xid="default81"></column>
  <column label="关注" name="fAttention" type="String" xid="default82"></column>
  <column label="费用形式" name="fCostType" type="String" xid="default83"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="活动详情"
          class="x-titlebar" style="background-color:#00c957;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">活动详情</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content x-cards" xid="content1">
  
  
  
  
  
  
  
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="background-color:white;">
   <div class="x-col" xid="col1"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="detailData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><img src="" alt="" xid="image3" style="width:100%;" height="40%" bind-attr-src='$model.getUrl(val("fID"),val("fImage"))  '></img></li></ul> </div></div>
   </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="margin-top:10px;background-color:white;">
   <div class="x-col x-col-fixed x-col-center" xid="col5" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button1" icon="glyphicon glyphicon-bookmark" style="color:#00c957;padding:0px;">
   <i xid="i1" class="glyphicon glyphicon-bookmark" style="font-size:large;"></i>
   <span xid="span1"></span></a></div>
   <div class="x-col" xid="col7"><span xid="span2" bind-text='$model.detailData.val("fTitle")'><![CDATA[]]></span></div>
  <div class="x-col x-col-fixed x-col-center" xid="col8" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon " label="button" xid="button2" icon="icon-heart" style="padding:0px;color:#FF2D2D;">
   <i xid="i2" class="icon-heart" style="font-size:large;"></i>
   <span xid="span3"></span></a></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="background-color:white;">
   <div class="x-col x-col-fixed x-col-center" xid="col11" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button3" icon="icon-android-clock" style="padding:0px;">
   <i xid="i3" class="icon-android-clock" style="font-size:large;"></i>
   <span xid="span4"></span></a></div>
  <div class="x-col x-col-center" xid="col12"><span xid="span5" bind-text=' $model.detailData.val("fStartTime") +" 至 " + $model.detailData.val("fEndTime")' style="font-size:9px;"><![CDATA[]]></span></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row13" style="background-color:white;">
   <div class="x-col x-col-fixed x-col-center" xid="col36" style="width:auto;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button8" icon="icon-ios7-browsers-outline" style="padding:0px;">
     <i xid="i8" class="icon-android-clock icon-ios7-browsers-outline" style="font-size:x-large;"></i>
     <span xid="span21"></span></a> </div> 
   <div class="x-col x-col-center" xid="col35">
    <span xid="span23"><![CDATA[付费形式：]]></span>
  <span xid="span24" bind-text='$model.detailData.val("fCostType")'></span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="background-color:white;">
   <div class="x-col x-col-fixed x-col-center" xid="col14" style="width:auto;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button4" icon="icon-social-bitcoin-outline" style="padding:0px;">
     <i xid="i4" class="icon-social-bitcoin-outline" style="font-size:x-large;"></i>
     <span xid="span6"></span></a> </div> 
   <div class="x-col x-col-center" xid="col13">
    <span xid="span7"><![CDATA[活动费用(元)/人：]]></span>
  <span xid="span18" bind-text='$model.detailData.val("fCost") +"元"'></span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="background-color:white;">
   <div class="x-col x-col-fixed x-col-center" xid="col16" style="width:auto;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button5" icon="icon-ios7-location-outline" style="padding:0px;">
     <i xid="i5" class="icon-ios7-location-outline" style="font-size:x-large;"></i>
     <span xid="span8"></span></a> </div> 
   <div class="x-col x-col-center" xid="col15">
    <span xid="span19" bind-text='$model.detailData.val("fAdds")'></span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="background-color:white;">
   <div class="x-col x-col-fixed x-col-center" xid="col18" style="width:auto;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button6" icon="icon-ios7-telephone-outline" style="padding:0px;">
     <i xid="i6" class="icon-ios7-telephone-outline" style="font-size:x-large;"></i>
     <span xid="span10"></span></a> </div> 
   <div class="x-col x-col-center" xid="col17">
    <span xid="span11"><![CDATA[发起人：]]></span>
  <span xid="span20" bind-text='$model.detailData.val("fPersonName")'></span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row7" style="margin-top:10px;background-color:white;">
   <div class="x-col" xid="col20"><span xid="span9" bind-text='"报名限制" + $model.detailData.val("fNumber") +"人"'></span></div>
   <div class="x-col" xid="col21"></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row8" style="background-color:white;margin-top:10px;">
   <div class="x-col" xid="col24"><p xid="p1" bind-text=' $model.detailData.val("fExplain")'></p></div></div>
  </div>
  <div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row9">
   <div class="x-col" xid="col27"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="我要报名" xid="button7">
   <i xid="i7"></i>
   <span xid="span12">我要报名</span></a></div></div></div></div> 
</div>