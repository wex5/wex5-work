<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:mobile">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:55px;left:272px;"> 
    <div component="$UI/system/components/justep/data/bizData" xid="dFirstKeyWord"
      concept="OA_Pub_BaseCode"> 
      <reader xid="default1" action="/OA/common/logic/action/queryOA_Pub_BaseCodeAction"/> 
    <filter name="filter0" xid="filter1"><![CDATA[OA_Pub_BaseCode.fUseStatus = '1' and OA_Pub_BaseCode.fScope='首主题词']]></filter></div>  
    <div component="$UI/system/components/justep/data/bizData" xid="dEndKeyWord"
      concept="OA_Pub_BaseCode"> 
      <reader xid="default2" action="/OA/common/logic/action/queryOA_Pub_BaseCodeAction"/> 
    <filter name="filter1" xid="filter2"><![CDATA[OA_Pub_BaseCode.fUseStatus = '1' and OA_Pub_BaseCode.fScope='末主题词']]></filter></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="dTemp" idColumn="fID"> 
      <column name="fID" type="String" xid="default3"/>  
      <column name="keyWordFirst" type="String" xid="default4"/>  
      <column name="keyWordSencond" type="String" xid="default5"/>  
      <column name="keyWordEnd" type="String" xid="default6"/>  
      <column name="keyWordView" type="String" xid="default7"/> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="windowReceiver" onReceive="windowReceiverReceive"/>
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/bootstrap/row/row" class="row"
        xid="default8"> 
        <div class="col col-xs-11" xid="col1"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit" xid="labelEdit1"> 
            <label class="x-label" xid="label1" style="width:100px;">预览：</label>  
            <div component="$UI/system/components/justep/output/output" class="form-control"
              xid="optView" bind-ref="dTemp.ref('keyWordView')"/> 
          </div> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1"> 
        
        
        
        
        
       
    <div class="form-horizontal container-fluid" component="$UI/system/components/bootstrap/form/form" xid="form1"><h1 xid="title1" class="text-left" style="font-size:14px;">第一步：设置首主题词。通过下方首主题词选择框进行设置。</h1><div component="$UI/system/components/bootstrap/row/row" class="row" xid="default10"> 
        <div class="col col-xs-1" xid="col7" />  
        <div class="col col-xs-6 col-sm-6 col-md-6 col-lg-6" xid="col2"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit2"> 
            <label class="x-label" xid="label2" style="width:100px;">首主题词</label>  
            <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="select2" onChange="select2Change" bind-ref="dTemp.ref('keyWordFirst')" bind-labelRef="dTemp.ref('keyWordFirst')" bind-options="dFirstKeyWord" bind-optionsValue="fName" bind-optionsLabel="fName" /> 
          </div> 
        </div> 
      </div><h1 xid="title2" class="text-left" style="font-size:14px;">第二步：设置自选主题词。通过下方自选主题词右边的选择按钮设置，或者手动输入。</h1><div component="$UI/system/components/bootstrap/row/row" class="row" xid="default9"> 
        <div class="col col-xs-1" xid="col3" />  
        <div class="col col-xs-12" xid="col4"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit3">
   
   <label class="x-label" xid="label3" style="width:100px;"><![CDATA[自选主题词：]]></label><div class="x-edit" xid="div1"><div class="input-group" xid="inputGroup2">
    <textarea component="$UI/system/components/justep/textarea/textarea" class="form-control x-edit" xid="textarea1" onChange="textarea1Change" data="dTemp" bind-ref="dTemp.ref('keyWordSencond')" placeHolder="请输入或选择..." style="border-right-style:none;"/><div class="input-group-addon" xid="span15" style="background-color:transparent;border-left-style:none;" bind-click="trgSencondKeyWordClick">
    <i xid="i111" class="icon-android-search"></i></div></div></div></div></div>  
        
     
          
        
        </div><h1 xid="title3" class="text-left" style="font-size:14px;">第三步：设置末主题词。通过下方末主题词选择框进行设置。</h1><div component="$UI/system/components/bootstrap/row/row" class="row" xid="default11"> 
        <div class="col col-xs-1" xid="col6" />  
        <div class="col col-xs-6 col-sm-6 col-md-6 col-lg-6" xid="col8"> 
          <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit4"> 
            <label class="x-label" xid="label4" style="width:100px;"><![CDATA[末主题词：]]></label>  
            <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="select3" onChange="select3Change" bind-ref="dTemp.ref('keyWordEnd')" bind-labelRef="dTemp.ref('keyWordEnd')" bind-options="dEndKeyWord" bind-optionsValue="fName" bind-optionsLabel="fName" /> 
          </div> 
        </div> 
      </div></div></div>  
    <div class="x-panel-bottom" xid="bottom1"> 
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label x-dialog-button"
        label="取消" xid="cancelBtn" onClick="{&quot;operation&quot;:&quot;windowReceiver.windowCancel&quot;}"> 
        <i xid="i1"/>  
        <span xid="span1">取消</span> 
      </a>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-primary btn-only-label x-dialog-button"
        label="确定" xid="okBtn" onClick="okBtnClick"> 
        <i xid="i2"/>  
        <span xid="span2">确定</span> 
      </a> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="wDlgSencondKeyWord"
    height="50%" width="60%" src="$UI/OA/common/process/secondKeyWordSelect/secondKeyWordSelect.w"
    status="normal" title="自选主题词选择" showTitle="true" forceRefreshOnOpen="true" onReceive="wDlgSencondKeyWordReceive"/>
</div>
