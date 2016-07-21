<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:pc">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:87px;top:139px;"
    onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/bizData" autoLoad="true"
      xid="docNodeTree" concept="SA_DocNode" limit="-1" isTree="true"> 
      <reader xid="default1" action="/system/logic/action/queryDocNodeAction"/>  
      <writer xid="default2" action="/system/logic/action/saveDocNodeAction"/>  
      <creator xid="default3" action="/system/logic/action/createDocNodeAction"/>  
      <treeOption xid="default7" parentRelation="sParentID" rootFilter="SA_DocNode.sParentID IS NULL"/>  
      <filter name="sKindFilter" xid="filter1"><![CDATA[SA_DocNode.sKind='dir']]></filter>  
      <filter name="sFlagFilter" xid="filter2"><![CDATA[SA_DocNode.sFlag=1]]></filter> 
    </div>  
    <div component="$UI/system/components/justep/data/bizData" autoLoad="true"
      xid="docNodeList" concept="SA_DocNode"> 
      <reader xid="default4" action="/system/logic/action/queryDocNodeAction"/>  
      <writer xid="default5" action="/system/logic/action/saveDocNodeAction"/>  
      <creator xid="default6" action="/system/logic/action/createDocNodeAction"/>  
      <master xid="default8" data="docNodeTree" relation="sParentID"/> 
    </div> 
  </div>  
  <div class="container-fluid"> 
    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row1"
      style="height:100%;"> 
      <div class="col col-xs-3" xid="col1" style="height:100%;overflow: auto;"> 
        <div component="$UI/system/components/justep/toolBar/toolBar" class="x-toolbar x-toolbar-spliter"
          xid="toolBar1"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
            onClick="{'operation':'docNodeTree.refresh'}" xid="button1"> 
            <i xid="i1"/>  
            <span xid="span1"/>
          </a>
        <div class="pull-right" component="$UI/system/components/justep/smartFilter/smartFilter" xid="smartFilter1" filterData="docNodeTree" filterCols="sDocName">
   
   <input type="text" class="form-control" placeholder="搜索" data-bind="valueUpdate: ['input', 'afterkeydown']" bind-value="$model.comp($element.parentElement).searchText" bind-change="$model.comp($element.parentElement).onInputChange.bind($model.comp($element.parentElement))" xid="input1"></input>
   </div></div>  
        <div component="$UI/system/components/justep/grid/grid" hiddenCaptionbar="true"
          altRows="true" class="x-grid-no-bordered" xid="nodeTreeGrid" data="docNodeTree"
          appearance="tree" expandColumn="sDocName" width="100%" height="auto" multiselectWidth="20"
          useVirtualRoot="false"> 
          <columns xid="columns1"> 
            <column width="100" name="sDocName" xid="column1" label="名称"/> 
          </columns> 
        </div> 
      </div>  
      <div class="col col-xs-9 col-spliter-left" xid="col2" style="height:100%;"> 
        <div component="$UI/system/components/justep/toolBar/toolBar" class="x-toolbar x-toolbar-spliter"
          xid="toolBar2"> 
          <div class="pull-right" component="$UI/system/components/justep/smartFilter/smartFilter" xid="smartFilter2" filterData="docNodeList" filterCols="SA_DocNode,sParentID,sDocName,sSequence,sSize,sKind,sDocPath,sDocDisplayPath,sCreatorFID,sCreatorName,sCreatorDeptName,sCreateTime,sEditorFID,sEditorName,sEditorDeptName,sLastWriterFID,sLastWriterName,sLastWriterDeptName,sLastWriteTime,sFileID,sDescription,sDocLiveVersionID,sDocSerialNumber,sKeywords,sClassification,sFinishTime,sNameSpace,sFlag,version,sCacheName,sRevisionCacheName">
   
   <input type="text" class="form-control" placeholder="搜索" data-bind="valueUpdate: ['input', 'afterkeydown']" bind-value="$model.comp($element.parentElement).searchText" bind-change="$model.comp($element.parentElement).onInputChange.bind($model.comp($element.parentElement))" xid="input2"></input>
   </div>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" onClick="{'operation':'docNodeList.refresh'}" xid="button2">
   <i xid="i6"></i>
   <span xid="span6"></span></a></div>  
        <div component="$UI/system/components/justep/dataTables/dataTables"
          flexibleWidth="true" rowActiveClass="active" class="table table-hover table-striped"
          xid="dataTables1" data="docNodeList"> 
          <columns xid="columns2"> 
            <column name="sDocName" xid="column3"/>  
            <column name="sSize" xid="column4"/>  
            <column name="sCreateTime" xid="column5"/>  
            <column name="sCreatorName" xid="column6"/>  
            <column name="sCreatorDeptName" xid="column7"/>  
            <column name="sEditorName" xid="column8"/>  
            <column name="sLastWriterName" xid="column9"/>  
            <column name="sLastWriteTime" xid="column10"/> 
          </columns> 
        </div>  
        <div component="$UI/system/components/justep/pagerBar/pagerBar" class="x-pagerbar container-fluid"
          xid="pagerBar1" data="docNodeList"> 
          <div class="row" xid="div1"> 
            <div class="col-sm-3" xid="div2"> 
              <div class="x-pagerbar-length" xid="div3"> 
                <label component="$UI/system/components/justep/pagerLimitSelect/pagerLimitSelect"
                  class="x-pagerlimitselect" xid="pagerLimitSelect1"> 
                  <span xid="span10">显示</span>  
                  <select component="$UI/system/components/justep/select/select"
                    class="form-control input-sm" xid="select1"> 
                    <option value="10" xid="default9">10</option>  
                    <option value="20" xid="default10">20</option>  
                    <option value="50" xid="default11">50</option>  
                    <option value="100" xid="default12">100</option> 
                  </select>  
                  <span xid="span11">条</span> 
                </label> 
              </div> 
            </div>  
            <div class="col-sm-3" xid="div4"> 
              <div class="x-pagerbar-info" xid="div5">当前显示0条，共0条</div> 
            </div>  
            <div class="col-sm-6" xid="div6"> 
              <div class="x-pagerbar-pagination" xid="div7"> 
                <ul class="pagination" component="$UI/system/components/bootstrap/pagination/pagination"
                  xid="pagination1"> 
                  <li class="prev" xid="li1"> 
                    <a href="#" xid="a1"> 
                      <span aria-hidden="true" xid="span12">«</span>  
                      <span class="sr-only" xid="span13">Previous</span> 
                    </a> 
                  </li>  
                  <li class="next" xid="li2"> 
                    <a href="#" xid="a2"> 
                      <span aria-hidden="true" xid="span14">»</span>  
                      <span class="sr-only" xid="span15">Next</span> 
                    </a> 
                  </li> 
                </ul> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>
