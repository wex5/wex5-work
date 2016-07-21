<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" style="height:auto;top:477px;left:104px;" onLoad="modelLoad" xid="model"> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="chooseRoleDialog" src="$UI/OA/organizationalStructure/process/organizationalStructure/roleActivity.w"></span><div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="注册"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">注册</div>  
          <div class="x-titlebar-right reverse"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="okBtn" icon="icon-android-checkmark" style="font-size:medium;" onClick="okBtnClick">
   <i xid="i2" class="icon-android-checkmark"></i>
   <span xid="span2"></span></a></div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/bootstrap/row/row" class="row" xid="inputRow" style="width:100%;margin:0 auto;">
   <div class="col col-xs-12" xid="col1" style="padding:10px 5px;"><input component="$UI/system/components/justep/input/input" class="form-control" xid="nameInput" placeHolder="请输入您的姓名"></input></div>
  <div class="col col-xs-12" xid="col4" style="padding:10px 5px;">
   <input component="$UI/system/components/justep/input/input" class="form-control" xid="phonenumber" placeHolder="请输入您的手机号"></input></div>
  <div class="col col-xs-12" xid="col8" style="padding:0;">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
    <div class="x-col" xid="col6">
     <input component="$UI/system/components/justep/input/input" class="form-control" xid="verifyCode" placeHolder="请输入验证码"></input></div> 
    <div class="x-col x-col-33" xid="col7" style="text-align:center;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="获取验证码" xid="sendsmsbutton" onClick="sendsmsbuttonClick">
      <i xid="i1"></i>
      <span xid="span1">获取验证码</span></a> </div> </div> </div>
  <div class="col col-xs-12" xid="col9" style="padding:10px 5px;">
   <input component="$UI/system/components/justep/input/password" class="form-control" xid="userPassword" placeHolder="请输入密码（8-16位字母和数字的组合）"></input></div>
  <div class="col col-xs-12" xid="col10" style="padding:10px 5px;">
   <input component="$UI/system/components/justep/input/password" class="form-control" xid="passwordAgain" placeHolder="请确认您的密码（8-16位字母和数字的组合）"></input></div>
  </div>
  <div xid="div1" style="text-align:center;margin-top:30px;padding:20px;">
   <span xid="span3"><![CDATA[温馨提示：下次登录时可直接使用手机号加密码登录。谢谢。]]></span></div></div>
  </div> 
</div>