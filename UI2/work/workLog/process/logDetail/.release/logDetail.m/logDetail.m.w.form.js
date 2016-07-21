define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/work/workLog/process/logDetail/logDetail.m'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cuMjima';
	this._flag_='04117fd88b6f18082f4fed783d3e94ba';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fActivity":{"define":"fActivity","name":"fActivity","relation":"fActivity","type":"String"},"fColor":{"define":"fColor","label":"图标颜色","name":"fColor","relation":"fColor","type":"String"},"fID":{"define":"fID","name":"fID","relation":"fID","type":"String"},"fIconClass":{"define":"fIconClass","label":"图标","name":"fIconClass","relation":"fIconClass","type":"String"},"fLabel":{"define":"fLabel","label":"名称","name":"fLabel","relation":"fLabel","type":"String"},"fProcess":{"define":"fProcess","name":"fProcess","relation":"fProcess","type":"String"},"fUrl":{"define":"fUrl","label":"路径","name":"fUrl","relation":"fUrl","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"headSkipDataCustomRefresh"},"idColumn":"fID","limit":20,"xid":"headSkipData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fActivity":{"define":"fActivity","name":"fActivity","relation":"fActivity","type":"String"},"fColor":{"define":"fColor","label":"图标颜色","name":"fColor","relation":"fColor","type":"String"},"fID":{"define":"fID","name":"fID","relation":"fID","type":"String"},"fIconClass":{"define":"fIconClass","label":"图标","name":"fIconClass","relation":"fIconClass","type":"String"},"fLabel":{"define":"fLabel","label":"名称","name":"fLabel","relation":"fLabel","type":"String"},"fProcess":{"define":"fProcess","name":"fProcess","relation":"fProcess","type":"String"},"fUrl":{"define":"fUrl","label":"路径","name":"fUrl","relation":"fUrl","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"skipDataCustomRefresh"},"idColumn":"fID","limit":20,"xid":"skipData"});
}}); 
return __result;});