<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:pc">  
  <div component="$UI/system/components/justep/model/model" xid="model">
    <div component="$UI/system/components/justep/data/bizData" xid="dCommonWords"
      concept="AP_CommonWords" limit="-1" autoLoad="true">
      <reader xid="default1" action="/OA/common/logic/action/queryCommonWordsAction"/>  
      <writer xid="default2" action="/OA/common/logic/action/saveCommonWordsAction"/>  
      <creator xid="default3" action="/OA/common/logic/action/createCommonWordsAction"/>
    </div>
  </div>  
  <div component="$UI/system/components/justep/toolBar/toolBar" class="x-toolbar form-inline x-toolbar-spliter"
    xid="toolBar1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
      onClick="{'operation':'dCommonWords.save'}" xid="button1"> 
      <i xid="i1"/>  
      <span xid="span1"/>
    </a>  
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
      onClick="{'operation':'dCommonWords.delete'}" xid="button2"> 
      <i xid="i2"/>  
      <span xid="span2"/>
    </a>  
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
      onClick="{'operation':'dCommonWords.new'}" xid="button3"> 
      <i xid="i3"/>  
      <span xid="span3"/>
    </a>  
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
      onClick="{'operation':'dCommonWords.refresh'}" xid="button4"> 
      <i xid="i4"/>  
      <span xid="span4"/>
    </a>
  </div>  
  <div component="$UI/system/components/justep/grid/grid" hiddenCaptionbar="true"
    altRows="true" class="x-grid-no-bordered" xid="grid1" data="dCommonWords"> 
    <columns xid="columns1">
       <column width="382" name="fCommonWords"  label="常用语" xid="column4" editable="true">
        <editor xid="editor1"> 
          <input component="$UI/system/components/justep/input/input" class="form-control input-sm"
            xid="iCommonWords" bind-ref="ref('fCommonWords')"/>
        </editor>
      </column>
    </columns>
  </div>
</div>
