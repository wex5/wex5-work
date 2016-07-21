define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
require('$model/UI2/system/components/justep/messageDialog/messageDialog');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/work/attendance/process/attendance/AttendanceManagerActivity.m'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cfmYVVn';
	this._flag_='9e42f032a894435da96e7d087e873eb4';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":false,"confirmRefresh":true,"defCols":{"fAMPM":{"define":"fAMPM","label":"考勤时间","name":"fAMPM","relation":"fAMPM","type":"String"},"fAttenAddrName":{"define":"fAttenAddrName","label":"考勤地点名称","name":"fAttenAddrName","relation":"fAttenAddrName","type":"String"},"fAttendanceClass":{"define":"fAttendanceClass","label":"班次","name":"fAttendanceClass","relation":"fAttendanceClass","type":"String"},"fAttendanceGroupName":{"define":"fAttendanceGroupName","label":"考勤组名称","name":"fAttendanceGroupName","relation":"fAttendanceGroupName","type":"String"},"fAttendanceID":{"define":"fAttendanceID","label":"考勤管理ID","name":"fAttendanceID","relation":"fAttendanceID","type":"String"},"fDepart":{"define":"fDepart","label":"班制","name":"fDepart","relation":"fDepart","type":"String"},"fPersonNameJ":{"define":"fPersonNameJ","label":"参与考勤人数","name":"fPersonNameJ","relation":"fPersonNameJ","type":"String"},"fPersonNameJID":{"define":"fPersonNameJID","label":"参与考勤人数ID","name":"fPersonNameJID","relation":"fPersonNameJID","type":"String"},"fPersonNameS":{"define":"fPersonNameS","label":"考勤组负责人","name":"fPersonNameS","relation":"fPersonNameS","type":"String"},"fPersonNameSID":{"define":"fPersonNameSID","label":"考勤组负责人ID","name":"fPersonNameSID","relation":"fPersonNameSID","type":"String"},"fWeek":{"define":"fWeek","label":"考勤周","name":"fWeek","relation":"fWeek","type":"String"}},"directDelete":false,"events":{},"idColumn":"fAttendanceID","initData":"[{}]","limit":-1,"xid":"AttendanceInfo"});
}}); 
return __result;});