<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:383px;left:132px;height:auto;" onLoad="modelLoad"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="urlData" idColumn="id"><column name="id" type="String" xid="xid1"></column>
  <column label="地址" name="url" type="String" xid="xid2"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"></div>
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col1"></div>
   <div class="x-col" xid="col2" style="text-align:center;"><span xid="span1"><![CDATA[请输入服务地址]]></span></div>
   <div class="x-col" xid="col3"></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col6" style="padding-left:5%;"><input component="$UI/system/components/justep/input/input" class="form-control" xid="newInput" min="js:new Date()"></input></div>
   
   <div class="x-col x-col-25" xid="col5"><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="进入" xid="button" onClick="buttonClick">
   <i xid="i1"></i>
   <span xid="span3">进入</span></a></div></div></div>
   <div class="x-panel-bottom" xid="bottom1"></div></div></div>