<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onModelConstructDone="modelModelConstructDone" style="top:102px;left:25px;height:auto;"/> 
  <div  class="wrapper" align="left">
  	<a data-clipboard-target="#foo" data-clipboard-demo="" component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top btn-only-label" label="点击下载铛铛APP" xid="downLoadBtn" style="position:fixed;z-index:100;background-color:transparent;top:26%;border-color:#FFFFFF #FFFFFF #FFFFFF #FFFFFF;left:32%;" onClick="downLoadBtnClick" icon="icon-archive">
   <i xid="i1" class="icon-archive" style="font-size:xx-large;"></i>
   <span xid="span1">点击下载铛铛APP</span></a><img xid="weixin-tip-img" alt="微信打开" src="./img/tip.png"/>

  <input component="$UI/system/components/justep/input/input" class="form-control" xid="input" id="foo" style="position:fixed;z-index:100;width:70%;left:15%;top:9%;"></input>
  <span xid="span2" style="color:#FFFFFF;position:fixed;z-index:100;width:70%;left:15%;text-align:center;top:18%;"><![CDATA[请复制服务器地址（供体验版APP在首次启动时确定服务地址）]]></span></div>
<img class="qrcode" alt="公众号" src="./img/qrcode.png"/>
</div>