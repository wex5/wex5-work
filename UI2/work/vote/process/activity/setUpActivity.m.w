<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:151px;left:244px;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="statusData" autoNew="false" idColumn="editStatus">
   <column label="编辑状态" name="editStatus" type="String" xid="column1"></column>
   <data xid="default1">[{&quot;editStatus&quot;:&quot;编辑&quot;}]</data>
   <column label="地址" name="address" type="String" xid="column10"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data1" idColumn="id"><column name="id" type="String" xid="xid1"></column>
  <column label="方式" name="style" type="String" xid="xid2"></column>
  <data xid="default3">[{&quot;id&quot;:&quot;1&quot;,&quot;style&quot;:&quot;免费&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;style&quot;:&quot;AA&quot;},{&quot;id&quot;:&quot;3&quot;,&quot;style&quot;:&quot;男A女免&quot;},{&quot;id&quot;:&quot;4&quot;,&quot;style&quot;:&quot;定额（元）&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="false" xid="setUpData" autoNew="true" queryAction="queryWk_activity_start" saveAction="saveWk_activity_start" url="/work/activity" tableName="wk_activity_start" idColumn="fID" limit="-1"><column label="fID" name="fID" type="String" xid="default24"></column>
  <column label="版本" name="version" type="Integer" xid="default25"></column>
  <column label="图片" name="fImage" type="String" xid="default26"></column>
  <column label="标题" name="fTitle" type="String" xid="default27"></column>
  <column label="说明" name="fExplain" type="String" xid="default28"></column>
  <column label="发起人ID" name="fPersonID" type="String" xid="default29"></column>
  <column label="发起人姓名" name="fPersonName" type="String" xid="default30"></column>
  <column label="报名结束时间" name="fRegistrationTime" type="DateTime" xid="default31"></column>
  <column label="活动开始时间" name="fStartTime" type="DateTime" xid="default32"></column>
  <column label="活动结束时间" name="fEndTime" type="DateTime" xid="default33"></column>
  <column label="报名人数" name="fNumber" type="Integer" xid="default34"></column>
  <column label="地点" name="fAdds" type="String" xid="default35"></column>
  <column label="手机号" name="fTel" type="String" xid="default36"></column>
  <column label="性别" name="fSex" type="String" xid="default37"></column>
  <column label="年龄" name="fAge" type="String" xid="default38"></column>
  <column label="备注" name="fRemark" type="String" xid="default39"></column>
  <column label="费用" name="fCost" type="String" xid="default40"></column>
  <column label="报名人姓名" name="fName" type="String" xid="default41"></column>
  <column label="状态" name="fType" type="String" xid="default42"></column>
  <column label="关注" name="fAttention" type="String" xid="default43"></column>
  <column label="费用形式" name="fCostType" type="String" xid="default44"></column>
  <rule xid="rule1">
   <col name="fID" xid="ruleCol1">
    <calculate xid="calculate1">
     <expr xid="default2">justep.UUID.createUUID()</expr></calculate> </col> </rule></div></div>  
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
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit sText" xid="regIput" placeHolder="报名结束时间" bind-ref='$model.setUpData.ref("fRegistrationTime")'></input></div></div>
   </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="background-color:white;">
   <div class="x-col" xid="col13"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2" style="background-color:white;">
   <label class="x-label" xid="label2" bind-text='$model.setUpData.label("fStartTime")' style="width:auto;"></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit sText" xid="startIput" placeHolder="活动开始时间" bind-ref='$model.setUpData.ref("fStartTime")'></input></div></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="background-color:white;">
   <div class="x-col" xid="col16"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3" style="background-color:white;">
   <label class="x-label" xid="label3" bind-text='$model.setUpData.label("fEndTime")' style="width:auto;"></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit sText" xid="endIput" placeHolder="活动结束时间" bind-ref='$model.setUpData.ref("fEndTime")'></input></div></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="background-color:white;">
   <div class="x-col" xid="col20"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4" style="background-color:white;margin-top:8px;">
   <label class="x-label" xid="label4" style="width:auto;"><![CDATA[报名人数限制]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit sText" xid="input5" placeHolder="空表格表示不限制" bind-ref='$model.setUpData.ref("fNumber")'></input></div></div></div>
  
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9">
   <div class="x-col" xid="col22"><div xid="div12" style="background-color:white;"><p xid="p1"><![CDATA[报名必选项]]></p>
  <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row1" style="text-align:center;">
   <div class="col col-xs-3" xid="col1"><span component="$UI/system/components/justep/button/checkbox" class="x-checkbox" xid="checkbox1" label="姓名" checked="true" disabled="true"></span></div>
   <div class="col col-xs-3" xid="col2"><span component="$UI/system/components/justep/button/checkbox" class="x-checkbox" xid="checkbox2" label="电话" checked="true" disabled="true"></span></div>
   <div class="col col-xs-3" xid="col3"><span component="$UI/system/components/justep/button/checkbox" class="x-checkbox" xid="checkbox3" label="性别" bind-ref='$model.setUpData.ref("fSex")'></span></div>
  <div class="col col-xs-3" xid="col4"><span component="$UI/system/components/justep/button/checkbox" class="x-checkbox" xid="checkbox4" label="年龄" bind-ref='$model.setUpData.ref("fAge")'></span></div>
  <div class="col col-xs-3" xid="col5"><span component="$UI/system/components/justep/button/checkbox" class="x-checkbox" xid="checkbox5" label="备注" bind-ref='$model.setUpData.ref("fRemark")'></span></div></div></div></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row7" style="background-color:white;">
   <div class="x-col" xid="col9"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5" style="background-color:white;">
   <label class="x-label" xid="label5" bind-text='$model.setUpData.label("fAdds")' style="width:auto;"></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input6" placeHolder="请输入地址或地图选择" bind-ref='$model.setUpData.ref("fAdds")' bind-click="input6Click"></input></div></div>
  <div class="x-col x-col-fixed x-col-center" xid="col23" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="mapBtn" xid="mapBtn" icon="icon-ios7-location" style="padding:0px 5px 0px;color:#00C957;" onClick="mapBtnClick">
   <i xid="i5" class="icon-ios7-location" style="font-size:24px;"></i>
   <span xid="span5">mapBtn</span></a></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10" style="background-color:white;">
   <div class="x-col" xid="col12"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit7">
   <label class="x-label" xid="label7" style="width:auto;"><![CDATA[形式]]></label>
   <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="select1" bind-options="data1" bind-optionsValue="style" bind-optionsLabel="style" bind-ref='$model.setUpData.ref("fCostType")'></select></div></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row8" style="background-color:white;">
   <div class="x-col" xid="col18"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6" style="background-color:white;">
   <label class="x-label" xid="label6" bind-text='$model.setUpData.label("fCost")' style="width:auto;"></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input7" bind-ref='$model.setUpData.ref("fCost")'></input></div></div>
  </div>
  <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row2" style="margin-top:30px;background-color:white;">
   <div class="col col-xs-12" xid="col6"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="发布" xid="saveBtn" onClick="saveBtnClick">
   <i xid="i1"></i>
   <span xid="span1">发布</span></a></div>
   </div>
  </div>
  </div> 
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="mapDialog" src="$UI/work/sign/process/sign/signMapActivity.m.w" onReceive="mapDialogReceive"></span>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="costPopOver" opacity="0.8" dismissible="true">
   <div class="x-popOver-overlay" xid="div13"></div>
   <div class="x-popOver-content" xid="div14" style="background-color:white;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row11">
   <div class="x-col" xid="col14"><span component="$UI/system/components/justep/button/radio" class="x-radio" xid="radio1" label="免费" value="免费"></span></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row12">
   <div class="x-col" xid="col11"><span component="$UI/system/components/justep/button/radio" class="x-radio" xid="radio2" label="AA"></span></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row13">
   <div class="x-col" xid="col21"><span component="$UI/system/components/justep/button/radio" class="x-radio" xid="radio3" label="男A女免"></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row14">
   <div class="x-col" xid="col26"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit9">
   <label class="x-label" xid="label9"><![CDATA[定额（元）]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input1" placeHolder="请输入金额"></input></div></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row15">
   <div class="x-col" xid="col28"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label btn-block" label="确定" xid="button1">
   <i xid="i3"></i>
   <span xid="span3">确定</span></a></div>
   <div class="x-col" xid="col29"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label btn-block" label="取消" xid="button2">
   <i xid="i4"></i>
   <span xid="span4">取消</span></a></div></div></div></div></div>