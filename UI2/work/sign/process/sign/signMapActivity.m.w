<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onParamsReceive="modelParamsReceive" onLoad="modelLoad"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="周边详情"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button2" onClick="{operation:'window.close'}" icon="icon-chevron-left">
   <i xid="i2" class="icon-chevron-left"></i>
   <span xid="span2"></span></a></div>  
          <div class="x-titlebar-title">周边详情</div>  
          <div class="x-titlebar-right reverse"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="确定" xid="okBtn" onClick="okBtnClick">
   <i xid="i1"></i>
   <span xid="span1">确定</span></a></div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="mapContent" style="display:none;">
  
  <div xid="showMap" style="height:70%;"></div><div style="overflow-y:auto;height:300px;position:absolute;bottom:0px;left:0px;width:100%;background-color:white;" xid="showResult"></div></div>
  </div> 
<div xid="waitDiv" style="position:relative;height:200px;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button1" style="position:absolute;font-size:30px;top:42%;left:42%;" icon="icon-loading-a">
    <i xid="i5" class="icon-loading-a"></i>
    <span xid="span5"></span></a> </div></div>