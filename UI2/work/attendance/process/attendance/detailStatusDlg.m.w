<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:267px;left:50px;height:auto;" onParamsReceive="modelParamsReceive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="detailStatusDlgData" idColumn="fID" limit="-1">
   <column label="ID" name="fID" type="String" xid="xid2"></column>
   <data xid="default3">[]</data>
   <column label="组织ID" name="fOrgID" type="String" xid="xid26"></column>
   <column label="组织名称" name="fOrgName" type="String" xid="xid27"></column>
   <column label="部门ID" name="fDeptID" type="String" xid="xid28"></column>
   <column label="部门名称" name="fDeptName" type="String" xid="xid29"></column>
   <column label="人员ID" name="fPersonID" type="String" xid="xid30"></column>
   <column label="人员名称" name="fPersonName" type="String" xid="xid31"></column>
   <column label="状态名" name="fStatus" type="String" xid="xid32"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="detailTitleBar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title"></div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content x-cards" xid="content1" style="padding-top:0;"><div component="$UI/system/components/justep/list/list" class="x-list" xid="attenStatusList" data="detailStatusDlgData" style="background-color:white;" filter='$row.val("fStatus") == $model.status.get()'>
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="margin-left:15px;width:auto;border-bottom:1px solid #ddd;">
   <div class="x-col x-col-fixed x-col-center" xid="col1" style="width:auto;"><div xid="div1" class="photoDiv"><span xid="span1" bind-text='val("fPersonName").slice(-2)'></span></div></div>
   <div class="x-col x-col-center" xid="col2"><h4 xid="h41" bind-text='val("fPersonName")' style="color:#000;"><![CDATA[]]></h4></div>
   </div></li></ul> </div>
  </div>
  </div> 
<resource xid="resource2"><require xid="require1" url="css!$UI/work/common/css/pub"></require></resource></div>