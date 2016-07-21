<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;" xmlns:xui="http://www.justep.com/xui">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:49px;left:71px;" onActive="modelActive"><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="mainData" queryAction="querySa_PaChild" saveAction="saveSa_task" url="/work/workTask" tableName="sa_task" idColumn="sID" orderBy="sStatusName:desc,sCreateTime:asc" limit="20" onBeforeRefresh="mainDataBeforeRefresh"><column label="sID" name="sID" type="String" xid="default138"></column>
  <column label="sCode" name="sCode" type="String" xid="default139"></column>
  <column label="sParentID" name="sParentID" type="String" xid="default140"></column>
  <column label="sName" name="sName" type="String" xid="default141"></column>
  <column label="sContent" name="sContent" type="String" xid="default142"></column>
  <column label="sRemark" name="sRemark" type="String" xid="default143"></column>
  <column label="sSummary" name="sSummary" type="String" xid="default144"></column>
  <column label="sFlowID" name="sFlowID" type="String" xid="default145"></column>
  <column label="sSourceID" name="sSourceID" type="String" xid="default146"></column>
  <column label="sFrontID" name="sFrontID" type="String" xid="default147"></column>
  <column label="sExecuteMode2" name="sExecuteMode2" type="String" xid="default148"></column>
  <column label="sExecuteMode" name="sExecuteMode" type="String" xid="default149"></column>
  <column label="sPreemptMode" name="sPreemptMode" type="String" xid="default150"></column>
  <column label="sCatalogID" name="sCatalogID" type="String" xid="default151"></column>
  <column label="sKindID" name="sKindID" type="String" xid="default152"></column>
  <column label="sTypeID" name="sTypeID" type="String" xid="default153"></column>
  <column label="sTypeName" name="sTypeName" type="String" xid="default154"></column>
  <column label="sImportanceID" name="sImportanceID" type="String" xid="default155"></column>
  <column label="sImportanceName" name="sImportanceName" type="String" xid="default156"></column>
  <column label="sEmergencyID" name="sEmergencyID" type="String" xid="default157"></column>
  <column label="sEmergencyName" name="sEmergencyName" type="String" xid="default158"></column>
  <column label="sProcess" name="sProcess" type="String" xid="default159"></column>
  <column label="sActivity" name="sActivity" type="String" xid="default160"></column>
  <column label="sCURL" name="sCURL" type="String" xid="default161"></column>
  <column label="sEURL" name="sEURL" type="String" xid="default162"></column>
  <column label="sCreateTime" name="sCreateTime" type="DateTime" xid="default163"></column>
  <column label="sDistributeTime" name="sDistributeTime" type="DateTime" xid="default164"></column>
  <column label="sLastModifyTime" name="sLastModifyTime" type="DateTime" xid="default165"></column>
  <column label="sWarningTime" name="sWarningTime" type="DateTime" xid="default166"></column>
  <column label="sLimitTime" name="sLimitTime" type="DateTime" xid="default167"></column>
  <column label="sExpectStartTime" name="sExpectStartTime" type="DateTime" xid="default168"></column>
  <column label="sExpectFinishTime" name="sExpectFinishTime" type="DateTime" xid="default169"></column>
  <column label="sActualStartTime" name="sActualStartTime" type="DateTime" xid="default170"></column>
  <column label="sActualFinishTime" name="sActualFinishTime" type="DateTime" xid="default171"></column>
  <column label="sExecuteTime" name="sExecuteTime" type="DateTime" xid="default172"></column>
  <column label="sCreatorPersonID" name="sCreatorPersonID" type="String" xid="default173"></column>
  <column label="sCreatorPersonName" name="sCreatorPersonName" type="String" xid="default174"></column>
  <column label="sCreatorPosID" name="sCreatorPosID" type="String" xid="default175"></column>
  <column label="sCreatorPosName" name="sCreatorPosName" type="String" xid="default176"></column>
  <column label="sCreatorDeptID" name="sCreatorDeptID" type="String" xid="default177"></column>
  <column label="sCreatorDeptName" name="sCreatorDeptName" type="String" xid="default178"></column>
  <column label="sCreatorOgnID" name="sCreatorOgnID" type="String" xid="default179"></column>
  <column label="sCreatorOgnName" name="sCreatorOgnName" type="String" xid="default180"></column>
  <column label="sCreatorFID" name="sCreatorFID" type="String" xid="default181"></column>
  <column label="sCreatorFName" name="sCreatorFName" type="String" xid="default182"></column>
  <column label="sExecutorPersonID" name="sExecutorPersonID" type="String" xid="default183"></column>
  <column label="sExecutorPersonName" name="sExecutorPersonName" type="String" xid="default184"></column>
  <column label="sExecutorPosID" name="sExecutorPosID" type="String" xid="default185"></column>
  <column label="sExecutorPosName" name="sExecutorPosName" type="String" xid="default186"></column>
  <column label="sExecutorDeptID" name="sExecutorDeptID" type="String" xid="default187"></column>
  <column label="sExecutorDeptName" name="sExecutorDeptName" type="String" xid="default188"></column>
  <column label="sExecutorOgnID" name="sExecutorOgnID" type="String" xid="default189"></column>
  <column label="sExecutorOgnName" name="sExecutorOgnName" type="String" xid="default190"></column>
  <column label="sExecutorFID" name="sExecutorFID" type="String" xid="default191"></column>
  <column label="sExecutorFName" name="sExecutorFName" type="String" xid="default192"></column>
  <column label="sExecutorNames" name="sExecutorNames" type="String" xid="default193"></column>
  <column label="sActivityNames" name="sActivityNames" type="String" xid="default194"></column>
  <column label="sResponsible" name="sResponsible" type="String" xid="default195"></column>
  <column label="sCustomerID" name="sCustomerID" type="String" xid="default196"></column>
  <column label="ScustomerCode" name="ScustomerCode" type="String" xid="default197"></column>
  <column label="sCustomerName" name="sCustomerName" type="String" xid="default198"></column>
  <column label="sProjectID" name="sProjectID" type="String" xid="default199"></column>
  <column label="sProjectCode" name="sProjectCode" type="String" xid="default200"></column>
  <column label="sProjectName" name="sProjectName" type="String" xid="default201"></column>
  <column label="sPlanID" name="sPlanID" type="String" xid="default202"></column>
  <column label="sPlanCode" name="sPlanCode" type="String" xid="default203"></column>
  <column label="sPlanName" name="sPlanName" type="String" xid="default204"></column>
  <column label="sData1" name="sData1" type="String" xid="default205"></column>
  <column label="sData2" name="sData2" type="String" xid="default206"></column>
  <column label="sData3" name="sData3" type="String" xid="default207"></column>
  <column label="sData4" name="sData4" type="String" xid="default208"></column>
  <column label="sFake" name="sFake" type="String" xid="default209"></column>
  <column label="sActive" name="sActive" type="String" xid="default210"></column>
  <column label="sStatusID" name="sStatusID" type="String" xid="default211"></column>
  <column label="sStatusName" name="sStatusName" type="String" xid="default212"></column>
  <column label="sAIID" name="sAIID" type="String" xid="default213"></column>
  <column label="sAIStatusID" name="sAIStatusID" type="String" xid="default214"></column>
  <column label="sAIStatusName" name="sAIStatusName" type="String" xid="default215"></column>
  <column label="sAIActive" name="sAIActive" type="String" xid="default216"></column>
  <column label="sWorkTime" name="sWorkTime" type="Integer" xid="default217"></column>
  <column label="sVersionNumber" name="sVersionNumber" type="String" xid="default218"></column>
  <column label="sSequence" name="sSequence" type="Integer" xid="default219"></column>
  <column label="sLock" name="sLock" type="String" xid="default220"></column>
  <column label="sHints" name="sHints" type="String" xid="default221"></column>
  <column label="sShortcut" name="sShortcut" type="String" xid="default222"></column>
  <column label="sRemindMode" name="sRemindMode" type="String" xid="default223"></column>
  <column label="version" name="version" type="Integer" xid="default224"></column>
  <column label="sWithdraw" name="sWithdraw" type="Integer" xid="default225"></column>
  <column label="sVariable" name="sVariable" type="String" xid="default226"></column>
  <column label="sProcessName" name="sProcessName" type="String" xid="default227"></column>
  <column label="sActivityName" name="sActivityName" type="String" xid="default228"></column>
  <column label="sProcessTemplateID" name="sProcessTemplateID" type="String" xid="default229"></column>
  <column label="sProcessTemplateItemSequence" name="sProcessTemplateItemSequence" type="String" xid="default230"></column>
  <column label="sTempPermissionID" name="sTempPermissionID" type="String" xid="default231"></column>
  <column label="sActivityInTemplate" name="sActivityInTemplate" type="String" xid="default232"></column>
  <column label="sProcessTemplateID2" name="sProcessTemplateID2" type="String" xid="default233"></column>
  <column label="sESField01" name="sESField01" type="String" xid="default234"></column>
  <column label="sESField02" name="sESField02" type="String" xid="default235"></column>
  <column label="sESField03" name="sESField03" type="String" xid="default236"></column>
  <column label="sESField04" name="sESField04" type="String" xid="default237"></column>
  <column label="sESField05" name="sESField05" type="String" xid="default238"></column>
  <column label="sESField06" name="sESField06" type="String" xid="default239"></column>
  <column label="sESField07" name="sESField07" type="String" xid="default240"></column>
  <column label="sESField08" name="sESField08" type="String" xid="default241"></column>
  <column label="sENField11" name="sENField11" type="Decimal" xid="default242"></column>
  <column label="sENField12" name="sENField12" type="Decimal" xid="default243"></column>
  <column label="sENField13" name="sENField13" type="Decimal" xid="default244"></column>
  <column label="sENField14" name="sENField14" type="Decimal" xid="default245"></column>
  <column label="sEDField21" name="sEDField21" type="DateTime" xid="default246"></column>
  <column label="sEDField22" name="sEDField22" type="DateTime" xid="default247"></column>
  <column label="sEDField23" name="sEDField23" type="DateTime" xid="default248"></column>
  <column label="sEDField24" name="sEDField24" type="DateTime" xid="default249"></column>
  <column label="sETField31" name="sETField31" type="String" xid="default250"></column>
  <column label="sETField32" name="sETField32" type="String" xid="default251"></column>
  <column label="sETField33" name="sETField33" type="String" xid="default252"></column>
  <column label="sETField34" name="sETField34" type="String" xid="default253"></column>
  <column label="sEIField41" name="sEIField41" type="Integer" xid="default254"></column>
  <column label="sEIField42" name="sEIField42" type="Integer" xid="default255"></column>
  <column label="sEIField43" name="sEIField43" type="Integer" xid="default256"></column>
  <column label="sEIField44" name="sEIField44" type="Integer" xid="default257"></column>
  <column label="sEBField51" name="sEBField51" type="String" xid="default258"></column>
  <column label="sEBField52" name="sEBField52" type="String" xid="default259"></column>
  <column label="sEbField53" name="sEbField53" type="String" xid="default260"></column>
  <column label="sEBField54" name="sEBField54" type="String" xid="default261"></column>
  <column label="子任务数量" name="countChild" type="String" xid="xid1"></column></div>
  </div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="工作任务">
   <div class="x-titlebar-left" xid="left1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button2" icon="icon-chevron-left" onClick='{"operation":"window.close"}'>
   <i xid="i2" class="icon-chevron-left"></i>
   <span xid="span2"></span></a></div>
   <div class="x-titlebar-title" xid="title1">工作任务</div>
   <div class="x-titlebar-right reverse" xid="right1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="AddBtn" icon="linear linear-bus" bind-click="AddBtnClick">
   <i xid="i1" class="linear linear-bus"></i>
   <span xid="span1"></span></a></div></div></div>
   <div class="x-panel-content x-cards" xid="content1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="outTaskRow" bind-click="outTaskRowClick">
   <div class="x-col x-col-center" xid="col3"><span xid="span8" style="font-size:1.3em;"><![CDATA[发布的任务]]></span></div>
   <div class="x-col x-col-fixed" xid="col5" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button1" icon="icon-chevron-right">
   <i xid="i3" class="icon-chevron-right"></i>
   <span xid="span7"></span></a></div>
   </div><span xid="span5" class="accd"><![CDATA[收到的任务]]></span>
  <div component="$UI/system/components/justep/contents/contents" class="x-contents" active="0" xid="contents1" style="height:83%;">
   <div class="x-contents-content x-scroll-view" xid="content2"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i4"></i>
    <span class="x-pull-down-label" xid="span10">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2"><div component="$UI/system/components/justep/list/list" class="x-list" xid="showList" data="mainData" bind-click="showListClick" style="margin-top:15px;">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col x-col-fixed x-col-center" xid="col1" style="width:auto;"><div class="photoDiv" xid="div11" xui:parent="col1" xui:update-mode="insert">
   <span xid="span311" bind-text='$object.val("sCreatorPersonName").slice(-2)'></span></div></div>
   <div class="x-col" xid="col2" style="border-bottom:1px solid #ddd;padding:0;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col4" style="font-weight:bold;"><span xid="span3" bind-text='val("sName")' bind-style='val("fUrgency") == "紧急"?({color:"red"}):""'></span></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col7" style="color:#aaa;font-size:0.7em;"><span xid="span4" bind-text='val("sLimitTime")?"截止日期："+justep.Date.toString(val("sLimitTime"),"yyyy年MM月dd日"):"无截止日期"' style="padding-right:10px;"></span>
  <span xid="span9" style="border-left:1px solid #aaa;padding-left:10px;" bind-visible=' val("countChild") != 0' bind-text='val("countChild") != 0 ?val("countChild") + "个子任务":""'><![CDATA[]]></span></div>
   </div>
  </div>
   <div class="x-col x-col-fixed statusCol" xid="col9" style="width:auto;border-bottom:1px solid #ddd;font-size:1.2em;"><span xid="span6" bind-text='val("sStatusName")' bind-style="{color: val(&quot;sStatusName&quot;)=='未确认'?'red':(val(&quot;sStatusName&quot;)==&quot;完成&quot;?'green':'')}" style="display:block;"></span>
  </div></div></li></ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span11">加载更多...</span></div> </div></div></div></div>
   </div>
  <resource xid="resource2"><require xid="require1" url="css!$UI/work/common/css/pub"></require></resource></div>