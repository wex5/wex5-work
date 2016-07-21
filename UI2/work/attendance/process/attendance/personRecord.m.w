<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onParamsReceive="modelParamsReceive" onLoad="modelLoad"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="statusData" idColumn="label">
   <column name="label" type="String" xid="xid6"></column>
   <column name="value" type="String" xid="xid7"></column>
   <data xid="default1">[{&quot;label&quot;:&quot;迟到&quot;,&quot;value&quot;:&quot;迟到&quot;},{&quot;label&quot;:&quot;早退&quot;,&quot;value&quot;:&quot;早退&quot;},{&quot;label&quot;:&quot;旷工&quot;,&quot;value&quot;:&quot;旷工&quot;},{&quot;label&quot;:&quot;未打卡&quot;,&quot;value&quot;:&quot;未打卡&quot;}]</data>
   <column name="isHide" type="String" xid="xid2"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="mianData" idColumn="fID">
   <column label="ID" name="fID" type="String" xid="xid1"></column>
   <column label="打卡时间" name="fCheckTime" type="String" xid="xid3"></column>
   <column label="状态" name="fStatus" type="String" xid="xid4"></column>
   <column label="异常考勤时差" name="fUnusualMistiming" type="String" xid="xid5"></column>
   <column name="isChecked" type="String" xid="xid10"></column>
   <data xid="default2">[]</data></div></div> 
<div xid="waitDiv" style="position:relative;height:200px;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button2" style="position:absolute;font-size:30px;top:42%;left:42%;" icon="icon-loading-a">
    <i xid="i4" class="icon-loading-a"></i>
    <span xid="span4"></span></a> </div><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2" style="display:none;">
   <div class="x-panel-top" xid="top2" height="150">
    <div xid="statistics" style="background-color:transparent;border-style:solid solid solid solid;border-width:0px 0px 1px 0px;border-color:#808080 #808080 #808080 #808080;">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row" style="padding:0px 0px 0px 0px;margin:0px 0px 0px 0px;">
      <div class="x-col x-col-33" style="padding-right:0px;margin-right:0px;" xid="col1">
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="dateShow" style="height:763%;" bind-click="dateShowClick">
        <div class="x-col" xid="col5" style="text-align:center;border-style:solid solid solid solid;border-width:0px 1px 1px 1px;border-color:#808080 #808080 #808080 #808080;border-radius:10px;padding:0px 0px 0px 0px;margin:0px 0px 0px 0px;height:130px;background-color:white;">
         <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="padding:0px 0px 0px 0px;margin:0px 0px 0px 0px;border-radius:8px 8px 0px 0px;background-color:#3399F3;">
          <div class="x-col" xid="col13" style="color:#FFFFFF;font-size:large;font-weight:bold;">
           <span xid="span1">日期</span></div> </div> 
         <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9">
          <div class="x-col x-col-center" xid="col14" style="padding-top:20%;height:100px;">
           <span xid="yearShowSpan" style="display:block;font-size:20px;"></span>
           <span xid="monthShowSpan" style="font-size:20px;"></span>
           <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon" label="button" xid="button1" icon="linear linear-diamond" style="border-radius:50%;border:1px solid #999;">
            <i xid="i6" class="linear linear-diamond"></i>
            <span xid="span12"></span></a> </div> </div> </div> </div> </div> 
      <div class="x-col" xid="col10">
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="detailShow">
        <div class="x-col" xid="col35" style="text-align:center;border-style:solid solid solid solid;border-width:1px 1px 1px 1px;border-color:#808080 #808080 #808080 #808080;border-radius:10px;padding:0px 0px 0px 0px;margin:0px 0px 0px 0px;background-color:white;">
         <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10" style="padding:0px 0px 0px 0px;margin:0px 0px 0px 0px;">
          <div class="x-col " xid="col15" style="padding:0px 0px 0px 0px;margin:0px 0px 0px 0px;">
           <div component="$UI/system/components/justep/row/row" class="x-row" xid="row11" style="padding:0px 0px 0px 0px;margin:0px 0px 0px 0px;">
            <div class="x-col " xid="col18" style="text-align:center;">
             <span style="font-size:medium;" xid="span2">正常考勤</span></div> </div> 
           <div component="$UI/system/components/justep/row/row" class="x-row" xid="row12" style="padding:0px 0px 0px 0px;margin:0px 0px 0px 0px;">
            <div class="x-col " xid="col19" style="text-align:center;border-style:solid solid solid solid;border-width:0px 0px 1px 0px;border-color:#808080 #808080 #808080 #808080;">
             <span xid="normalSpan" style="font-size:medium;"></span></div> </div> </div> </div> 
         <div component="$UI/system/components/justep/row/row" class="x-row" xid="row13" style="padding:0px 0px 0px 0px;margin:0px 0px 0px 0px;border-color:#808080 #808080 #808080 #808080;">
          <div class="x-col" xid="col20" style="margin:0px 0px 0px 0px;padding:0px 0px 0px 0px;border-right:1px solid #808080;">
           <div component="$UI/system/components/justep/row/row" class="x-row" xid="row14" style="margin:0px 0px 0px 0px;padding:0px 0px 0px 0px;">
            <div class="x-col" xid="col27">
             <span xid="span6">迟到</span></div> </div> 
           <div component="$UI/system/components/justep/row/row" class="x-row" xid="row15" style="margin:0px 0px 0px 0px;padding:0px 0px 0px 0px;">
            <div class="x-col" xid="col28">
             <span xid="lateSpan" style="font-size:medium;"></span></div> </div> </div> 
          <div class="x-col" xid="col22" style="margin:0px 0px 0px 0px;padding:0px 0px 0px 0px;border-style:solid solid solid solid;border-width:0px 1px 0px 0px;border-color:#808080 #808080 #808080 #808080;">
           <div component="$UI/system/components/justep/row/row" class="x-row" xid="row17" style="margin:0px 0px 0px 0px;padding:0px 0px 0px 0px;">
            <div class="x-col" xid="col30">
             <span xid="span8">早退</span></div> </div> 
           <div component="$UI/system/components/justep/row/row" class="x-row" xid="row16" style="margin:0px 0px 0px 0px;padding:0px 0px 0px 0px;">
            <div class="x-col" xid="col29">
             <span xid="earlySpan" style="font-size:medium;"></span></div> </div> </div> 
          <div class="x-col" xid="col24" style="margin:0px 0px 0px 0px;padding:0px 0px 0px 0px;">
           <div component="$UI/system/components/justep/row/row" class="x-row" xid="row19" style="margin:0px 0px 0px 0px;padding:0px 0px 0px 0px;">
            <div class="x-col" xid="col32">
             <span xid="span10">未打卡</span></div> </div> 
           <div component="$UI/system/components/justep/row/row" class="x-row" xid="row18" style="margin:0px 0px 0px 0px;padding:0px 0px 0px 0px;">
            <div class="x-col" xid="col31">
             <span xid="absentSpan" style="font-size:medium;"></span></div> </div> </div> </div> </div> </div> </div> </div> </div> </div> 
   <div class="x-panel-content" xid="content4" style="margin-top:10px;">
    <div xid="div1" style="margin-left:10px;margin-top:10px;">
     <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="statusData">
      <ul class="x-list-template" xid="listTemplateUl1">
       <li xid="li1">
        <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" bind-visible=' val("isHide")' style="padding:0px 0px 0px 0px;margin:0px 0px 0px 0px;">
         <div class="x-col x-col-fixed x-col-center" xid="col2" style="width:auto;margin:auto auto auto auto;">
          <div xid="div4" style="height:10px;width:10px;border-radius:50%;background-color:#FF8000;"></div></div> 
         <div class="x-col" xid="col16" style="padding:0px 0px 0px 0px;margin:0px 0px 0px 0px;">
          <span xid="span3" bind-text='val("value")' style="font-size:small;font-weight:bold;"></span></div> </div> 
        <div xid="div7" style="border-style:groove groove groove groove;border-width:0px 0px 0px 2px;margin-left:10px;border-color:#FDFDFD #FDFDFD #FDFDFD #FDFDFD;">
         <div component="$UI/system/components/justep/list/list" class="x-list" xid="list3" data="mianData" filter=' $row.val("fStatus") == val("value")'>
          <ul class="x-list-template" xid="listTemplateUl3">
           <li xid="li3" style="padding-left:15px;margin-top:5px;margin-bottom:5px;">
            <span xid="span14" bind-text='val("fCheckTime")' style="display:block;"></span>
            <span xid="span5" bind-visible=" val(&quot;fStatus&quot;) =='迟到' ||'早退'" bind-text='val("fUnusualMistiming")' style="border-radius:3px;font-size:x-small;color:#FFFFFF;background-color:#FF8040;"></span></li> </ul> </div> </div> </li> </ul> </div> </div> 
  </div> </div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="dateChooseDlg" status="normal" onReceive="dateChooseDlgReceive" onReceived="dateChooseDlgReceived" style="top:10px;left:79px;" showTitle="false"></span></div>