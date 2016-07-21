<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:65px;top:166px;"/>  
  <!-- <div xid="map" id="map" style="width:100%;height:100%;background-color:blue;"></div>  -->  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="windowReceiver" style="left:10px;top:60px;" onReceive="windowReceiverReceive"/>
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1">
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"
        xid="titleBar1" title="地图"> 
        <div class="x-titlebar-left" xid="div2">
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            label="" xid="button1" icon="icon-chevron-left" onClick="{operation:'windowReceiver.windowCancel'}"> 
            <i xid="i1" class="icon-chevron-left"/>  
            <span xid="span1"/>
          </a>
        </div>  
        <div class="x-titlebar-title" xid="div3">地图</div>  
        <div class="x-titlebar-right reverse" xid="div4"/>
      </div>
    </div>  
    <div class="x-panel-content" xid="mapContent"> 
      <!-- <div xid="div1" id="map" style="height:100%;background-color:blue;"/>  -->
    </div>  
    </div> 
</div>
