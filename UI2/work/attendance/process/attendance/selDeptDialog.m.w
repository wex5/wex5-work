<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:116px;left:16px;height:auto;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="deptStatusDialogData" idColumn="fID" onCustomRefresh="deptStatusDataCustomRefresh" limit="-1">
   <column name="fID" type="String" xid="xid17"></column>
   <column label="组织ID" name="fOrgID" type="String" xid="xid18"></column>
   <column label="组织名称" name="fOrgName" type="String" xid="xid19"></column>
   <column label="部门ID" name="fDeptID" type="String" xid="xid20"></column>
   <column label="部门名称" name="fDeptName" type="String" xid="xid21"></column>
   <column label="应到" name="fOrgPersonCount" type="String" xid="xid22"></column>
   <column label="实到" name="fActualPersonCount" type="String" xid="xid23"></column></div></div> 
<div component="$UI/system/components/justep/list/list" class="x-list" xid="dialogDeptList" data="deptStatusDialogData" bind-click="dialogDeptListClick">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" style="border-bottom:1px solid #ddd;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col1" bind-text=' val("fDeptName")'></div>
   <div class="x-col x-col-fixed" xid="col2" bind-text='"应到：" +  val("fOrgPersonCount")' style="width:30%;"></div>
   <div class="x-col x-col-fixed" xid="col3" bind-text='"实到：" +  val("fActualPersonCount")' style="width:30%;"></div>
  </div></li></ul> </div></div>