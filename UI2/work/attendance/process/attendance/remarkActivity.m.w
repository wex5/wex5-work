<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:351px;left:43px;height:auto;"
    onParamsReceive="modelParamsReceive" onModelConstruct="modelModelConstructDone"
    onLoad="modelLoad">
    <div component="$UI/system/components/justep/data/baasData" autoLoad="true"
      xid="checkInOutDataD" queryAction="queryOa_chekinout" saveAction="saveOa_chekinout"
      url="/work/attendance" tableName="oa_chekinout" idColumn="fID">
      <column label="fID" name="fID" type="String" xid="default23"/>  
      <column label="版本" name="version" type="Integer" xid="default24"/>  
      <column label="考勤人ID" name="fPersonID" type="String" xid="default25"/>  
      <column label="考勤人名称" name="fPersonName" type="String" xid="default26"/>  
      <column label="考勤组织ID" name="fOrgID" type="String" xid="default27"/>  
      <column label="考勤组织名称" name="fOrgName" type="String" xid="default28"/>  
      <column label="考勤部门ID" name="fDeptID" type="String" xid="default29"/>  
      <column label="考勤部门名称" name="fDeptName" type="String" xid="default30"/>  
      <column label="签到时间AM" name="fCheckInAM" type="DateTime" xid="default31"/>  
      <column label="签退时间AM" name="fCheckOutAM" type="DateTime" xid="default32"/>  
      <column label="签到时间PM" name="fCheckInPM" type="DateTime" xid="default33"/>  
      <column label="签退时间PM" name="fCheckOutPM" type="DateTime" xid="default34"/>  
      <column label="是否迟到" name="fIsLate" type="String" xid="default35"/>  
      <column label="迟到备注" name="fIsLateRemark" type="String" xid="default36"/>  
      <column label="是否早退" name="fIsLeaving" type="String" xid="default37"/>  
      <column label="早退备注" name="fIsLeavingRemark" type="String" xid="default38"/>  
      <column label="是否旷工" name="fAbsenteeism" type="String" xid="default39"/>  
      <column label="迟到图片" name="fLateImg" type="String" xid="default40"/>  
      <column label="早退图片" name="fLeavingImg" type="String" xid="default41"/>  
      <column label="早签到地点" name="fCheckAreaAM" type="String" xid="default42"/>  
      <column label="晚签退地点" name="fCheckAreaPM" type="String" xid="default43"/>  
      <column label="考勤地点" name="fCheckSite" type="String" xid="default44"/>  
      <rule xid="rule1">
   <col name="fID" xid="ruleCol1">
    <calculate xid="calculate1">
     <expr xid="default1">justep.UUID.createUUID()</expr></calculate> </col> </rule></div>
  </div>  
  <div xid="waitDiv" style="position:relative;height:200px;"> 
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
      label="button" xid="button2" style="position:absolute;font-size:30px;top:42%;left:42%;"
      icon="icon-loading-a"> 
      <i xid="i4" class="icon-loading-a"/>  
      <span xid="span4"/>
    </a> 
  </div>
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1" style="display:none;"> 
    <div class="x-panel-content" xid="content1"> 
      <div xid="InfomaD">
        <div component="$UI/system/components/justep/row/row" class="x-row"
          xid="row1"> 
          <div class="x-col x-col-fixed x-col-center" xid="col1" style="width:auto;font-weight:bold;">
            <span xid="span3"><![CDATA[打卡时间：]]></span>
          </div>  
          <div class="x-col x-col-center" xid="col2">
            <div component="$UI/system/components/justep/output/output" class="x-output"
              xid="checkTimeD" bind-ref="$model.checkInOutDataD.ref(&quot;fCheckInAM&quot;)"/>
          </div> 
        </div>
        <div component="$UI/system/components/justep/row/row" class="x-row"
          xid="row2"> 
          <div class="x-col x-col-fixed x-col-center" xid="col4" style="width:auto;font-weight:bold;">
            <span xid="span5"><![CDATA[打卡地点：]]></span>
          </div>  
          <div class="x-col x-col-center" xid="col5">
            <div component="$UI/system/components/justep/output/output" class="x-output"
              xid="checkAddressD" bind-ref="$model.checkInOutDataD.ref(&quot;fCheckAreaAM&quot;)"/>
          </div> 
        </div>
      </div>  
      <textarea component="$UI/system/components/justep/textarea/textarea" class="form-control"
        xid="remarkTextD" style="height:100px;" placeHolder="请填写打卡备注（选填）" bind-ref="$model.checkInOutDataD.ref(&quot;fIsLateRemark&quot;)"/>  
    </div>  
    <div class="x-panel-bottom" xid="bottom1">
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified"
        tabbed="false" xid="buttonGroup1">
        <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label"
          label="取消" xid="button1" onClick="{operation:'window.close'}" style="border-right:1px solid #ddd;"> 
          <i xid="i1"/>  
          <span xid="span1">取消</span>
        </a>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label"
          label="确定" xid="commitBtn" onClick="commitBtnClick"> 
          <i xid="i2"/>  
          <span xid="span2">确定</span>
        </a>
      </div>
    </div>
  </div>
</div>
