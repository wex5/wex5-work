<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" class="x-flex x-flex-column"
  design="device:mobile" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:26px;height:auto;left:378px;">
	<div component="$UI/system/components/justep/data/baasData" xid="mainData"
      directDelete="true" autoLoad="true" idColumn="sID"  isTree="true"
      confirmRefresh="false" queryAction="querySa_oporg" tableName="sa_oporg"
      url="/org/loadPerson" saveAction="saveSa_oporg" limit="20">
      <treeOption parentRelation="sParent" nodeKindRelation=""
        rootFilter=""/>
      <column label="" name="sID" type="String"
        xid=""/>
      <column label="" name="sName" type="String"
        xid=""/>
      <column label="" name="sCode" type="String"
        xid=""/>
      <column label="" name="sLongName" type="String"
        xid=""/>
      <column label="" name="sFName" type="String"
        xid=""/>
      <column label="" name="sFCode" type="String"
        xid=""/>
      <column label="" name="sFID" type="String"
        xid=""/>
      <column label="" name="sOrgKindID" type="String"
        xid=""/>
      <column label="" name="sSequence" type="String"
        xid=""/>
      <column label="" name="sValidState" type="Integer"
        xid=""/>
      <column label="" name="sParent" type="String"
        xid=""/>
      <column label="" name="sLevel" type="Integer"
        xid=""/>
      <column label="" name="sPhone" type="String"
        xid=""/>
      <column label="" name="sFax" type="String"
        xid=""/>
      <column label="" name="sAddress" type="String"
        xid=""/>
      <column label="" name="sZip" type="String"
        xid=""/>
      <column label="" name="sDescription" type="String"
        xid=""/>
      <column label="" name="sPersonID" type="String"
        xid=""/>
      <column label="" name="sNodeKind" type="String"
        xid=""/>
      <column label="" name="sWxDeptID" type="Integer"
        xid=""/>
      <column label="" name="version" type="Integer"
        xid=""/>
	   <filter name="filter0" xid="filter1"><![CDATA[sOrgKindID in('ogn','dpt')]]></filter></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="dptData" queryAction="querySa_oporg" saveAction="saveSa_oporg" url="/org/loadPerson" tableName="sa_oporg" idColumn="sID" limit="-1"><column label="sID" name="sID" type="String" xid="default22"></column>
  <column label="sName" name="sName" type="String" xid="default23"></column>
  <column label="sCode" name="sCode" type="String" xid="default24"></column>
  <column label="sLongName" name="sLongName" type="String" xid="default25"></column>
  <column label="sFName" name="sFName" type="String" xid="default26"></column>
  <column label="sFCode" name="sFCode" type="String" xid="default27"></column>
  <column label="sFID" name="sFID" type="String" xid="default28"></column>
  <column label="sOrgKindID" name="sOrgKindID" type="String" xid="default29"></column>
  <column label="sSequence" name="sSequence" type="String" xid="default30"></column>
  <column label="sValidState" name="sValidState" type="Integer" xid="default31"></column>
  <column label="sParent" name="sParent" type="String" xid="default32"></column>
  <column label="sLevel" name="sLevel" type="Integer" xid="default33"></column>
  <column label="sPhone" name="sPhone" type="String" xid="default34"></column>
  <column label="sFax" name="sFax" type="String" xid="default35"></column>
  <column label="sAddress" name="sAddress" type="String" xid="default36"></column>
  <column label="sZip" name="sZip" type="String" xid="default37"></column>
  <column label="sDescription" name="sDescription" type="String" xid="default38"></column>
  <column label="sPersonID" name="sPersonID" type="String" xid="default39"></column>
  <column label="sNodeKind" name="sNodeKind" type="String" xid="default40"></column>
  <column label="sWxDeptID" name="sWxDeptID" type="Integer" xid="default41"></column>
  <column label="version" name="version" type="Integer" xid="default42"></column>
  <filter name="filter0" xid="filter2"><![CDATA[sOrgKindID in('ogn','dpt')]]></filter></div></div> 
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"
        xid="titleBar1" title="选择部门"> 
        <div class="x-titlebar-left" xid="div2">
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            xid="button1" onClick="{operation:'window.close'}"> 
            <i xid="i1"/>  
            <span xid="span3"/>
          </a>
        </div>  
        <div class="x-titlebar-title" xid="div3">选择部门</div>  
        <div class="x-titlebar-right reverse" xid="div8"><a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="okBtn" icon="linear linear-bubble" onClick="okBtnClick">
   <i xid="i3" class="linear linear-bubble"></i>
   <span xid="span1"></span></a></div>
      </div>
    </div>  
    <div class="x-panel-content x-flex x-flex-column" xid="content1" style="padding:15px;">
      <div component="$UI/system/components/justep/tree/tree" class="x-tree x-inner-scroll x-flex1"
        xid="tree1" rootLabel="组织机构" limit="8" data="mainData" labelRelation="sName" labelColumn="sName"> 
        <div class="x-tree-head" xid="div4"> 
          <ul component="$UI/system/components/bootstrap/breadcrumb/breadcrumb"
            class="breadcrumb" xid="breadcrumb1"/> 
        </div>  
        <div class="x-tree-content x-scroll-view" xid="div5"> 
          <div component="$UI/system/components/justep/scrollView/scrollView"
            supportPullToRefresh="true" supportInfiniteLoad="true" hScroll="false"
            vScroll="true" hScrollbar="false" vScrollbar="true" bounce="true" class="x-scroll"
            xid="scrollView1"> 
           <div class="x-content-center x-pull-down container" xid="div9">
   <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2"></i>
   <span class="x-pull-down-label" xid="span4">下拉刷新...</span></div>
            <ul class="x-tree-template x-scroll-content" xid="treeTemplateUl1"> 
              <li bind-css="{ currentRow: $model.mainData.currentRow.get() == $object }" xid="dptLi"> 
                <span component="$UI/system/components/justep/button/radio" class="x-radio" xid="check" name="org" onChange="checkChange"></span><div component="$UI/system/components/justep/labelEdit/labelEdit"
                  class="x-label-edit" xid="labelOutput1" style="display:inline-block;"> 
                  <!-- <label class="x-label" xid="label1" bind-text="ref('sName')"/> -->  
                  <div class="x-edit" xid="div1"> 
                    <div component="$UI/system/components/justep/output/output"
                      class="x-output" xid="output1" bind-ref="ref('sName')"/> 
                  </div> 
                </div> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-right pull-right x-tree-link" xid="button3" bind-visible=" val(&quot;sOrgKindID&quot;)  != 'psm'" icon="icon-chevron-right" style="margin-top:3px;padding-left:5px;">
   <i xid="i5" style="font-size:medium;" class="icon-chevron-right"></i>
   <span xid="span6"></span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-right pull-right" xid="button2" bind-visible="$model.getCount($object)!=0" style="padding-right:0;">
   <i xid="i4"></i>
   <span xid="span5" bind-text='"(" + $model.getCount($object) + ")";'></span></a>
  </li> 
            </ul>  
            <div class="x-content-center x-pull-up" xid="div4"> 
              <span class="x-pull-up-label" xid="span2">加载更多...</span> 
            </div> 
          </div> 
        </div> 
      </div>
    </div> 
  </div> 
</div>