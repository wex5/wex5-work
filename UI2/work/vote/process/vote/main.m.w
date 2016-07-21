<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;resolution:360 x 640;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1" style="background-color:#F8F8FF;"> 
      <div class="x-panel-content" xid="content1" style="background-color:#F5F5F5;"><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="voteListContent"><div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="windowContainer1" src="./voteList.m.w" autoLoad="true"></div></div>
  <div class="x-contents-content" xid="meContent"></div></div></div>
  <div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-sm btn-group-justified" tabbed="true" xid="buttonGroup1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top active" label="投票" xid="voteBtn" icon="linear linear-hand" target="voteListContent">
   <i xid="i1" class="linear linear-hand"></i>
   <span xid="span1">投票</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top " label="活动" xid="button1" icon="linear linear-flag">
   <i xid="i3" class="linear linear-flag"></i>
   <span xid="span3">活动</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top " label="我的" xid="meBtn" icon="e-commerce e-commerce-zhuce" target="meContent">
   <i xid="i2" class="e-commerce e-commerce-zhuce"></i>
   <span xid="span2">我的</span></a>
  </div></div></div> 
</div>