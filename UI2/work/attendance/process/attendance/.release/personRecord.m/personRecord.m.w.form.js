define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/work/attendance/process/attendance/personRecord.m'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cf2yEjq';
	this._flag_='de0b642f9ea1c6f2ec1f0a11e9e33192';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"isHide":{"define":"isHide","name":"isHide","relation":"isHide","type":"String"},"label":{"define":"label","name":"label","relation":"label","type":"String"},"value":{"define":"value","name":"value","relation":"value","type":"String"}},"directDelete":false,"events":{},"idColumn":"label","initData":"[{\"label\":\"迟到\",\"value\":\"迟到\"},{\"label\":\"早退\",\"value\":\"早退\"},{\"label\":\"旷工\",\"value\":\"旷工\"},{\"label\":\"未打卡\",\"value\":\"未打卡\"}]","limit":20,"xid":"statusData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fCheckTime":{"define":"fCheckTime","label":"打卡时间","name":"fCheckTime","relation":"fCheckTime","type":"String"},"fID":{"define":"fID","label":"ID","name":"fID","relation":"fID","type":"String"},"fStatus":{"define":"fStatus","label":"状态","name":"fStatus","relation":"fStatus","type":"String"},"fUnusualMistiming":{"define":"fUnusualMistiming","label":"异常考勤时差","name":"fUnusualMistiming","relation":"fUnusualMistiming","type":"String"},"isChecked":{"define":"isChecked","name":"isChecked","relation":"isChecked","type":"String"}},"directDelete":false,"events":{},"idColumn":"fID","initData":"[]","limit":20,"xid":"mianData"});
}}); 
return __result;});