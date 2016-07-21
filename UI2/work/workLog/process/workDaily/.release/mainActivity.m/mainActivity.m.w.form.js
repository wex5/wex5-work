define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/controlGroup/controlGroup');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/attachment/attachmentSimple');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/textarea/textarea');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/data/baasData');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/work/workLog/process/workDaily/mainActivity.m'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cayMf2i';
	this._flag_='6cedabb38969fff4cfe189984646c491';
	this.callParent(contextUrl);
 var __BaasData__ = require("$UI/system/components/justep/data/baasData");new __BaasData__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fCreateTime":{"define":"fCreateTime","label":"创建日期","name":"fCreateTime","relation":"fCreateTime","rules":{"datetime":true},"type":"DateTime"},"fDate":{"define":"fDate","label":"填报日期","name":"fDate","relation":"fDate","rules":{"date":true},"type":"Date"},"fDeptID":{"define":"fDeptID","label":"填报部门","name":"fDeptID","relation":"fDeptID","type":"String"},"fDeptName":{"define":"fDeptName","label":"填报部门名称","name":"fDeptName","relation":"fDeptName","type":"String"},"fFinishWork":{"define":"fFinishWork","label":"今日完成工作","name":"fFinishWork","relation":"fFinishWork","type":"String"},"fID":{"define":"fID","label":"fID","name":"fID","relation":"fID","rules":{"calculate":"justep.UUID.createUUID()"},"type":"String"},"fImgURL":{"define":"fImgURL","label":"图片路径","name":"fImgURL","relation":"fImgURL","type":"String"},"fNeedHelp":{"define":"fNeedHelp","label":"需协调与帮助","name":"fNeedHelp","relation":"fNeedHelp","type":"String"},"fPersonID":{"define":"fPersonID","label":"填报人","name":"fPersonID","relation":"fPersonID","type":"String"},"fPersonName":{"define":"fPersonName","label":"填报人名称","name":"fPersonName","relation":"fPersonName","type":"String"},"fReleaseScope":{"define":"fReleaseScope","label":"发布范围","name":"fReleaseScope","relation":"fReleaseScope","type":"String"},"fReleaseScopeID":{"define":"fReleaseScopeID","label":"发布范围ID","name":"fReleaseScopeID","relation":"fReleaseScopeID","type":"String"},"fRemark":{"define":"fRemark","label":"备注","name":"fRemark","relation":"fRemark","type":"String"},"fWorkPlan":{"define":"fWorkPlan","label":"明日工作计划","name":"fWorkPlan","relation":"fWorkPlan","type":"String"},"version":{"define":"version","label":"版本","name":"version","relation":"version","rules":{"integer":true},"type":"Integer"}},"directDelete":false,"events":{},"idColumn":"fID","limit":20,"queryAction":"queryOa_workdaily","saveAction":"saveOa_workdaily","tableName":"oa_workdaily","url":"/work/workLog","xid":"mainData"});
}}); 
return __result;});