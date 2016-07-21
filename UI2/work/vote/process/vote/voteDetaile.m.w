<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;resolution:360 x 640;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:432px;left:138px;height:auto;"></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1" style="background-color:#F5F5F5;"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="投票详情"
        class="x-titlebar"> 
        <a component="$UI/system/components/justep/button/button" label=""
          class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}"
          xid="backBtn"> 
          <i class="icon-chevron-left"/>  
          <span/> 
        </a>
        <div class="x-titlebar-title">投票详情</div>  
        <div class="x-titlebar-right reverse"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-right"
            label="更多" xid="saveBtn" style="background-color:#00C957;border:none;"> 
            <i xid="i1"/>  
            <span xid="span1">更多</span>
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
        <div component="$UI/system/components/justep/row/row" class="x-row"
          xid="row1"> 
          <div class="x-col" xid="col1">
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row4"> 
              <div class="x-col x-col-fixed" xid="col10">
                <div xid="div1" class="o-bog" style="text-align:center;padding-top:25px;">
                <span xid="span5"><![CDATA[李慧]]></span></div>
              </div>  
              <div class="x-col x-col-67" xid="col11">
                <div component="$UI/system/components/justep/row/row" class="x-row"
                  xid="row8">
                  <span xid="span4" class="h4" style="color:#333;"><![CDATA[李慧]]></span>
                </div>  
                <div component="$UI/system/components/justep/row/row" class="x-row"
                  xid="row7">
                  <span xid="span3"><![CDATA[已投票：]]></span>
                  <span xid="span16"><![CDATA[10]]></span>
                </div> 
              </div> 
            </div>
          </div>  
          <div class="x-col" xid="col2">
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row11"> 
              <div class="x-col x-col-20" xid="col19" style="padding:0px; ">
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-only-icon" label="button" xid="voteBtnIcon" icon="glyphicon glyphicon-bookmark"> 
                  <i xid="i3" class="glyphicon glyphicon-bookmark"/>  
                  <span xid="span9"/>
                </a>
              </div>  
              <div class="x-col" xid="col20">
                <span xid="span7"><![CDATA[实名投票]]></span>  
                <span xid="span10"><![CDATA[/]]></span>  
                <span xid="span11"><![CDATA[单选]]></span>
              </div>
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row12"> 
              <div class="x-col x-col-20" xid="col22" style="padding:0px; "> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-only-icon" label="button" xid="timeBtn" icon="dataControl dataControl-locateo"> 
                  <i xid="i4" class="dataControl dataControl-locateo"/>  
                  <span xid="span13"/>
                </a> 
              </div>  
              <div class="x-col" xid="col21"> 
                <span xid="span12"><![CDATA[截至]]></span>  
                <span xid="span14"><![CDATA[07/05]]></span>  
                <span xid="span15" style="margin-left:8px;"><![CDATA[15:16]]></span>
              </div>
            </div>
          </div> 
        </div>
      <div component="$UI/system/components/justep/row/row" class="x-row list-group-item h4" xid="row2" style="padding:10px;color:#ccc;">
   <span xid="span6"><![CDATA[发起中建议]]></span></div></div> 
    <div component="$UI/system/components/justep/panel/panel" class="panel" xid="panel2">
   
   <div component="$UI/system/components/justep/row/row" class="x-row list-group-item" xid="row15">
   <div class="x-col x-col-10" xid="col16"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon" label="button" xid="button4" icon="icon-edit">
   <i xid="i7" class="icon-edit"></i>
   <span xid="span29"></span></a></div>
   <div class="x-col" xid="col17" style="margin-top:5px;"><span xid="span30" class="h4" style="color:#333;"><![CDATA[发起标题]]></span></div>
   </div>
  
  
  
  <div xid="div6" class="list-group-item"><div component="$UI/system/components/justep/row/row" class="x-row " xid="row20">
   <span xid="span39">发起内容</span></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row19">
   <div class="x-col" xid="col33" style="margin-right:20px;">
    <div class="progress" component="$UI/system/components/bootstrap/progress/progress" xid="progress3" valuenow="50">
     <div class="progress-bar progress-bar-success" role="progressbar" xid="progressBar3">
      <span xid="span38">0%</span></div> </div> </div> 
   <div class="x-col x-col-25" xid="col34">
    <span xid="span37">0票</span>
    <div xid="div5" align="right" class="o-percent" style="color:#fff;">
     <span xid="span36">40%</span></div> </div> </div></div>
  <div xid="div7" class="list-group-item"><div component="$UI/system/components/justep/row/row" class="x-row " xid="row17">
   <span xid="span31"><![CDATA[发起内容]]></span></div><div component="$UI/system/components/justep/row/row" class="x-row " xid="row18">
   <div class="x-col" xid="col29" style="margin-right:20px;"><div class="progress" component="$UI/system/components/bootstrap/progress/progress" xid="progress2" valuenow="50">
   <div class="progress-bar progress-bar-success" role="progressbar" xid="progressBar2">
    <span xid="span33">0%</span></div> </div></div>
   <div class="x-col x-col-25" xid="col30"><span xid="span34"><![CDATA[0票]]></span>
  <div xid="div3" align="right" class="o-percent" style="color:#fff;"><span xid="span35"><![CDATA[40%]]></span></div></div>
   </div></div>
  <div xid="div8" style="text-align:center;padding:20px;background-color:#F5F5F5;"><span xid="span40"><![CDATA[投票详情]]></span></div></div>
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel7">
   
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row21">
   <div class="x-col x-col-20" xid="col35"><div xid="div10" class="o-samll" style="text-align:center;padding-top:15px;">
   <span xid="span41">李慧</span></div></div>
   <div class="x-col" xid="col36">
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row22">
   <span xid="span42"><![CDATA[李慧]]></span></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row23">
   <span xid="span43"><![CDATA[已投票：“]]>
  </span><span xid="span44" style="color:red;"><![CDATA[人数费用]]>
  </span><span xid="span46"><![CDATA[”]]></span></div>
  </div>
   <div class="x-col" xid="col37" style="text-align:right;"><span xid="span47"><![CDATA[2015-07-13 15:43:42]]></span></div></div></div>
  
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row24" style="background-color:#fff;">
   <div class="x-col" xid="col44"></div>
   <div class="x-col" xid="col45"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block o-pubBtn" label="已投票" xid="button6">
   <i xid="i9"></i>
   <span xid="span49">已投票</span></a></div>
   <div class="x-col" xid="col46"></div></div></div> 
  </div> 
</div>
