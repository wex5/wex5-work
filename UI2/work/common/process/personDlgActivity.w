<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:303px;left:215px;height:auto;" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="personData" queryAction="querySa_oporg" saveAction="saveSa_oporg" url="/work/org" tableName="sa_oporg" idColumn="sID" isTree="true" limit="20" orderBy="sOrgKindID:asc"><column label="sID" name="sID" type="String" xid="default1"></column>
  <column label="sName" name="sName" type="String" xid="default2"></column>
  <column label="sCode" name="sCode" type="String" xid="default3"></column>
  <column label="sLongName" name="sLongName" type="String" xid="default4"></column>
  <column label="sFName" name="sFName" type="String" xid="default5"></column>
  <column label="sFCode" name="sFCode" type="String" xid="default6"></column>
  <column label="sFID" name="sFID" type="String" xid="default7"></column>
  <column label="sOrgKindID" name="sOrgKindID" type="String" xid="default8"></column>
  <column label="sSequence" name="sSequence" type="String" xid="default9"></column>
  <column label="sValidState" name="sValidState" type="Integer" xid="default10"></column>
  <column label="sParent" name="sParent" type="String" xid="default11"></column>
  <column label="sLevel" name="sLevel" type="Integer" xid="default12"></column>
  <column label="sPhone" name="sPhone" type="String" xid="default13"></column>
  <column label="sFax" name="sFax" type="String" xid="default14"></column>
  <column label="sAddress" name="sAddress" type="String" xid="default15"></column>
  <column label="sZip" name="sZip" type="String" xid="default16"></column>
  <column label="sDescription" name="sDescription" type="String" xid="default17"></column>
  <column label="sPersonID" name="sPersonID" type="String" xid="default18"></column>
  <column label="sNodeKind" name="sNodeKind" type="String" xid="default19"></column>
  <column label="sWxDeptID" name="sWxDeptID" type="Integer" xid="default20"></column>
  <column label="version" name="version" type="Integer" xid="default21"></column>
  <treeOption xid="default22" parentRelation="sParent"></treeOption>
  </div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="saveData" idColumn="sPersonID" confirmDelete="false"><column label="人员ID" name="sPersonID" type="String" xid="xid3"></column>
  <column label="姓名" name="sName" type="String" xid="xid2"></column>
  <data xid="default23">[]</data></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="选择人员"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">选择人员</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content x-cards" xid="content1"><div component="$UI/system/components/justep/tree/tree" class="x-tree x-inner-scroll" xid="tree1" rootLabel="组织机构" limit="-1" data="personData" labelColumn="sName">
   <div class="x-tree-head" xid="div1" style="background-color:white;font-family:微软雅黑;">
    <ul component="$UI/system/components/bootstrap/breadcrumb/breadcrumb" class="breadcrumb"></ul></div> 
   <div class="x-tree-content x-scroll-view" xid="div2">
    <div component="$UI/system/components/justep/scrollView/scrollView" supportPullDown="true" supportPullUp="true" hScroll="false" vScroll="true" hScrollbar="false" vScrollbar="true" bounce="true" class="x-scroll" xid="scrollView1">
     <div class="x-content-center x-pull-down container" xid="div3">
      <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i1"></i>
      <span class="x-pull-down-label" xid="span1">下拉刷新...</span></div> 
     <ul class="x-tree-template x-scroll-content" xid="treeTemplateUl1">
      <li xid="li1" class="x-tree-link" style="padding-right:10px;padding-left:10px;background-color:white;">
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="padding:0px 0px 0px 0px;margin:0px 0px 0px 0px;">
   <div class="x-col x-col-fixed x-col-center" xid="col1" style="width:auto;" bind-visible="val(&quot;sOrgKindID&quot;)  == 'psm'"><span component="$UI/system/components/justep/button/checkbox" class="x-checkbox" xid="checkbox" name="checked" checkedValue="1" uncheckedValue="0" onChange="checkboxChange"></span></div>
   <div class="x-col x-col-fixed x-col-center" xid="col3" style="width:auto;" bind-visible=" val(&quot;sOrgKindID&quot;) =='psm'"><div xid="div5" class="photoDiv"><span xid="span3" bind-text=' val("sName").slice(-2)' style="font-weight:bold;color:#FFFFFF;font-size:medium;"><![CDATA[]]></span></div></div>
  <div class="x-col x-col-center" xid="col2"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output1" bind-ref='ref("sName")' style="border-style:solid solid solid solid;border-width:0px 0px 1px 0px;border-color:#D0D0D0 #D0D0D0 #D0D0D0 #D0D0D0;padding:5px 0px 7px 0px;font-size:medium;font-family:微软雅黑;"></div></div>
  <div class="x-col x-col-fixed" xid="col4" style="width:auto;" bind-visible=" val(&quot;sOrgKindID&quot;) !='psm'"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button1" icon="icon-chevron-right" style="color:#808080;font-size:medium;">
   <i xid="i2" class="icon-chevron-right"></i>
   <span xid="span4"></span></a></div></div></li>
  </ul> 
     <div class="x-content-center x-pull-up" xid="div4">
      <span class="x-pull-up-label" xid="span2">加载更多...</span></div> </div> </div> </div></div>
  <div class="x-panel-bottom" xid="bottom1" height="38"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="保存" xid="saveButton" onClick="saveButtonClick">
   <i xid="i3"></i>
   <span xid="span5">保存</span></a></div></div> 
<resource xid="resource2"><require xid="require1" url="css!$UI/work/common/css/pub"></require></resource></div>