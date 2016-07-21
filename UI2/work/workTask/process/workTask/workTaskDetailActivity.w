<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;" xmlns:xui="http://www.justep.com/xui">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:249px;left:158px;height:auto;" onActive="modelActive"><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="parentData" queryAction="querySa_task" saveAction="saveSa_task" url="/work/workTask" tableName="sa_task" idColumn="sID" onBeforeRefresh="parentDataBeforeRefresh"><column label="sID" name="sID" type="String" xid="default250"></column>
  <column label="sCode" name="sCode" type="String" xid="default251"></column>
  <column label="sParentID" name="sParentID" type="String" xid="default252"></column>
  <column label="sName" name="sName" type="String" xid="default253"></column>
  <column label="sContent" name="sContent" type="String" xid="default254"></column>
  <column label="sRemark" name="sRemark" type="String" xid="default255"></column>
  <column label="sSummary" name="sSummary" type="String" xid="default256"></column>
  <column label="sFlowID" name="sFlowID" type="String" xid="default257"></column>
  <column label="sSourceID" name="sSourceID" type="String" xid="default258"></column>
  <column label="sFrontID" name="sFrontID" type="String" xid="default259"></column>
  <column label="sExecuteMode2" name="sExecuteMode2" type="String" xid="default260"></column>
  <column label="sExecuteMode" name="sExecuteMode" type="String" xid="default261"></column>
  <column label="sPreemptMode" name="sPreemptMode" type="String" xid="default262"></column>
  <column label="sCatalogID" name="sCatalogID" type="String" xid="default263"></column>
  <column label="sKindID" name="sKindID" type="String" xid="default264"></column>
  <column label="sTypeID" name="sTypeID" type="String" xid="default265"></column>
  <column label="sTypeName" name="sTypeName" type="String" xid="default266"></column>
  <column label="sImportanceID" name="sImportanceID" type="String" xid="default267"></column>
  <column label="sImportanceName" name="sImportanceName" type="String" xid="default268"></column>
  <column label="sEmergencyID" name="sEmergencyID" type="String" xid="default269"></column>
  <column label="sEmergencyName" name="sEmergencyName" type="String" xid="default270"></column>
  <column label="sProcess" name="sProcess" type="String" xid="default271"></column>
  <column label="sActivity" name="sActivity" type="String" xid="default272"></column>
  <column label="sCURL" name="sCURL" type="String" xid="default273"></column>
  <column label="sEURL" name="sEURL" type="String" xid="default274"></column>
  <column label="sCreateTime" name="sCreateTime" type="DateTime" xid="default275"></column>
  <column label="sDistributeTime" name="sDistributeTime" type="DateTime" xid="default276"></column>
  <column label="sLastModifyTime" name="sLastModifyTime" type="DateTime" xid="default277"></column>
  <column label="sWarningTime" name="sWarningTime" type="DateTime" xid="default278"></column>
  <column label="sLimitTime" name="sLimitTime" type="DateTime" xid="default279"></column>
  <column label="sExpectStartTime" name="sExpectStartTime" type="DateTime" xid="default280"></column>
  <column label="sExpectFinishTime" name="sExpectFinishTime" type="DateTime" xid="default281"></column>
  <column label="sActualStartTime" name="sActualStartTime" type="DateTime" xid="default282"></column>
  <column label="sActualFinishTime" name="sActualFinishTime" type="DateTime" xid="default283"></column>
  <column label="sExecuteTime" name="sExecuteTime" type="DateTime" xid="default284"></column>
  <column label="sCreatorPersonID" name="sCreatorPersonID" type="String" xid="default285"></column>
  <column label="sCreatorPersonName" name="sCreatorPersonName" type="String" xid="default286"></column>
  <column label="sCreatorPosID" name="sCreatorPosID" type="String" xid="default287"></column>
  <column label="sCreatorPosName" name="sCreatorPosName" type="String" xid="default288"></column>
  <column label="sCreatorDeptID" name="sCreatorDeptID" type="String" xid="default289"></column>
  <column label="sCreatorDeptName" name="sCreatorDeptName" type="String" xid="default290"></column>
  <column label="sCreatorOgnID" name="sCreatorOgnID" type="String" xid="default291"></column>
  <column label="sCreatorOgnName" name="sCreatorOgnName" type="String" xid="default292"></column>
  <column label="sCreatorFID" name="sCreatorFID" type="String" xid="default293"></column>
  <column label="sCreatorFName" name="sCreatorFName" type="String" xid="default294"></column>
  <column label="sExecutorPersonID" name="sExecutorPersonID" type="String" xid="default295"></column>
  <column label="sExecutorPersonName" name="sExecutorPersonName" type="String" xid="default296"></column>
  <column label="sExecutorPosID" name="sExecutorPosID" type="String" xid="default297"></column>
  <column label="sExecutorPosName" name="sExecutorPosName" type="String" xid="default298"></column>
  <column label="sExecutorDeptID" name="sExecutorDeptID" type="String" xid="default299"></column>
  <column label="sExecutorDeptName" name="sExecutorDeptName" type="String" xid="default300"></column>
  <column label="sExecutorOgnID" name="sExecutorOgnID" type="String" xid="default301"></column>
  <column label="sExecutorOgnName" name="sExecutorOgnName" type="String" xid="default302"></column>
  <column label="sExecutorFID" name="sExecutorFID" type="String" xid="default303"></column>
  <column label="sExecutorFName" name="sExecutorFName" type="String" xid="default304"></column>
  <column label="sExecutorNames" name="sExecutorNames" type="String" xid="default305"></column>
  <column label="sActivityNames" name="sActivityNames" type="String" xid="default306"></column>
  <column label="sResponsible" name="sResponsible" type="String" xid="default307"></column>
  <column label="sCustomerID" name="sCustomerID" type="String" xid="default308"></column>
  <column label="ScustomerCode" name="ScustomerCode" type="String" xid="default309"></column>
  <column label="sCustomerName" name="sCustomerName" type="String" xid="default310"></column>
  <column label="sProjectID" name="sProjectID" type="String" xid="default311"></column>
  <column label="sProjectCode" name="sProjectCode" type="String" xid="default312"></column>
  <column label="sProjectName" name="sProjectName" type="String" xid="default313"></column>
  <column label="sPlanID" name="sPlanID" type="String" xid="default314"></column>
  <column label="sPlanCode" name="sPlanCode" type="String" xid="default315"></column>
  <column label="sPlanName" name="sPlanName" type="String" xid="default316"></column>
  <column label="sData1" name="sData1" type="String" xid="default317"></column>
  <column label="sData2" name="sData2" type="String" xid="default318"></column>
  <column label="sData3" name="sData3" type="String" xid="default319"></column>
  <column label="sData4" name="sData4" type="String" xid="default320"></column>
  <column label="sFake" name="sFake" type="String" xid="default321"></column>
  <column label="sActive" name="sActive" type="String" xid="default322"></column>
  <column label="sStatusID" name="sStatusID" type="String" xid="default323"></column>
  <column label="sStatusName" name="sStatusName" type="String" xid="default324"></column>
  <column label="sAIID" name="sAIID" type="String" xid="default325"></column>
  <column label="sAIStatusID" name="sAIStatusID" type="String" xid="default326"></column>
  <column label="sAIStatusName" name="sAIStatusName" type="String" xid="default327"></column>
  <column label="sAIActive" name="sAIActive" type="String" xid="default328"></column>
  <column label="sWorkTime" name="sWorkTime" type="Integer" xid="default329"></column>
  <column label="sVersionNumber" name="sVersionNumber" type="String" xid="default330"></column>
  <column label="sSequence" name="sSequence" type="Integer" xid="default331"></column>
  <column label="sLock" name="sLock" type="String" xid="default332"></column>
  <column label="sHints" name="sHints" type="String" xid="default333"></column>
  <column label="sShortcut" name="sShortcut" type="String" xid="default334"></column>
  <column label="sRemindMode" name="sRemindMode" type="String" xid="default335"></column>
  <column label="version" name="version" type="Integer" xid="default336"></column>
  <column label="sWithdraw" name="sWithdraw" type="Integer" xid="default337"></column>
  <column label="sVariable" name="sVariable" type="String" xid="default338"></column>
  <column label="sProcessName" name="sProcessName" type="String" xid="default339"></column>
  <column label="sActivityName" name="sActivityName" type="String" xid="default340"></column>
  <column label="sProcessTemplateID" name="sProcessTemplateID" type="String" xid="default341"></column>
  <column label="sProcessTemplateItemSequence" name="sProcessTemplateItemSequence" type="String" xid="default342"></column>
  <column label="sTempPermissionID" name="sTempPermissionID" type="String" xid="default343"></column>
  <column label="sActivityInTemplate" name="sActivityInTemplate" type="String" xid="default344"></column>
  <column label="sProcessTemplateID2" name="sProcessTemplateID2" type="String" xid="default345"></column>
  <column label="sESField01" name="sESField01" type="String" xid="default346"></column>
  <column label="sESField02" name="sESField02" type="String" xid="default347"></column>
  <column label="sESField03" name="sESField03" type="String" xid="default348"></column>
  <column label="sESField04" name="sESField04" type="String" xid="default349"></column>
  <column label="sESField05" name="sESField05" type="String" xid="default350"></column>
  <column label="sESField06" name="sESField06" type="String" xid="default351"></column>
  <column label="sESField07" name="sESField07" type="String" xid="default352"></column>
  <column label="sESField08" name="sESField08" type="String" xid="default353"></column>
  <column label="sENField11" name="sENField11" type="Decimal" xid="default354"></column>
  <column label="sENField12" name="sENField12" type="Decimal" xid="default355"></column>
  <column label="sENField13" name="sENField13" type="Decimal" xid="default356"></column>
  <column label="sENField14" name="sENField14" type="Decimal" xid="default357"></column>
  <column label="sEDField21" name="sEDField21" type="DateTime" xid="default358"></column>
  <column label="sEDField22" name="sEDField22" type="DateTime" xid="default359"></column>
  <column label="sEDField23" name="sEDField23" type="DateTime" xid="default360"></column>
  <column label="sEDField24" name="sEDField24" type="DateTime" xid="default361"></column>
  <column label="sETField31" name="sETField31" type="String" xid="default362"></column>
  <column label="sETField32" name="sETField32" type="String" xid="default363"></column>
  <column label="sETField33" name="sETField33" type="String" xid="default364"></column>
  <column label="sETField34" name="sETField34" type="String" xid="default365"></column>
  <column label="sEIField41" name="sEIField41" type="Integer" xid="default366"></column>
  <column label="sEIField42" name="sEIField42" type="Integer" xid="default367"></column>
  <column label="sEIField43" name="sEIField43" type="Integer" xid="default368"></column>
  <column label="sEIField44" name="sEIField44" type="Integer" xid="default369"></column>
  <column label="sEBField51" name="sEBField51" type="String" xid="default370"></column>
  <column label="sEBField52" name="sEBField52" type="String" xid="default371"></column>
  <column label="sEbField53" name="sEbField53" type="String" xid="default372"></column>
  <column label="sEBField54" name="sEBField54" type="String" xid="default373"></column>
  <rule xid="rule1">
   <col name="version" xid="ruleCol1">
    <calculate xid="calculate1">
     <expr xid="default126">1</expr></calculate> </col> </rule></div><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="mainData" queryAction="querySa_task" saveAction="saveSa_task" url="/work/workTask" tableName="sa_task" idColumn="sID" orderBy="sStatusName:desc,sCreateTime:asc" limit="20"><column label="sID" name="sID" type="String" xid="default1"></column>
  <column label="sCode" name="sCode" type="String" xid="default2"></column>
  <column label="sParentID" name="sParentID" type="String" xid="default3"></column>
  <column label="sName" name="sName" type="String" xid="default4"></column>
  <column label="sContent" name="sContent" type="String" xid="default5"></column>
  <column label="sRemark" name="sRemark" type="String" xid="default6"></column>
  <column label="sSummary" name="sSummary" type="String" xid="default7"></column>
  <column label="sFlowID" name="sFlowID" type="String" xid="default8"></column>
  <column label="sSourceID" name="sSourceID" type="String" xid="default9"></column>
  <column label="sFrontID" name="sFrontID" type="String" xid="default10"></column>
  <column label="sExecuteMode2" name="sExecuteMode2" type="String" xid="default11"></column>
  <column label="sExecuteMode" name="sExecuteMode" type="String" xid="default12"></column>
  <column label="sPreemptMode" name="sPreemptMode" type="String" xid="default13"></column>
  <column label="sCatalogID" name="sCatalogID" type="String" xid="default14"></column>
  <column label="sKindID" name="sKindID" type="String" xid="default15"></column>
  <column label="sTypeID" name="sTypeID" type="String" xid="default16"></column>
  <column label="sTypeName" name="sTypeName" type="String" xid="default17"></column>
  <column label="sImportanceID" name="sImportanceID" type="String" xid="default18"></column>
  <column label="sImportanceName" name="sImportanceName" type="String" xid="default19"></column>
  <column label="sEmergencyID" name="sEmergencyID" type="String" xid="default20"></column>
  <column label="sEmergencyName" name="sEmergencyName" type="String" xid="default21"></column>
  <column label="sProcess" name="sProcess" type="String" xid="default22"></column>
  <column label="sActivity" name="sActivity" type="String" xid="default23"></column>
  <column label="sCURL" name="sCURL" type="String" xid="default24"></column>
  <column label="sEURL" name="sEURL" type="String" xid="default25"></column>
  <column label="sCreateTime" name="sCreateTime" type="DateTime" xid="default26"></column>
  <column label="sDistributeTime" name="sDistributeTime" type="DateTime" xid="default27"></column>
  <column label="sLastModifyTime" name="sLastModifyTime" type="DateTime" xid="default28"></column>
  <column label="sWarningTime" name="sWarningTime" type="DateTime" xid="default29"></column>
  <column label="sLimitTime" name="sLimitTime" type="DateTime" xid="default30"></column>
  <column label="sExpectStartTime" name="sExpectStartTime" type="DateTime" xid="default31"></column>
  <column label="sExpectFinishTime" name="sExpectFinishTime" type="DateTime" xid="default32"></column>
  <column label="sActualStartTime" name="sActualStartTime" type="DateTime" xid="default33"></column>
  <column label="sActualFinishTime" name="sActualFinishTime" type="DateTime" xid="default34"></column>
  <column label="sExecuteTime" name="sExecuteTime" type="DateTime" xid="default35"></column>
  <column label="sCreatorPersonID" name="sCreatorPersonID" type="String" xid="default36"></column>
  <column label="sCreatorPersonName" name="sCreatorPersonName" type="String" xid="default37"></column>
  <column label="sCreatorPosID" name="sCreatorPosID" type="String" xid="default38"></column>
  <column label="sCreatorPosName" name="sCreatorPosName" type="String" xid="default39"></column>
  <column label="sCreatorDeptID" name="sCreatorDeptID" type="String" xid="default40"></column>
  <column label="sCreatorDeptName" name="sCreatorDeptName" type="String" xid="default41"></column>
  <column label="sCreatorOgnID" name="sCreatorOgnID" type="String" xid="default42"></column>
  <column label="sCreatorOgnName" name="sCreatorOgnName" type="String" xid="default43"></column>
  <column label="sCreatorFID" name="sCreatorFID" type="String" xid="default44"></column>
  <column label="sCreatorFName" name="sCreatorFName" type="String" xid="default45"></column>
  <column label="sExecutorPersonID" name="sExecutorPersonID" type="String" xid="default46"></column>
  <column label="sExecutorPersonName" name="sExecutorPersonName" type="String" xid="default47"></column>
  <column label="sExecutorPosID" name="sExecutorPosID" type="String" xid="default48"></column>
  <column label="sExecutorPosName" name="sExecutorPosName" type="String" xid="default49"></column>
  <column label="sExecutorDeptID" name="sExecutorDeptID" type="String" xid="default50"></column>
  <column label="sExecutorDeptName" name="sExecutorDeptName" type="String" xid="default51"></column>
  <column label="sExecutorOgnID" name="sExecutorOgnID" type="String" xid="default52"></column>
  <column label="sExecutorOgnName" name="sExecutorOgnName" type="String" xid="default53"></column>
  <column label="sExecutorFID" name="sExecutorFID" type="String" xid="default54"></column>
  <column label="sExecutorFName" name="sExecutorFName" type="String" xid="default55"></column>
  <column label="sExecutorNames" name="sExecutorNames" type="String" xid="default56"></column>
  <column label="sActivityNames" name="sActivityNames" type="String" xid="default57"></column>
  <column label="sResponsible" name="sResponsible" type="String" xid="default58"></column>
  <column label="sCustomerID" name="sCustomerID" type="String" xid="default59"></column>
  <column label="ScustomerCode" name="ScustomerCode" type="String" xid="default60"></column>
  <column label="sCustomerName" name="sCustomerName" type="String" xid="default61"></column>
  <column label="sProjectID" name="sProjectID" type="String" xid="default62"></column>
  <column label="sProjectCode" name="sProjectCode" type="String" xid="default63"></column>
  <column label="sProjectName" name="sProjectName" type="String" xid="default64"></column>
  <column label="sPlanID" name="sPlanID" type="String" xid="default65"></column>
  <column label="sPlanCode" name="sPlanCode" type="String" xid="default66"></column>
  <column label="sPlanName" name="sPlanName" type="String" xid="default67"></column>
  <column label="sData1" name="sData1" type="String" xid="default68"></column>
  <column label="sData2" name="sData2" type="String" xid="default69"></column>
  <column label="sData3" name="sData3" type="String" xid="default70"></column>
  <column label="sData4" name="sData4" type="String" xid="default71"></column>
  <column label="sFake" name="sFake" type="String" xid="default72"></column>
  <column label="sActive" name="sActive" type="String" xid="default73"></column>
  <column label="sStatusID" name="sStatusID" type="String" xid="default74"></column>
  <column label="sStatusName" name="sStatusName" type="String" xid="default75"></column>
  <column label="sAIID" name="sAIID" type="String" xid="default76"></column>
  <column label="sAIStatusID" name="sAIStatusID" type="String" xid="default77"></column>
  <column label="sAIStatusName" name="sAIStatusName" type="String" xid="default78"></column>
  <column label="sAIActive" name="sAIActive" type="String" xid="default79"></column>
  <column label="sWorkTime" name="sWorkTime" type="Integer" xid="default80"></column>
  <column label="sVersionNumber" name="sVersionNumber" type="String" xid="default81"></column>
  <column label="sSequence" name="sSequence" type="Integer" xid="default82"></column>
  <column label="sLock" name="sLock" type="String" xid="default83"></column>
  <column label="sHints" name="sHints" type="String" xid="default84"></column>
  <column label="sShortcut" name="sShortcut" type="String" xid="default85"></column>
  <column label="sRemindMode" name="sRemindMode" type="String" xid="default86"></column>
  <column label="version" name="version" type="Integer" xid="default87"></column>
  <column label="sWithdraw" name="sWithdraw" type="Integer" xid="default88"></column>
  <column label="sVariable" name="sVariable" type="String" xid="default89"></column>
  <column label="sProcessName" name="sProcessName" type="String" xid="default90"></column>
  <column label="sActivityName" name="sActivityName" type="String" xid="default91"></column>
  <column label="sProcessTemplateID" name="sProcessTemplateID" type="String" xid="default92"></column>
  <column label="sProcessTemplateItemSequence" name="sProcessTemplateItemSequence" type="String" xid="default93"></column>
  <column label="sTempPermissionID" name="sTempPermissionID" type="String" xid="default94"></column>
  <column label="sActivityInTemplate" name="sActivityInTemplate" type="String" xid="default95"></column>
  <column label="sProcessTemplateID2" name="sProcessTemplateID2" type="String" xid="default96"></column>
  <column label="sESField01" name="sESField01" type="String" xid="default97"></column>
  <column label="sESField02" name="sESField02" type="String" xid="default98"></column>
  <column label="sESField03" name="sESField03" type="String" xid="default99"></column>
  <column label="sESField04" name="sESField04" type="String" xid="default100"></column>
  <column label="sESField05" name="sESField05" type="String" xid="default101"></column>
  <column label="sESField06" name="sESField06" type="String" xid="default102"></column>
  <column label="sESField07" name="sESField07" type="String" xid="default103"></column>
  <column label="sESField08" name="sESField08" type="String" xid="default104"></column>
  <column label="sENField11" name="sENField11" type="Decimal" xid="default105"></column>
  <column label="sENField12" name="sENField12" type="Decimal" xid="default106"></column>
  <column label="sENField13" name="sENField13" type="Decimal" xid="default107"></column>
  <column label="sENField14" name="sENField14" type="Decimal" xid="default108"></column>
  <column label="sEDField21" name="sEDField21" type="DateTime" xid="default109"></column>
  <column label="sEDField22" name="sEDField22" type="DateTime" xid="default110"></column>
  <column label="sEDField23" name="sEDField23" type="DateTime" xid="default111"></column>
  <column label="sEDField24" name="sEDField24" type="DateTime" xid="default112"></column>
  <column label="sETField31" name="sETField31" type="String" xid="default113"></column>
  <column label="sETField32" name="sETField32" type="String" xid="default114"></column>
  <column label="sETField33" name="sETField33" type="String" xid="default115"></column>
  <column label="sETField34" name="sETField34" type="String" xid="default116"></column>
  <column label="sEIField41" name="sEIField41" type="Integer" xid="default117"></column>
  <column label="sEIField42" name="sEIField42" type="Integer" xid="default118"></column>
  <column label="sEIField43" name="sEIField43" type="Integer" xid="default119"></column>
  <column label="sEIField44" name="sEIField44" type="Integer" xid="default120"></column>
  <column label="sEBField51" name="sEBField51" type="String" xid="default121"></column>
  <column label="sEBField52" name="sEBField52" type="String" xid="default122"></column>
  <column label="sEbField53" name="sEbField53" type="String" xid="default123"></column>
  <column label="sEBField54" name="sEBField54" type="String" xid="default124"></column>
  <master xid="default125" data="parentData" relation="sParentID"></master>
  <rule xid="rule2">
   <col name="version" xid="ruleCol2">
    <calculate xid="calculate2">
     <expr xid="default127">1</expr></calculate> </col> </rule></div>
  </div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="任务详情">
     <div class="x-titlebar-left" xid="left1">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button2" icon="icon-chevron-left" onClick='{"operation":"window.close"}'>
       <i xid="i2" class="icon-chevron-left"></i>
       <span xid="span2"></span></a> </div> 
     <div class="x-titlebar-title" xid="title1">任务详情</div>
     <div class="x-titlebar-right reverse" xid="right1">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="查看" xid="editBtn" onClick="editBtnClick" style="font-size:0.9em;">
   <i xid="i1"></i>
   <span xid="span1">查看</span></a></div> </div> </div> 
   <div class="x-panel-content x-cards" xid="content1">
    <div class="x-row nopm" component="$UI/system/components/justep/row/row" style="padding-left:10px;" xid="row11" xui:before="showList" xui:parent="content1" xui:update-mode="insert">
   <div class="x-col nopm" xid="col11">
     
     <div class="x-list" component="$UI/system/components/justep/list/list" data="parentData" limit="1" xid="list11">
       <ul class="x-list-template" xid="listTemplateUl11">
        <li xid="li11">
          <div class="x-row" component="$UI/system/components/justep/row/row" style="border-bottom:1px solid #ddd;" xid="row21">
     <div class="x-col x-col-fixed" style="width:auto;" xid="col41">
       <div class="photoDiv" xid="div11" xui:parent="col1" xui:update-mode="insert">
          <span bind-text=' $object.val("sCreatorPersonName").slice(-2)' xid="span31"></span></div></div> 
     <div class="x-col x-col-center" xid="col511">
      <span bind-text='val("sCreatorPersonName")' xid="span11"></span></div> </div><div class="x-row" component="$UI/system/components/justep/row/row" xid="row31" style="margin-top:10px;">
     <div class="x-col" xid="col71">
      <p style="font-weight:bold;" xid="p11" bind-text=' val("sName")'></p>
      <span style="color:#aaa;" xid="span21" bind-text='"负责人：" +  val("sESField02")'></span></div> </div></li> </ul> </div></div> </div>
  <div component="$UI/system/components/justep/contents/contents" class="x-contents" active="0" xid="contents1" style="height:69%;">
   <div class="x-contents-content  x-scroll-view" xid="content2"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i4"></i>
    <span class="x-pull-down-label" xid="span5">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2"><div component="$UI/system/components/justep/list/list" class="x-list" xid="showList" data="mainData">
     <ul class="x-list-template" xid="listTemplateUl1">
      <li xid="li1">
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
        <div class="x-col x-col-fixed" xid="col1" style="width:auto;"><span checkedValue="完成" class="x-checkbox" component="$UI/system/components/justep/button/checkbox" uncheckedValue="未完成" xid="childBtn" xui:parent="col1" xui:update-mode="insert" bind-ref='ref("sStatusName")' bind-click="childBtnClick"></span></div>
        <div class="x-col x-col-fixed x-col-center" xid="col2" style="width:auto;" bind-click="showListClick"><span bind-text='val("sName")' xid="span12" xui:parent="col2" xui:update-mode="insert"></span></div>
        <div class="x-col x-col-center" xid="col3" bind-click="showListClick"><span bind-text='val("sESField02")' xid="span13" xui:parent="col3" xui:update-mode="insert" class="detailSpan" style="border-right:1px solid #aaa;padding-right:10px;margin-right:10px;"></span>
  <span bind-text='" 状态："+val("sStatusName")' xid="span4" xui:parent="col3" xui:update-mode="insert" class="detailSpan"></span></div></div> </li> </ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span6">加载更多...</span></div> </div></div></div></div> 
   <div class="x-panel-bottom" xid="bottom1"><div class="btn-group x-card btn-group-justified" component="$UI/system/components/justep/button/buttonGroup" tabbed="false" xid="buttonGroup11" xui:parent="bottom1" xui:update-mode="insert">
   <a bind-click="addChildBtnClick" class="btn btn-default btn-icon-left" component="$UI/system/components/justep/button/button" icon="icon-plus-round" label="添加子任务" xid="addChildBtn">
    <i class="icon-plus-round" xid="i31"></i>
    <span xid="span41">添加子任务</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-left" label="接受任务" xid="acceptBtn" bind-visible='$model.comp("parentData").getValueByID("sStatusName",$model.params.fID) == "未确认"' onClick="acceptBtnClick" icon="icon-android-calendar">
   <i xid="i3" class="icon-android-calendar"></i>
   <span xid="span3">接受任务</span></a><a bind-click="accomBtnClick" class="btn btn-default btn-icon-left" component="$UI/system/components/justep/button/button" icon="linear linear-bubble" label="完成任务" xid="accomBtn">
    <i class="linear linear-bubble" xid="i41"></i>
    <span xid="span51">完成任务</span></a> 
  </div></div></div>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog"></span>
  <resource xid="resource2"><require xid="require1" url="css!$UI/work/common/css/pub"></require></resource></div>