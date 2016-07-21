<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:8px;left:65px;height:auto;"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="选择角色"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">选择角色</div>  
          <div class="x-titlebar-right reverse"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="下一步" xid="button1" style="font-size:medium;">
   <i xid="i1"></i>
   <span xid="span1">下一步</span></a></div>
        </div> 
      </div>  
    <div xid="content1" class="x-panel-content"><div component="$UI/system/components/bootstrap/row/row" class="row" xid="row1" style="width:100%;margin:0 auto;">
   <div class="col col-xs-12" xid="col1" style="height:17rem;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col x-col-33" xid="col4"><img src="$UI/work_open/org/img/leader.jpg" alt="" xid="image1" style="width:100%;"></img></div>
   <div class="x-col" xid="col5" style="line-height:15rem;text-align:center;"><h2 xid="h21"><![CDATA[我是领导]]></h2>
  <h4 xid="h42"><![CDATA[I am the leader]]></h4></div>
   </div></div>
   <div class="col col-xs-12" xid="col2" style="height:17rem;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col x-col-33" xid="col7">
    <img src="$UI/work_open/org/img/directors.jpg" alt="" xid="image2" style="width:100%;"></img></div> 
   <div class="x-col" xid="col8" style="line-height:15rem;text-align:center;">
    <h2 xid="h22"><![CDATA[我是主管]]></h2>
    <h4 xid="h43"><![CDATA[ I am the supervisor]]></h4></div> </div></div>
   <div class="col col-xs-12" xid="col3" style="height:17rem;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col x-col-33" xid="col9">
    <img src="$UI/work_open/org/img/staff.jpg" alt="" xid="image3" style="width:100%;"></img></div> 
   <div class="x-col" xid="col10" style="line-height:15rem;text-align:center;">
    <h2 xid="h23"><![CDATA[我是员工]]></h2>
    <h4 xid="h44"><![CDATA[I am an employee]]></h4></div> </div></div></div></div>
  </div> 
</div>