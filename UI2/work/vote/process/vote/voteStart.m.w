<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;resolution:360 x 640;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:99px;left:223px;"><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="voteStartData" queryAction="queryWk_vote_start" saveAction="saveWk_vote_start" url="/vote/voteStrat" tableName="wk_vote_start" idColumn="fID" autoNew="false" onAfterRefresh="voteStartDataAfterRefresh" confirmRefresh="false"><column label="fID" name="fID" type="String" xid="default2"></column>
  <column label="版本" name="version" type="Integer" xid="default3"></column>
  <column label="登陆人Id" name="fPersonId" type="String" xid="default4"></column>
  <column label="标题" name="fTitle" type="String" xid="default5"></column>
  <column label="说明" name="fExplain" type="String" xid="default6"></column>
  <column label="选择" name="fSelect" type="String" xid="default7"></column>
  <column label="是否匿名" name="fAnomity" type="Integer" xid="default8"></column>
  <column label="是否可见" name="fStutes" type="Integer" xid="default9"></column>
  <column label="截至时间" name="fEndTime" type="DateTime" xid="default10"></column>
  <column label="状态类型" name="fType" type="String" xid="default11"></column>
  <filter name="filter0" xid="filter1"></filter>
  <rule xid="rule1">
   <col name="fSelect" xid="ruleCol1">
    <calculate xid="calculate1">
     <expr xid="default21"></expr></calculate> </col> </rule></div><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="cssData" idColumn="col0"><column name="col0" type="String" xid="xid1"></column>
  <column name="col1" type="String" xid="xid2"></column>
  <column name="col2" type="String" xid="xid3"></column>
  <data xid="default1">[{&quot;col0&quot;:&quot;0&quot;,&quot;col1&quot;:&quot;1&quot;,&quot;col2&quot;:&quot;1&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="voteContentData" queryAction="queryWk_vote_content" saveAction="saveWk_vote_content" url="/vote/voteContent" tableName="wk_vote_content" idColumn="fID">
   <column label="fID" name="fID" type="String" xid="default12"></column>
   <column label="版本" name="version" type="Integer" xid="default12"></column>
   <column label="关联id" name="fStartId" type="String" xid="default13"></column>
   <column label="投票内容" name="fContent" type="String" xid="default14"></column>
   <column label="单次投票次数" name="fVoteConnt" type="Integer" xid="default15"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="voteDetaileData" queryAction="queryWk_vote_detail" saveAction="saveWk_vote_detail" url="/vote/voteDetaile" tableName="wk_vote_detail" idColumn="fCountId">
   <column label="fCountId" name="fCountId" type="String" xid="default16"></column>
   <column label="版本" name="version" type="Integer" xid="default17"></column>
   <column label="投票人姓名" name="fVoteName" type="String" xid="default18"></column>
   <column label="投票时间" name="fVoteTime" type="DateTime" xid="default19"></column>
   <column label="投票总次数" name="fCount" type="Integer" xid="default20"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1" style="background-color:#F5F5F5;"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="投票发起"
        class="x-titlebar"> 
        <div xid="div1" style="border-right:1px solid #fff;"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}"
            xid="backBtn" style="padding:12px;"> 
            <i class="icon-chevron-left"/>  
            <span/> 
          </a> 
        </div>  
        <div class="x-titlebar-title">投票发起
  </div>  
        <div class="x-titlebar-right reverse"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-right"
            label="保存" xid="saveBtn" style="background-color:#00C957;border:none;"> 
            <i xid="i1"/>  
            <span xid="span1">保存</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-lg btn-icon-right btn-only-icon pull-right"
            label="button" xid="button2" icon="linear linear-questioncircle" style="background-color:#00C957;border:none;"> 
            <i xid="i2" class="linear linear-questioncircle"/>  
            <span xid="span2"/> 
          </a> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1"> 
      <div component="$UI/system/components/justep/panel/panel" class="panel"
        xid="panel3"> 
        <input component="$UI/system/components/justep/input/input" class="form-control"
          xid="title" maxLength="40" placeHolder="投票标题（最多40字体）" bind-ref='$model.voteStartData.ref("fTitle")'/>  
        <input component="$UI/system/components/justep/input/input" class="form-control"
          xid="explain" placeHolder="投票说明（非必选），最多200字体" maxLength="200" bind-ref='$model.voteStartData.ref("fExplain")'/> 
      </div>  
      <div component="$UI/system/components/justep/panel/panel" class="panel add-row"
        xid="panel5"> 
        <div component="$UI/system/components/justep/row/row" class="x-row list-group-item"
          xid="row5"> 
          <span xid="span11" class="h4" style="padding-left:5px;color:#333;"><![CDATA[投票类型]]></span>  
          <span xid="span12" style="padding-left:5px;padding-top:9px; text-muted"><![CDATA[文字]]></span> 
        </div>  
        <div component="$UI/system/components/justep/row/row" class="x-row list-group-item"
          xid="row8"> 
          <div class="x-col x-col-10" xid="col16"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-xs btn-only-icon circle-btn"
              label="button" xid="deletBtn" icon="linear linear-calendarfull"> 
              <i xid="i4" class="linear linear-calendarfull"/>  
              <span xid="span15"/> 
            </a> 
          </div>  
          <div class="x-col" xid="col17"> 
            <input component="$UI/system/components/justep/input/input" class="form-control"
              xid="input11" placeHolder="请输入文字描述（最多100字）" bind-ref='$model.voteContentData.ref("fContent")'/> 
          </div> 
        </div>  
        <div component="$UI/system/components/justep/row/row" class="x-row  list-group-item"
          xid="row10"> 
          <div class="x-col x-col-10" xid="col23"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-xs btn-only-icon circle-btn"
              label="button" xid="delBtn" icon="linear linear-calendarfull"> 
              <i xid="i5" class="linear linear-calendarfull"/>  
              <span xid="span16"/> 
            </a> 
          </div>  
          <div class="x-col" xid="col22"> 
            <input component="$UI/system/components/justep/input/input" class="form-control"
              xid="input12" placeHolder="请输入文字描述（最多100字）" bind-ref='$model.voteContentData.ref("fContent")'/> 
          </div> 
        </div>  
        <div xid="saveDiv" align="center" bind-click="saveDivClick"> 
          <div component="$UI/system/components/justep/row/row" class="x-row"
            xid="row1" style="width:50%;margin-left:-70px;"> 
            <div class="x-col" xid="col1" style="text-align:right; "> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-xs btn-only-icon circle-btn"
                label="button" xid="button1" icon="linear linear-bus" style="margin:0px -20px;"> 
                <i xid="i3" class="linear linear-bus"/>  
                <span xid="span4"/> 
              </a> 
            </div>  
            <div class="x-col" xid="col2" style="text-align:left;"> 
              <span xid="span5"><![CDATA[添加选项]]></span> 
            </div> 
          </div> 
        </div>  
        </div>  
      <div component="$UI/system/components/justep/panel/panel" class="panel"
        xid="panel6"> 
        <div component="$UI/system/components/justep/row/row" class="x-row list-group-item" xid="row3">
   <div class="x-col x-col-fixed h4" xid="col6" style="padding-left:5px;padding-top:10;color:#333;"><span xid="span7"><![CDATA[是否多选]]></span></div>
   <div class="x-col x-col-25" xid="col7" style="text-align:right;"><span component="$UI/system/components/justep/button/toggle" class="x-toggle" xid="toggle3" ON="是" OFF="否" type="checkbox" onChange="toggle3Change"></span></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row list-group-item num-select" xid="row4" style="display:none;">
   <div class="x-col x-col-67 h4" xid="col9" style="padding-left:5px;padding-top:10;color:#333;"><span xid="span8" style="color:#ccc;"><![CDATA[最多可选]]></span></div>
   <div class="x-col-10" xid="col10"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-xs o-add2" xid="deltBtn" icon="linear linear-volumemedium" onClick="deltBtnClick">
   <i xid="i6" class="linear linear-volumemedium"></i>
   <span xid="span3"></span></a></div>
   <div class="x-col " xid="col11"><input component="$UI/system/components/justep/input/input" class="form-control" xid="numInput" placeHolder="2" style="background-color:#F5F5F5;color:#ccc;" bind-ref='$model.voteStartData.ref("fSelect")'></input></div>
  <div class="x-col-10" xid="col12"><a component="$UI/system/components/justep/button/button" class="o-add2 btn btn-default btn-xs btn-only-icon circle-btn" xid="adBtn" icon="linear linear-bus" onClick="adBtnClick">
   <i xid="i8" class="linear linear-bus"></i>
   <span xid="span10"></span></a></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row list-group-item" xid="row6">
   <div class="x-col x-col-fixed h4" xid="col13" style="padding-left:5px;padding-top:10;color:#333;">
    <span xid="span13"><![CDATA[是否匿名]]></span></div> 
   <div class="x-col x-col-25" xid="col14" style="text-align:right;">
    <span component="$UI/system/components/justep/button/toggle" class="x-toggle" xid="toggle4" ON="是" OFF="否" type="checkbox" onChange="toggle4Change"></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row list-group-item start-publish" xid="row7" style="display:none;">
   <div class="x-col x-col-fixed h4" xid="col15" style="padding-left:5px;padding-top:10;color:#333;">
    <span xid="span14"><![CDATA[发起人可见]]></span></div> 
   <div class="x-col x-col-25" xid="col18" style="text-align:right; ">
    <span component="$UI/system/components/justep/button/toggle" class="x-toggle" xid="toggle5" ON="是" OFF="否" type="checkbox"></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row list-group-item" xid="row9">
   <div class="x-col x-col-fixed h4" xid="col19" style="padding-left:5px;padding-top:10;"><span xid="span17" class="h4" style="color:#333;"><![CDATA[截至日期]]></span></div>
   <div class="x-col x-col-20" xid="col20"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm o-dateBtn" label="一天后" xid="timeBtn1" onClick="timeBtn1Click" bind-css='{css: $model.cssData.val("col0") ==0 } '>
   <i xid="i9"></i>
   <span xid="span18">一天后</span></a></div>
   <div class="x-col x-col-20" xid="col21"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm o-dateBtn" label="一周后" xid="timeBtn2" onClick="timeBtn2Click" bind-css='{css: $model.cssData.val("col1") ==0 } '>
   <i xid="i10"></i>
   <span xid="span19">一周后</span></a></div>
  <div class="x-col x-col-20" xid="col24"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm o-dateBtn" label="一月后" xid="timeBtn3" onClick="timeBtn3Click" bind-css='{css: $model.cssData.val("col2") ==0 } '>
   <i xid="i11"></i>
   <span xid="span20">一月后</span></a></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row list-group-item" xid="row2">
   <div class="x-col" xid="col3" style="text-align:right;padding-top:10px;"><div component="$UI/system/components/justep/output/output" class="x-output" xid="timeOutput" bind-ref='$model.voteStartData.ref("fEndTime")'></div><span xid="span9"><![CDATA[2015-09-16]]>
  </span></div>
   <div class="x-col x-col-10 pull-right" xid="col8"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon" label="button" xid="button4" icon="dataControl dataControl-arrowrightl" style="color:#333;">
   <i xid="i7" class="dataControl dataControl-arrowrightl"></i>
   <span xid="span6"></span></a></div></div>
  </div> 
    <a component="$UI/system/components/justep/button/button" class="btn  btn-block o-pubBtn" label="发布" xid="publishBtn" style="color:#fff;border-radius: 5px;background-color:#00C957;width:85%;" onClick="publishBtnClick">
   <i xid="i12"></i>
   <span xid="span21">发布</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="button" xid="button7" onClick="button7Click">
   <i xid="i14"></i>
   <span xid="span23"></span></a></div> 
  </div> 
</div>
