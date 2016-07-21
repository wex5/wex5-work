<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:191px;left:456px;" onParamsReceive="modelParamsReceive" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="signData" queryAction="queryOa_sign" saveAction="saveOa_sign" url="/work/sign" tableName="oa_sign" idColumn="fID" autoNew="false"><column label="fID" name="fID" type="String" xid="default18"></column>
  <column label="版本" name="version" type="Integer" xid="default19"></column>
  <column label="签到人" name="fPersonID" type="String" xid="default20"></column>
  <column label="签到人名称" name="fPersonName" type="String" xid="default21"></column>
  <column label="签到组织" name="fOrgID" type="String" xid="default22"></column>
  <column label="组织名称" name="fOrgName" type="String" xid="default23"></column>
  <column label="签到部门" name="fDeptID" type="String" xid="default24"></column>
  <column label="部门名称" name="fDeptName" type="String" xid="default25"></column>
  <column label="签到时间" name="fSignTime" type="DateTime" xid="default26"></column>
  <column label="经度" name="fLongitude" type="String" xid="default27"></column>
  <column label="纬度" name="fDimension" type="String" xid="default28"></column>
  <column label="签到地址" name="fSignAddress" type="String" xid="default29"></column>
  <column label="备注" name="fRemark" type="String" xid="default30"></column>
  <column label="图片" name="fImgURL" type="String" xid="default31"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="外勤签到">
   <div class="x-titlebar-left" xid="left1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="closeBtn" icon="icon-chevron-left" onClick="{operation:'window.close'}">
   <i xid="i1" class="icon-chevron-left"></i>
   <span xid="span1"></span></a></div>
   <div class="x-titlebar-title" xid="title1">外勤签到</div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>
   <div class="x-panel-content" xid="content3" style="background-color:#ddd;display:none;">
  <div xid="div2" style="margin-bottom:10px;padding:20px 20px 0px 20px;background-color:white;">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
    <label class="x-label" xid="fSignTimeL" bind-text='$model.signData.label("fSignTime")' style="font-weight:bold;"></label>
    <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="fSignTime" bind-ref='$model.signData.ref("fSignTime")'></div></div> 
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
    <label xid="fSignAddressL" bind-text='$model.signData.label("fSignAddress")' style="font-weight:bold;" class="x-label"></label>
    <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="fSignAddress" bind-ref='$model.signData.ref("fSignAddress")'></div></div> </div><div xid="div3" style="padding:20px;margin-bottom:10px;background-color:white;">
   <textarea component="$UI/system/components/justep/textarea/textarea" class="form-control x-edit" xid="fRemark" bind-ref='$model.signData.ref("fRemark")' placeHolder="请填写签到备注" style="margin-bottom:10px;"></textarea>
  <div component="$UI/system/components/justep/attachment/attachmentSimple" actionUrl="/baas/justep/attachment/simpleFileStore" xid="fImgURL" bind-ref='$model.signData.ref("fImgURL")' accept="image/*,video/*">
   <div class="x-attachment" xid="div4">
    <div class="x-attachment-content x-card-border" xid="div5">
     <div class="x-doc-process" xid="div6">
      <div class="progress-bar x-doc-process-bar" role="progressbar" style="width:0%;" xid="progressBar1"></div></div> 
     <div data-bind="foreach:$attachmentItems" xid="div7">
      <div class="x-attachment-cell" xid="div8">
       <div class="x-attachment-item x-item-other" data-bind="click:$model.previewOrRemoveItem.bind($model),style:{backgroundImage:($model.previewPicture.bind($model,$object))()}" xid="div9">
        <a data-bind="visible:$model.$state.get() == 'remove'" class="x-remove-barget" xid="a1"></a></div> </div> </div> 
     <div class="x-attachment-cell" data-bind="visible:$state.get() == 'upload'" xid="div10">
      <div class="x-attachment-item x-item-upload" data-bind="visible:$state.get() == 'upload'" xid="div11"></div></div> 
     <div class="x-attachment-cell" data-bind="visible:$state.get() == 'upload' &amp;&amp; $attachmentItems.get().length &gt; 0" xid="div12">
      <div class="x-attachment-item x-item-remove" data-bind="click:changeState.bind($object,'remove')" xid="div13"></div></div> 
     <div style="clear:both;" xid="div14"></div></div> </div> </div></div>
  <div xid="div15" style="padding:20px;background-color:white;">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit7">
    <label class="x-label" xid="fDeptNameL" bind-text='$model.signData.label("fDeptName")' style="font-weight:bold;"></label>
    <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="fDeptName1" bind-ref='$model.signData.ref("fDeptName")'></div></div> 
  <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup1" style="padding:0 20px;margin-top:20px;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="提交" xid="subBtn" onClick='subBtnClick'>
   
   <span xid="span2">提交</span></a></div></div>
  <div xid="div1" style="height:100%;background-color:white;"></div></div>
   </div>
  <div xid="waitDiv" style="position:relative;height:200px;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button2" style="position:absolute;font-size:30px;top:42%;left:42%;" icon="icon-loading-a">
    <i xid="i5" class="icon-loading-a"></i>
    <span xid="span5"></span></a> </div></div>