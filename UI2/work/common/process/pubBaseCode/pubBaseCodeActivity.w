<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:mobile">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:95px;top:300px;"> 
    <div component="$UI/system/components/justep/data/bizData" xid="dPubBaseCode"
      concept="OA_Pub_BaseCode" autoLoad="true" onValueChanged="dPubBaseCodeValueChanged" orderBy="fSequence asc"> 
      <reader xid="default1" action="/OA/common/logic/action/queryOA_Pub_BaseCodeAction"/>  
      <writer xid="default2" action="/OA/common/logic/action/saveOA_Pub_BaseCodeAction"/>  
      <creator xid="default3" action="/OA/common/logic/action/createOA_Pub_BaseCodeAction"/> 
    <rule xid="rule6">
   <col name="fName" xid="ruleCol11">
    <required xid="required3">
     <expr xid="default18">js:true</expr>
     <message xid="default19"></message></required> </col> </rule></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="dBtnStatus" idColumn="startUse,stopUse"/> 
  </div>  
  <div component="$UI/system/components/justep/toolBar/toolBar" class="x-toolbar x-toolbar-spliter"> 
    <div component="$UI/system/components/justep/smartFilter/smartFilter" xid="smartFilter1"
      filterData="dPubBaseCode" class="pull-right" filterCols="fCode,fName,fDescription"> 
      <input type="text" class="form-control" placeholder="搜索" data-bind="valueUpdate: ['input', 'afterkeydown']"
        bind-value="$model.comp($element.parentElement).searchText" bind-change="$model.comp($element.parentElement).onInputChange.bind($model.comp($element.parentElement))"
        xid="input1"/> 
    </div>  
    <a component="$UI/system/components/justep/button/button" label=" 新建"
      class="btn btn-link btn-icon-left" icon="icon-plus" xid="newBtn" onClick="{operation:'dPubBaseCode.new'}"> 
      <i class="icon-plus"/>  
      <span>新建</span> 
    </a>  
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
      label="保存" xid="saveBtn" onClick="{operation:'dPubBaseCode.save'}"> 
      <i xid="i3"/>  
      <span xid="label7">保存</span> 
    </a>  
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
      label="删除" xid="deleteBtn" onClick="{operation:'dPubBaseCode.delete'}"> 
      <i xid="i4"/>  
      <span xid="span7">删除</span> 
    </a>  
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
      xid="refreshBtn" label="刷新" onClick="{operation:'dPubBaseCode.refresh'}"> 
      <i xid="i2"/>  
      <span xid="span2">刷新</span> 
    </a>  
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
      label="查询" xid="filterBtn" icon="icon-android-search" onClick="{operation:'dataFilter.menu'}"> 
      <i xid="i5" class="icon-android-search"/>  
      <span xid="span8">查询</span> 
    </a> 
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" label="启用" xid="StartUseBtn" icon="icon-ios7-play" onClick="StartUseBtnClick" bind-enable="$model.canStartUse()">
   <i xid="i1" class="icon-ios7-play"></i>
   <span xid="span10">启用</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" label="全部启用" xid="AllUseBtn" icon="icon-ios7-play" onClick="AllUseBtnClick">
   <i xid="i6" class="icon-ios7-play"></i>
   <span xid="span11">全部启用</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" label="停用" xid="StopUseBtn" icon="icon-ios7-pause" onClick="StopUseBtnClick" bind-enable="$model.canStopUse()">
   <i xid="i7" class="icon-ios7-pause"></i>
   <span xid="span12">停用</span></a></div>  
  <span component="$UI/system/components/justep/bizFilter/bizFilter" xid="dataFilter"
    filterData="dPubBaseCode" style="left:28px;top:290px;"/>  
  <div component="$UI/system/components/justep/grid/grid" hiddenCaptionbar="true"
    altRows="true" class="x-grid-no-bordered" xid="maingrid" data="dPubBaseCode" height="auto" width="100%"> 
    <columns xid="columns1">
      <column name="fUseStatusName" xid="column5"/>
      <column name="fSequence" xid="column4" editable="true">
        <editor xid="editor1"> 
          <input component="$UI/system/components/justep/input/input" class="form-control input-sm"
            xid="iptSeq" style="width:63px;" bind-ref="ref('fSequence')"/>
        </editor>
      </column>
      <column name="fCode" xid="column1" editable="true">
        <editor xid="editor2"> 
          <input component="$UI/system/components/justep/input/input" class="form-control input-sm"
            xid="iptfCode" style="width:83px;" bind-ref="ref('fCode')"/>
        </editor>
      </column>  
      <column name="fName" xid="column2" editable="true">
        <editor xid="editor3"> 
          <input component="$UI/system/components/justep/input/input" class="form-control input-sm"
            xid="iptfName" style="width:134px;" bind-ref="ref('fName')"/>
        </editor>
      </column>  
      <column name="fDescription" xid="column3" editable="true">
        <editor xid="editor4"> 
          <input component="$UI/system/components/justep/input/input" class="form-control input-sm"
            xid="iptfDescription" bind-ref="ref('fDescription')"/>
        </editor>
      </column> 
    </columns>
  </div>
  <div component="$UI/system/components/justep/pagerBar/pagerBar" class="x-pagerbar container-fluid"
    xid="pagerBar1" data="dPubBaseCode"> 
    <div class="row" xid="div1"> 
      <div class="col-sm-3" xid="div2"> 
        <div class="x-pagerbar-length" xid="div3"> 
          <label component="$UI/system/components/justep/pagerLimitSelect/pagerLimitSelect"
            class="x-pagerlimitselect" xid="pagerLimitSelect1"> 
            <span xid="span1">显示</span>  
            <select component="$UI/system/components/justep/select/select" class="form-control input-sm"
              xid="select1"> 
              <option value="10" xid="default2">10</option>  
              <option value="20" xid="default3">20</option>  
              <option value="50" xid="default4">50</option>  
              <option value="100" xid="default5">100</option> 
            </select>  
            <span xid="span3">条</span> 
          </label> 
        </div> 
      </div>  
      <div class="col-sm-3" xid="div4"> 
        <div class="x-pagerbar-info" xid="div5">当前显示1-10条，共16条</div> 
      </div>  
      <div class="col-sm-6" xid="div6"> 
        <div class="x-pagerbar-pagination" xid="div7"> 
          <ul class="pagination" component="$UI/system/components/bootstrap/pagination/pagination"
            xid="pagination1"> 
            <li class="prev" xid="li1"> 
              <a href="#" xid="a1"> 
                <span aria-hidden="true" xid="span4">«</span>  
                <span class="sr-only" xid="span5">Previous</span> 
              </a> 
            </li>  
            <li class="next" xid="li2"> 
              <a href="#" xid="a2"> 
                <span aria-hidden="true" xid="span6">»</span>  
                <span class="sr-only" xid="span9">Next</span> 
              </a> 
            </li> 
          </ul> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>
