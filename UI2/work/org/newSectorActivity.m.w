<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onParamsReceive="modelParamsReceive"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="新建部门"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">新建部门</div>  
          <div class="x-titlebar-right reverse"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="saveBtn" icon="icon-android-checkmark" onClick="saveBtnClick">
   <i xid="i2" class="icon-android-checkmark"></i>
   <span xid="span2"></span></a></div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/bootstrap/row/row" class="row" xid="row1">
   <div class="col col-xs-12" xid="nameCol">
    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row3" style="width:100%;margin:0 auto;">
     <div class="col col-xs-12" xid="col7" style="padding:10px;">
      <span xid="nameSpan" style="font-size:large;font-family:微软雅黑;color:#7D7D7D;"><![CDATA[请输入新部门的名称：]]></span></div> 
     <div class="col col-xs-12" xid="col8">
      <input component="$UI/system/components/justep/input/input" class="form-control" xid="nameInput"></input></div> </div> </div> 
   </div></div>
  </div> 
</div>