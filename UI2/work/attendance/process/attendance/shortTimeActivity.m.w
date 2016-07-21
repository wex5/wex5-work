<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad" onParamsReceive="modelParamsReceive">
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="shortTimeData" idColumn="fID" autoNew="true" onCustomNew="shortTimeDataCustomNew" limit="-1">
      <column name="fID" type="String" xid="xid1"/>  
      <column name="fTime" type="String" xid="xid2"/>  
      <column name="isChecked" type="String" xid="xid3"/>  
    </div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="timePanel"> 
    <div class="x-panel-content" xid="content"> 
      <div component="$UI/system/components/justep/list/list" class="x-list"
        xid="list" data="shortTimeData"> 
        <ul class="x-list-template" xid="listTemplateUl1"> 
          <li xid="li" bind-click="liClick"> 
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row1"> 
              <div class="x-col" xid="col1"> 
                <span xid="span1" bind-text='ref("fTime")'/>
              </div>  
              <div class="x-col " xid="col3" style="text-align:right;"> 
                <span component="$UI/system/components/justep/button/radio"
                  class="x-radio" xid="radio" name="choose" checkedValue="1" uncheckedValue="0"
                  bind-value="ref(&quot;isChecked&quot;)" bind-checked="true"/>
              </div> 
            </div> 
          </li> 
        </ul> 
      </div> 
    </div> 
  </div>
</div>
