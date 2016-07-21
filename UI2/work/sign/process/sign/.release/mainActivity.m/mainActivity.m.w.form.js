define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/work/sign/process/sign/mainActivity.m'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='criqIFf';
	this._flag_='7a63af3172edeeb6fc6769a7f36034b3';
	this.callParent(contextUrl);
 require('css!$UI/work/common/css/pub').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fDimension":{"define":"fDimension","name":"fDimension","relation":"fDimension","type":"String"},"fID":{"define":"fID","name":"fID","relation":"fID","type":"String"},"fImgURL":{"define":"fImgURL","name":"fImgURL","relation":"fImgURL","type":"String"},"fLongitude":{"define":"fLongitude","name":"fLongitude","relation":"fLongitude","type":"String"},"fPersonName":{"define":"fPersonName","name":"fPersonName","relation":"fPersonName","type":"String"},"fRemark":{"define":"fRemark","name":"fRemark","relation":"fRemark","type":"String"},"fSignAddress":{"define":"fSignAddress","name":"fSignAddress","relation":"fSignAddress","type":"String"},"fSignTime":{"define":"fSignTime","name":"fSignTime","relation":"fSignTime","rules":{"datetime":true},"type":"DateTime"}},"directDelete":false,"events":{"onCustomRefresh":"mainDataCustomRefresh"},"idColumn":"fID","limit":20,"xid":"mainData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"address":{"define":"address","label":"地址","name":"address","relation":"address","type":"String"},"editStatus":{"define":"editStatus","label":"编辑状态","name":"editStatus","relation":"editStatus","type":"String"}},"directDelete":false,"events":{},"idColumn":"editStatus","initData":"[{\"editStatus\":\"编辑\"}]","limit":20,"xid":"statusData"});
}}); 
return __result;});