<div 
  xmlns:xui="http://www.justep.com/xui" 
  xmlns:xu="http://www.xmldb.org/xupdate" 
  xmlns="http://www.w3.org/1999/xhtml" 
  component="$UI/system/components/justep/window/window" 
  xid="window" 
  extends="$UI/work/workTask/process/workTask/addMainTaskActivity.w" 
  __id="id_1" 
  design="device:m;" 
  class="window" >

    <div autoLoad="true" component="$UI/system/components/justep/data/baasData" idColumn="sID" onBeforeRefresh="parentDataBeforeRefresh" queryAction="querySa_task" saveAction="saveSa_task" tableName="sa_task" url="/work/workTask" xid="parentData" xui:parent="model" xui:update-mode="insert" >
<column label="sID" name="sID" type="String" xid="default13" />
<column label="sCode" name="sCode" type="String" xid="default14" />
<column label="sParentID" name="sParentID" type="String" xid="default15" />
<column label="sName" name="sName" type="String" xid="default16" />
<column label="sContent" name="sContent" type="String" xid="default17" />
<column label="sRemark" name="sRemark" type="String" xid="default18" />
<column label="sSummary" name="sSummary" type="String" xid="default19" />
<column label="sFlowID" name="sFlowID" type="String" xid="default20" />
<column label="sSourceID" name="sSourceID" type="String" xid="default21" />
<column label="sFrontID" name="sFrontID" type="String" xid="default22" />
<column label="sExecuteMode2" name="sExecuteMode2" type="String" xid="default23" />
<column label="sExecuteMode" name="sExecuteMode" type="String" xid="default24" />
<column label="sPreemptMode" name="sPreemptMode" type="String" xid="default25" />
<column label="sCatalogID" name="sCatalogID" type="String" xid="default26" />
<column label="sKindID" name="sKindID" type="String" xid="default27" />
<column label="sTypeID" name="sTypeID" type="String" xid="default28" />
<column label="sTypeName" name="sTypeName" type="String" xid="default29" />
<column label="sImportanceID" name="sImportanceID" type="String" xid="default30" />
<column label="sImportanceName" name="sImportanceName" type="String" xid="default31" />
<column label="sEmergencyID" name="sEmergencyID" type="String" xid="default32" />
<column label="sEmergencyName" name="sEmergencyName" type="String" xid="default33" />
<column label="sProcess" name="sProcess" type="String" xid="default34" />
<column label="sActivity" name="sActivity" type="String" xid="default35" />
<column label="sCURL" name="sCURL" type="String" xid="default36" />
<column label="sEURL" name="sEURL" type="String" xid="default37" />
<column label="sCreateTime" name="sCreateTime" type="DateTime" xid="default38" />
<column label="sDistributeTime" name="sDistributeTime" type="DateTime" xid="default39" />
<column label="sLastModifyTime" name="sLastModifyTime" type="DateTime" xid="default40" />
<column label="sWarningTime" name="sWarningTime" type="DateTime" xid="default41" />
<column label="sLimitTime" name="sLimitTime" type="DateTime" xid="default42" />
<column label="sExpectStartTime" name="sExpectStartTime" type="DateTime" xid="default43" />
<column label="sExpectFinishTime" name="sExpectFinishTime" type="DateTime" xid="default44" />
<column label="sActualStartTime" name="sActualStartTime" type="DateTime" xid="default45" />
<column label="sActualFinishTime" name="sActualFinishTime" type="DateTime" xid="default46" />
<column label="sExecuteTime" name="sExecuteTime" type="DateTime" xid="default47" />
<column label="sCreatorPersonID" name="sCreatorPersonID" type="String" xid="default48" />
<column label="sCreatorPersonName" name="sCreatorPersonName" type="String" xid="default49" />
<column label="sCreatorPosID" name="sCreatorPosID" type="String" xid="default50" />
<column label="sCreatorPosName" name="sCreatorPosName" type="String" xid="default51" />
<column label="sCreatorDeptID" name="sCreatorDeptID" type="String" xid="default52" />
<column label="sCreatorDeptName" name="sCreatorDeptName" type="String" xid="default53" />
<column label="sCreatorOgnID" name="sCreatorOgnID" type="String" xid="default54" />
<column label="sCreatorOgnName" name="sCreatorOgnName" type="String" xid="default55" />
<column label="sCreatorFID" name="sCreatorFID" type="String" xid="default56" />
<column label="sCreatorFName" name="sCreatorFName" type="String" xid="default57" />
<column label="sExecutorPersonID" name="sExecutorPersonID" type="String" xid="default58" />
<column label="sExecutorPersonName" name="sExecutorPersonName" type="String" xid="default59" />
<column label="sExecutorPosID" name="sExecutorPosID" type="String" xid="default60" />
<column label="sExecutorPosName" name="sExecutorPosName" type="String" xid="default61" />
<column label="sExecutorDeptID" name="sExecutorDeptID" type="String" xid="default62" />
<column label="sExecutorDeptName" name="sExecutorDeptName" type="String" xid="default63" />
<column label="sExecutorOgnID" name="sExecutorOgnID" type="String" xid="default64" />
<column label="sExecutorOgnName" name="sExecutorOgnName" type="String" xid="default65" />
<column label="sExecutorFID" name="sExecutorFID" type="String" xid="default66" />
<column label="sExecutorFName" name="sExecutorFName" type="String" xid="default67" />
<column label="sExecutorNames" name="sExecutorNames" type="String" xid="default68" />
<column label="sActivityNames" name="sActivityNames" type="String" xid="default69" />
<column label="sResponsible" name="sResponsible" type="String" xid="default70" />
<column label="sCustomerID" name="sCustomerID" type="String" xid="default71" />
<column label="ScustomerCode" name="ScustomerCode" type="String" xid="default72" />
<column label="sCustomerName" name="sCustomerName" type="String" xid="default73" />
<column label="sProjectID" name="sProjectID" type="String" xid="default74" />
<column label="sProjectCode" name="sProjectCode" type="String" xid="default75" />
<column label="sProjectName" name="sProjectName" type="String" xid="default76" />
<column label="sPlanID" name="sPlanID" type="String" xid="default77" />
<column label="sPlanCode" name="sPlanCode" type="String" xid="default78" />
<column label="sPlanName" name="sPlanName" type="String" xid="default79" />
<column label="sData1" name="sData1" type="String" xid="default80" />
<column label="sData2" name="sData2" type="String" xid="default81" />
<column label="sData3" name="sData3" type="String" xid="default82" />
<column label="sData4" name="sData4" type="String" xid="default83" />
<column label="sFake" name="sFake" type="String" xid="default84" />
<column label="sActive" name="sActive" type="String" xid="default85" />
<column label="sStatusID" name="sStatusID" type="String" xid="default86" />
<column label="sStatusName" name="sStatusName" type="String" xid="default87" />
<column label="sAIID" name="sAIID" type="String" xid="default88" />
<column label="sAIStatusID" name="sAIStatusID" type="String" xid="default89" />
<column label="sAIStatusName" name="sAIStatusName" type="String" xid="default90" />
<column label="sAIActive" name="sAIActive" type="String" xid="default91" />
<column label="sWorkTime" name="sWorkTime" type="Integer" xid="default92" />
<column label="sVersionNumber" name="sVersionNumber" type="String" xid="default93" />
<column label="sSequence" name="sSequence" type="Integer" xid="default94" />
<column label="sLock" name="sLock" type="String" xid="default95" />
<column label="sHints" name="sHints" type="String" xid="default96" />
<column label="sShortcut" name="sShortcut" type="String" xid="default97" />
<column label="sRemindMode" name="sRemindMode" type="String" xid="default98" />
<column label="version" name="version" type="Integer" xid="default99" />
<column label="sWithdraw" name="sWithdraw" type="Integer" xid="default100" />
<column label="sVariable" name="sVariable" type="String" xid="default101" />
<column label="sProcessName" name="sProcessName" type="String" xid="default102" />
<column label="sActivityName" name="sActivityName" type="String" xid="default103" />
<column label="sProcessTemplateID" name="sProcessTemplateID" type="String" xid="default104" />
<column label="sProcessTemplateItemSequence" name="sProcessTemplateItemSequence" type="String" xid="default105" />
<column label="sTempPermissionID" name="sTempPermissionID" type="String" xid="default106" />
<column label="sActivityInTemplate" name="sActivityInTemplate" type="String" xid="default107" />
<column label="sProcessTemplateID2" name="sProcessTemplateID2" type="String" xid="default108" />
<column label="sESField01" name="sESField01" type="String" xid="default109" />
<column label="sESField02" name="sESField02" type="String" xid="default110" />
<column label="sESField03" name="sESField03" type="String" xid="default111" />
<column label="sESField04" name="sESField04" type="String" xid="default112" />
<column label="sESField05" name="sESField05" type="String" xid="default113" />
<column label="sESField06" name="sESField06" type="String" xid="default114" />
<column label="sESField07" name="sESField07" type="String" xid="default115" />
<column label="sESField08" name="sESField08" type="String" xid="default116" />
<column label="sENField11" name="sENField11" type="Decimal" xid="default117" />
<column label="sENField12" name="sENField12" type="Decimal" xid="default118" />
<column label="sENField13" name="sENField13" type="Decimal" xid="default119" />
<column label="sENField14" name="sENField14" type="Decimal" xid="default120" />
<column label="sEDField21" name="sEDField21" type="DateTime" xid="default121" />
<column label="sEDField22" name="sEDField22" type="DateTime" xid="default122" />
<column label="sEDField23" name="sEDField23" type="DateTime" xid="default123" />
<column label="sEDField24" name="sEDField24" type="DateTime" xid="default124" />
<column label="sETField31" name="sETField31" type="String" xid="default125" />
<column label="sETField32" name="sETField32" type="String" xid="default126" />
<column label="sETField33" name="sETField33" type="String" xid="default127" />
<column label="sETField34" name="sETField34" type="String" xid="default128" />
<column label="sEIField41" name="sEIField41" type="Integer" xid="default129" />
<column label="sEIField42" name="sEIField42" type="Integer" xid="default130" />
<column label="sEIField43" name="sEIField43" type="Integer" xid="default131" />
<column label="sEIField44" name="sEIField44" type="Integer" xid="default256" />
<column label="sEBField51" name="sEBField51" type="String" xid="default257" />
<column label="sEBField52" name="sEBField52" type="String" xid="default258" />
<column label="sEbField53" name="sEbField53" type="String" xid="default259" />
<column label="sEBField54" name="sEBField54" type="String" xid="default260" />
</div>
   <div xid="titleBar1" title="新增子任务"  xui:update-mode="merge"/>
   <div xid="title1"  xui:update-mode="merge-and-replace">
新增子任务</div>
</div>