<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:151px;left:244px;"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="false" xid="setUpData" queryAction="queryWk_activity_start" saveAction="saveWk_activity_start" url="/work/activity" tableName="wk_activity_start" idColumn="fID" limit="-1" autoNew="true"><column label="fID" name="fID" type="String" xid="default99"></column>
  <column label="版本" name="version" type="Integer" xid="default100"></column>
  <column label="图片" name="fImage" type="String" xid="default101"></column>
  <column label="标题" name="fTitle" type="String" xid="default102"></column>
  <column label="说明" name="fExplain" type="String" xid="default103"></column>
  <column label="发起人ID" name="fPersonID" type="String" xid="default104"></column>
  <column label="发起人姓名" name="fPersonName" type="String" xid="default105"></column>
  <column label="报名结束时间" name="fRegistrationTime" type="DateTime" xid="default106"></column>
  <column label="活动开始时间" name="fStartTime" type="DateTime" xid="default107"></column>
  <column label="活动结束时间" name="fEndTime" type="DateTime" xid="default108"></column>
  <column label="报名人数" name="fNumber" type="Integer" xid="default109"></column>
  <column label="地址" name="fAdds" type="String" xid="default110"></column>
  <column label="手机号" name="fTel" type="String" xid="default111"></column>
  <column label="性别" name="fSex" type="String" xid="default112"></column>
  <column label="年龄" name="fAge" type="String" xid="default113"></column>
  <column label="备注" name="fRemark" type="String" xid="default114"></column>
  <column label="费用" name="fCost" type="String" xid="default115"></column>
  <column label="报名人姓名" name="fName" type="String" xid="default116"></column>
  <column label="状态" name="fType" type="String" xid="default117"></column>
  <column label="关注" name="fAttention" type="String" xid="default118"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="活动发起"
          class="x-titlebar" style="background-color:#00C957;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">活动发起</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content x-cards" xid="content1"><div component="$UI/system/components/justep/attachment/attachmentSimple" actionUrl="/baas/justep/attachment/simpleFileStore" xid="attachmentSimple1" bind-ref='$model.setUpData.ref("fImage")'>
   <div class="x-attachment" xid="div1">
    <div class="x-attachment-content x-card-border" xid="div2">
     <div class="x-doc-process" xid="div3">
      <div class="progress-bar x-doc-process-bar" role="progressbar" style="width:0%;" xid="progressBar1"></div></div> 
     <div data-bind="foreach:$attachmentItems" xid="div4">
      <div class="x-attachment-cell" xid="div5">
       <div class="x-attachment-item x-item-other" data-bind="click:$model.previewOrRemoveItem.bind($model),style:{backgroundImage:($model.previewPicture.bind($model,$object))()}" xid="div6">
        <a data-bind="visible:$model.$state.get() == 'remove'" class="x-remove-barget" xid="a1"></a></div> </div> </div> 
     <div class="x-attachment-cell" data-bind="visible:$state.get() == 'upload'" xid="div7">
      <div class="x-attachment-item x-item-upload" data-bind="visible:$state.get() == 'upload'" xid="div8"></div></div> 
     <div class="x-attachment-cell" data-bind="visible:$state.get() == 'upload' &amp;&amp; $attachmentItems.get().length &gt; 0" xid="div9">
      <div class="x-attachment-item x-item-remove" data-bind="click:changeState.bind($object,'remove')" xid="div10"></div></div> 
     <div style="clear:both;" xid="div11"></div></div> </div> </div>
  <input component="$UI/system/components/justep/input/input" class="form-control" xid="titleIpt" placeHolder="活动标题（最多40字）" maxLength="40" style="margin-top:8px;" bind-ref='$model.setUpData.ref("fTitle")'></input>
  <textarea component="$UI/system/components/justep/textarea/textarea" class="form-control" xid="explainText" placeHolder="活动说明（最多500字）" bind-ref='$model.setUpData.ref("fExplain")'></textarea>
  
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="margin-top:8px;background-color:white;">
   <div class="x-col" xid="col10"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1" style="background-color:white;">
   <label class="x-label" xid="label1" bind-text='$model.setUpData.label("fRegistrationTime")' style="width:auto;"></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit sText" xid="input2" placeHolder="报名结束时间"></input></div></div>
   <div class="x-col x-col-fixed x-col-center" xid="col11" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button3" icon="icon-chevron-right">
   <i xid="i2" class="icon-chevron-right"></i>
   <span xid="span2"></span></a></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="background-color:white;">
   <div class="x-col" xid="col13"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2" style="background-color:white;">
   <label class="x-label" xid="label2" bind-text='$model.setUpData.label("fStartTime")' style="width:auto;"></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit sText" xid="input3" placeHolder="活动开始时间"></input></div></div>
   <div class="x-col x-col-fixed x-col-center" xid="col14" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button4" icon="icon-chevron-right">
   <i xid="i3" class="icon-chevron-right"></i>
   <span xid="span3"></span></a></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="background-color:white;">
   <div class="x-col" xid="col16"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3" style="background-color:white;">
   <label class="x-label" xid="label3" bind-text='$model.setUpData.label("fEndTime")' style="width:auto;"></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit sText" xid="input4" placeHolder="活动结束时间"></input></div></div>
   <div class="x-col x-col-fixed x-col-center" xid="col17" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button5" icon="icon-chevron-right">
   <i xid="i4" class="icon-chevron-right"></i>
   <span xid="span4"></span></a></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
   <div class="x-col" xid="col20"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4" style="background-color:white;margin-top:8px;">
   <label class="x-label" xid="label4" style="width:auto;"><![CDATA[报名人数限制]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit sText" xid="input5" placeHolder="空表格表示不限制"></input></div></div></div>
  <div xid="div12" style="background-color:white;"><p xid="p1" style="padding-left:5px;"><![CDATA[报名必选项]]></p>
  <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row1" style="text-align:center;">
   <div class="col col-xs-3" xid="col1"><span component="$UI/system/components/justep/button/checkbox" class="x-checkbox" xid="checkbox1" label="姓名"></span></div>
   <div class="col col-xs-3" xid="col2"><span component="$UI/system/components/justep/button/checkbox" class="x-checkbox" xid="checkbox2" label="电话"></span></div>
   <div class="col col-xs-3" xid="col3"><span component="$UI/system/components/justep/button/checkbox" class="x-checkbox" xid="checkbox3" label="性别"></span></div>
  <div class="col col-xs-3" xid="col4"><span component="$UI/system/components/justep/button/checkbox" class="x-checkbox" xid="checkbox4" label="年龄"></span></div>
  <div class="col col-xs-3" xid="col5"><span component="$UI/system/components/justep/button/checkbox" class="x-checkbox" xid="checkbox5" label="备注"></span></div></div></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5" style="background-color:white;">
   <label class="x-label" xid="label5" bind-text='$model.setUpData.label("fAdds")' style="width:auto;"></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input6" placeHolder="请输入地址或地图选择"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6" style="background-color:white;">
   <label class="x-label" xid="label6" bind-text='$model.setUpData.label("fCost")' style="width:auto;"></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input7"></input></div>
  <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row2" style="margin-top:30px;background-color:white;">
   <div class="col col-xs-12" xid="col6"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-block" label="发布" xid="button1" style="background-color:#00C957;color:#FFFFFF;">
   <i xid="i1"></i>
   <span xid="span1">发布</span></a></div>
   </div>
  </div>
  </div> 
<div component="$UI/system/components/justep/datePicker/datePicker" class="x-popPicker" xid="startDatePicker" style="top:491px;left:568px;">
   <div class="x-popPicker-overlay" xid="div13"></div>
   <div class="x-popPicker-content" xid="div14">
    <div class="x-poppicker-header" xid="div15">
     <button class="btn btn-default x-btn-ok" xid="button2">确定</button></div> </div> </div></div>