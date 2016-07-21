<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:260px;left:307px;"
    onLoad="modelLoad" onParamsReceive="modelParamsReceive"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="mainData" idColumn="fID" onCustomRefresh="mainDataCustomRefresh">
      <column name="fID" type="String" xid="xid3"></column>
  <column name="fPersonName" type="String" xid="xid10"></column>
  <column name="fSignTime" type="DateTime" xid="xid4"></column>
  <column name="fLongitude" type="String" xid="xid5"></column>
  <column name="fDimension" type="String" xid="xid6"></column>
  <column name="fSignAddress" type="String" xid="xid7"></column>
  <column name="fRemark" type="String" xid="xid8"></column>
  <column name="fImgURL" type="String" xid="xid9"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="statusData" autoNew="false" idColumn="editStatus">
   <column label="编辑状态" name="editStatus" type="String" xid="column1"></column>
  <data xid="default1">[{&quot;editStatus&quot;:&quot;编辑&quot;}]</data>
  <column label="地址" name="address" type="String" xid="column10"></column></div>
  </div>  
  <div xid="waitDiv" style="position:relative;height:200px;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button2" style="position:absolute;font-size:30px;top:42%;left:42%;" icon="icon-loading-a">
    <i xid="i5" class="icon-loading-a"></i>
    <span xid="span5"></span></a> </div><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="外勤签到"
        class="x-titlebar"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}"
            xid="backBtn"> 
            <i class="icon-chevron-left"/>  
            <span/> 
          </a> 
        </div>  
        <div class="x-titlebar-title">外勤签到</div>  
        <div class="x-titlebar-right reverse"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="统计" xid="statistics" onClick="statisticsClick" style="font-weight:bold;font-size:initial;">
   <i xid="i2"></i>
   <span xid="span4">统计</span></a></div> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1" style="padding:20px;"> 
      <div xid="div1">
        
      <div class="media" xid="media1" style="border-bottom:1px solid #dbdbdb"> 
          <div class="media-left" xid="mediaLeft1" style="height:80px;width:80px;"> 
            <div xid="div4" class="photoDiv" align="center"><span xid="mainImgSpan"></span></div></div>  
          <div class="media-body" xid="mediaBody1"> 
            <h4 class="media-heading" xid="personName" style="margin-top:3px;"><![CDATA[]]></h4>  
            <p xid="signCount">
              <span xid="span1"><![CDATA[今日您已完成签到]]></span>  
              <span xid="countSpan" style="font-style:normal;font-size:x-large;" bind-text="$model.mainData.count()" />  
              <span xid="span3"><![CDATA[次]]></span>
            </p>
          </div> 
        </div></div>
      <div xid="div3">
        <div component="$UI/system/components/justep/row/row" class="x-row"
          xid="row1" style="padding-left:0;padding-right:0;"> 
          <div class="x-col x-col-center" xid="col1" style="padding:0;font-size:0.8em;">
            <img src="$UI/work/common/images/calendar.png" alt="" xid="image3"
              height="20px" style="width:20px;" align="middle"/>
            <span xid="weekSpan"></span><span xid="dateSpan"/> 
          </div>  
          <div class="x-col x-col-center" xid="col2" style="padding:0;text-align:right;font-size:0.8em;">
            <img src="$UI/work/common/images/time.png" alt="" xid="image4" height="20"
              style="width:20px;" align="middle"/>  
            <span xid="span8"><![CDATA[当前时间:]]></span>
            <span xid="timeSpan"/> 
          </div> 
        </div>  
        <div xid="baiduMap" style="height:100px;border:1px solid #dbdbdb;"></div>
  <div xid="addressDiv" style="margin-top:10px;" bind-text=' $model.statusData.val("address")'></div>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="地点微调" xid="mapBtn" style="padding-left:0px;" onClick="mapBtnClick">
   <i xid="i1"></i>
   <span xid="span2">地点微调</span></a></div>
      <div xid="div2" style="padding-top:50px;">
        <img src="$UI/work/common/images/sign.png" alt="" xid="signImage" style="display:block;margin:0 auto;width:50%;"
          bind-click="signImageClick"/>
      </div>
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="statisticsDialog" src="$UI/work/sign/process/sign/statisticsActivity.m.w" forceRefreshOnOpen="true"></span><span component="$UI/system/components/justep/windowDialog/windowDialog" xid="detailDialog"
    src="$UI/work/sign/process/sign/signDetailActivity.m.w" style="top:5px;left:69px;" onClose="detailDialogClose"/>
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="mapDialog" src="$UI/work/sign/process/sign/signMapActivity.m.w" onReceive="mapDialogReceive"></span>
  <resource xid="resource2"><require xid="require1" url="css!$UI/work/common/css/pub"></require></resource></div>
