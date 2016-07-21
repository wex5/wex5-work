<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:204px;left:253px;height:auto;" onParamsReceive="modelParamsReceive"/> 
<div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel1">
   <div class="panel-heading" xid="heading1">
    <h4 class="panel-title" xid="h41" style="font-weight:bold;text-align:center;"><![CDATA[完善办公地址名称]]></h4></div> 
   <div class="panel-body" xid="body1"><div xid="div1"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
   <label class="x-label" xid="label1" style="width:auto;"><![CDATA[地址名称]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="AddrName"></input></div>
  <div xid="addressDetail"></div></div></div>
   <div class="panel-footer" xid="footer1"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup1"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="跳过此步" xid="jumpBtn" onClick="jumpBtnClick">
   <i xid="i2"></i>
   <span xid="span2">跳过此步</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="保存" xid="saveBtn" onClick="saveBtnClick">
   <i xid="i3"></i>
   <span xid="span3">保存</span></a></div></div></div></div>