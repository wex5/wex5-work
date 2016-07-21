<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">
	<span component="$UI/chat/wex5/funcsDialog/funcsDialog" xid="funcsDialog" forceRefreshOnOpen="true" mode="selectFunc" onReceive="funcsDialogReceive" filter='$model.labelStr.get().indexOf($row.val("fTitle")) == -1'/>  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:3px;left:655px;" onLoad="modelLoad"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="regularData" idColumn="fID"><column label="id" name="fID" type="String" xid="xid1"></column>
  <column label="标签" name="fLabel" type="String" xid="xid2"></column>
  <column label="设备" name="fDevice" type="String" xid="xid3"></column>
  <column label="图片样式" name="fIcon" type="String" xid="xid4"></column>
  <column label="颜色" name="fColor" type="String" xid="xid5"></column>
  <column label="路径" name="fUrl" type="String" xid="xid6"></column>
  <column label="环节" name="fActivity" type="String" xid="xid7"></column>
  <data xid="default11">[{&quot;fID&quot;:&quot;1&quot;,&quot;fLabel&quot;:&quot;工作日志&quot;,&quot;fDevice&quot;:&quot;m&quot;,&quot;fIcon&quot;:&quot;icon-document-text&quot;,&quot;fColor&quot;:&quot;#00B987&quot;,&quot;fUrl&quot;:&quot;$UI/work/workLog/process/logDetail/logDetail.m.w&quot;,&quot;fActivity&quot;:&quot;mainActivity&quot;},{&quot;fID&quot;:&quot;2&quot;,&quot;fLabel&quot;:&quot;工作任务&quot;,&quot;fDevice&quot;:&quot;m&quot;,&quot;fIcon&quot;:&quot;icon-calendar&quot;,&quot;fColor&quot;:&quot;#FC3FA8&quot;,&quot;fUrl&quot;:&quot;$UI/work/workTask/process/workTask/workTaskListActivity.w&quot;,&quot;fActivity&quot;:&quot;workTaskListActivity&quot;},{&quot;fID&quot;:&quot;3&quot;,&quot;fLabel&quot;:&quot;签到&quot;,&quot;fDevice&quot;:&quot;m&quot;,&quot;fIcon&quot;:&quot;icon-android-location&quot;,&quot;fColor&quot;:&quot;#00FFFF&quot;,&quot;fUrl&quot;:&quot;$UI/work/sign/process/sign/mainActivity.m.w&quot;,&quot;fActivity&quot;:&quot;mainActivity&quot;},{&quot;fID&quot;:&quot;4&quot;,&quot;fLabel&quot;:&quot;考勤打卡&quot;,&quot;fDevice&quot;:&quot;m&quot;,&quot;fIcon&quot;:&quot;icon-compose&quot;,&quot;fColor&quot;:&quot;#3F9EFC&quot;,&quot;fUrl&quot;:&quot;$UI/work/attendance/process/attendance/attendanceActivity.m.w&quot;,&quot;fActivity&quot;:&quot;attendanceActivity&quot;}]</data></div><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="applyBizData" queryAction="queryOa_workfavorite" saveAction="saveOa_workfavorite" url="/work/workHome" tableName="oa_workfavorite" idColumn="fID" directDelete="true" confirmDelete="false" limit="20" orderBy="fLabel asc" onBeforeRefresh="applyBizDataBeforeRefresh"><column label="fID" name="fID" type="String" xid="default1"></column>
  <column label="版本" name="version" type="Integer" xid="default2"></column>
  <column label="人员ID" name="fPresonID" type="String" xid="default3"></column>
  <column label="名称" name="fLabel" type="String" xid="default4"></column>
  <column label="流程" name="fProcess" type="String" xid="default5"></column>
  <column label="环节" name="fActitvty" type="String" xid="default6"></column>
  <column label="地址" name="fUrl" type="String" xid="default7"></column>
  <column label="图标" name="fIcon" type="String" xid="default8"></column>
  <column label="图标颜色" name="fColor" type="String" xid="default9"></column>
  <column label="设备类型" name="fDevicesType" type="String" xid="default10"></column>
  </div>
  </div> 
<div xid="waitDiv" style="position:relative;height:200px;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button2" style="position:absolute;font-size:30px;top:42%;left:42%;" icon="icon-loading-a">
   <i xid="i4" class="icon-loading-a"></i>
   <span xid="span3"></span></a></div><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-content x-cards" xid="content3" style="height:100%;">
   <div xid="div6" style="margin-top:-10px;background-color:white;position:relative;" class="clearfix">
    <img alt="" xid="image6" style="width:100%;z-index:10;" src="$UI/work/workHome/process/workHome/img/workHomeBig-03.png"></img>
    <div class="img_p hide" xid="div7" style="animation-duration:1s;position:absolute;z-index:15;width:100%;">
   <p xid="p3"><![CDATA[移动IM协同App]]></p> 
    
  </div>
  <div xid="div1" style="position:absolute;z-index:15;width:100%;" class="img_p hide"><p xid="p8"><![CDATA[铛铛 – 属于开发商和企业]]></p><p xid="p4"><![CDATA[自己的移动IM协同App]]></p></div></div> 
   <div xid="div5" style="background-color:white;margin-top:-10px;" class="clearfix">
     
  <div xid="contentDiv"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row13" style="padding:0px 0px 0px 0px;margin-top:10px;background-color:white;">
   <div class="x-col col-xs-12" xid="moreBtn" style="padding:0px 0px 0px 0px;margin:3px 0px 3px 0px;background-color:white;border-bottom:1px solid #808080;"><a component="$UI/system/components/justep/button/button" class="btn btn-link pull-right btn-defult" label="编辑" xid="compileBtn" style="color:#808080;font-size:medium;" onClick="compileBtnClick" icon="dataControl dataControl-pencill">
   <i xid="i15" class="dataControl dataControl-pencill"></i>
   <span xid="span25">编辑</span></a>
  <p xid="p6"></p></div>
   </div><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="regularData" style="height:100%;padding-top:0px;background-color:white;">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" class="col-xs-4" bind-click="applyListClick" style="text-align:center;background-color:white;padding-top:10px;"><i xid="i5" bind-css=' val("fIcon")' style="font-size:28px;padding:5px 5px 5px 5px;border-radius:10px;color:#FFFFFF;height:35px;width:35px;" bind-style=' {backgroundColor:val("fColor")}'></i>
  <span xid="span4" style="color:#888888;display:block;margin-top:5px;" bind-text='val("fLabel")'></span></li></ul> </div><div component="$UI/system/components/justep/list/list" class="x-list" xid="ShowItemList" data="applyBizData" style="height:100%;padding-top:0px;background-color:white;">
     <ul class="x-list-template clearfix" xid="listTemplateUl4" style="background-color:white;padding-top:10px;">
      <li class="col-xs-4" style="text-align:center;background-color:white;padding-top:10px;" xid="applyList" bind-click="applyListClick">
       <i xid="icon" bind-css=' val("fIcon")' style="font-size:28px;padding:5px 5px 5px 5px;border-radius:10px;color:#FFFFFF;height:35px;width:35px;" bind-style=' {backgroundColor:val("fColor")}'></i><span xid="span22" style="color:#888888;display:block;margin-top:5px;" bind-text=' val("fLabel")'></span>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="removeBtn" icon="glyphicon glyphicon-remove-circle" style="position:absolute;top:-5px;right:5px;color:red;font-size:large;display:none;" onClick="removeBtnClick">
   <i xid="i1" class="glyphicon glyphicon-remove-circle"></i>
   <span xid="span2"></span></a></li> </ul> </div>
  </div>
  </div> 
    
  
  <div xid="addMoreDiv" style="background-color:white;margin-top:10px;" class="clearfix" bind-click="addMoreDivClick"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="addMoreBtn" icon="glyphicon glyphicon-menu-right" style="color:#808080;font-size:large;">
   <i xid="i16" class="glyphicon glyphicon-menu-right"></i>
   <span xid="span26"></span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="更多" xid="button1" icon="linear linear-bus" style="color:#808080;font-size:medium;">
   <i xid="i3" class="linear linear-bus"></i>
   <span xid="span1">更多</span></a></div><i xid="i2"></i>
  </div>
   </div>
  </div>