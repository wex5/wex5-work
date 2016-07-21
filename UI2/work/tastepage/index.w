<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"/>  
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1"
    style="padding-top:50px;"> 
    <div class="x-col x-col-20 x-col-offset-20" xid="col4" style="padding-top:80px;width:auto;"> 
      <p style="margin-top:50px;">企业IM协同App，我们只要属于自己!
        <br/> 铛铛 – 属于开发商和企业自己的
        <br/> 移动IM协同App
      </p>  
      <p style="height: 42px">这是铛铛（开源）公示例，属于WeX5开发产品，
        <strong>
          </strong>
      </p>  
      <p xid="downHref" bind-click="downHrefClick" style="text-decoration: underline;color:red;font-weight:bold;width:350px;"><![CDATA[桌面版铛铛，点击下载]]></p><p xid="netP" bind-click="netPClick" style="text-decoration: underline;color:red;font-weight:bold;width:350px;">网页版铛铛，点击直接打开</p><p style="margin-top:140px;"><![CDATA[铛铛提供了统一通讯平台，私聊、群聊、图像、语音、文档共享；一个移动办公工作平台，包括流程审批、工作日志、外勤、考勤签到等协同办公功能。支持Https + WSS，Akka的监管（容错）策略可实现系统自愈。多端同步，无缝沟通，私有部署，公有部署，随心所欲。支持和业务的深度融合，随需而变，轻松定制。开发商和企业可随意修改，定制和发布完全属于自己的企业IM协同App。
]]></p> 
    
  </div>
    <div class="x-col x-col-fixed " xid="col1" style="width:auto;padding-left:100px;"> 
      <div style="position: relative; width: 332px; height: 683px; float: left; margin: 0px; background-image: url('images/iphone5.png');top:45px;"> 
        <iframe style="border: 0; width: 330px; height: 586px; position: relative; top: 51px; left: 1px;"
          src="../../chat/wex5/index.w?device=m" width="330" height="586" frameborder="0"
          marginwidth="0" marginheight="0" scrolling="no"/> 
      </div> 
    </div>  
    <div class="x-col x-col-fixed " xid="col2" style="padding-top:80px;text-align:center;width:200px;padding-left:100px;"> 
      <div component="$UI/system/components/justep/barcode/barcodeImage" class="xui-barcodeImage"
        type="qr" templateName="templateName" xid="indexQR" style="height:180px;width:180px;display:block;margin-left:5px;"
        barcodeConfig="{mw:1.0}"/>  
      <label xid="label6"><![CDATA[扫码下载APP,体验效果更好]]></label>  
      <div component="$UI/system/components/justep/barcode/barcodeImage" class="xui-barcodeImage"
        type="qr" templateName="templateName" xid="wechatQR" style="height:180px;width:180px;display:block;margin-top:120px;margin-left:5px;"
        barcodeConfig="{mw:1.0}"/>  
      <label xid="label7" style="width:180px;"><![CDATA[扫码手机体验]]></label>  
      <p xid="p2" style="width:180px;"><![CDATA[(移动铛铛、浏览器、微信)]]></p>  
      <p xid="p1" style="width:180px;font-size:1em;font-weight:bold;text-align:justify;color:red;margin-top:20px;"><![CDATA[手机体验请确保移动设备与dangchat服务处于同一个网络环境]]></p> 
    </div> 
  </div> 
</div>
