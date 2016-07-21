<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"><div component="$UI/system/components/justep/data/data" autoLoad="false" xid="longTimeData" idColumn="fID" autoNew="true" onCustomNew="longTimeDataCustomNew" limit="-1">
   <column name="fID" type="String" xid="xid1"></column>
   <column name="fTime" type="String" xid="xid2"></column>
   <column name="isChecked" type="String" xid="xid3"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="timePanel">
   <div class="x-panel-content" xid="content">
    <div component="$UI/system/components/justep/list/list" class="x-list" xid="list" data="longTimeData">
     <ul class="x-list-template" xid="listTemplateUl1">
      <li xid="li" bind-click="liClick">
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
        <div class="x-col" xid="col1">
         <span xid="span1" bind-text='val("fTime")'></span></div> 
        <div class="x-col " xid="col3" style="text-align:right;">
         <span component="$UI/system/components/justep/button/radio" class="x-radio" xid="radio" name="choose" checkedValue="1" uncheckedValue="0" bind-value='ref("isChecked")' bind-checked="true"></span></div> </div> </li> </ul> </div> </div> </div></div>