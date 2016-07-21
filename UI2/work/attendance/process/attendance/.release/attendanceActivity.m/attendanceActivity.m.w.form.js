define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/messageDialog/messageDialog');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/windowContainer/windowContainer');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/data/baasData');
require('$model/UI2/system/components/justep/button/buttonGroup');
require('$model/UI2/system/components/justep/datePicker/datePicker');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/work/attendance/process/attendance/attendanceActivity.m'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cy2Ib2u';
	this._flag_='61a3ef4dd83a2eff8c4ee4c335b591df';
	this.callParent(contextUrl);
 var __BaasData__ = require("$UI/system/components/justep/data/baasData");new __BaasData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":false,"defCols":{"fAbsenteeism":{"define":"fAbsenteeism","label":"是否旷工","name":"fAbsenteeism","relation":"fAbsenteeism","type":"String"},"fCheckAreaAM":{"define":"fCheckAreaAM","label":"早签到地点","name":"fCheckAreaAM","relation":"fCheckAreaAM","type":"String"},"fCheckAreaPM":{"define":"fCheckAreaPM","label":"晚签退地点","name":"fCheckAreaPM","relation":"fCheckAreaPM","type":"String"},"fCheckInAM":{"define":"fCheckInAM","label":"签到时间AM","name":"fCheckInAM","relation":"fCheckInAM","rules":{"datetime":true},"type":"DateTime"},"fCheckInPM":{"define":"fCheckInPM","label":"签到时间PM","name":"fCheckInPM","relation":"fCheckInPM","rules":{"datetime":true},"type":"DateTime"},"fCheckOutAM":{"define":"fCheckOutAM","label":"签退时间AM","name":"fCheckOutAM","relation":"fCheckOutAM","rules":{"datetime":true},"type":"DateTime"},"fCheckOutPM":{"define":"fCheckOutPM","label":"签退时间PM","name":"fCheckOutPM","relation":"fCheckOutPM","rules":{"datetime":true},"type":"DateTime"},"fCheckSite":{"define":"fCheckSite","label":"考勤地点","name":"fCheckSite","relation":"fCheckSite","type":"String"},"fDeptID":{"define":"fDeptID","label":"考勤部门ID","name":"fDeptID","relation":"fDeptID","type":"String"},"fDeptName":{"define":"fDeptName","label":"考勤部门名称","name":"fDeptName","relation":"fDeptName","type":"String"},"fID":{"define":"fID","label":"fID","name":"fID","relation":"fID","rules":{"calculate":"justep.UUID.createUUID()"},"type":"String"},"fIsLate":{"define":"fIsLate","label":"是否迟到","name":"fIsLate","relation":"fIsLate","type":"String"},"fIsLateRemark":{"define":"fIsLateRemark","label":"迟到备注","name":"fIsLateRemark","relation":"fIsLateRemark","type":"String"},"fIsLeaving":{"define":"fIsLeaving","label":"是否早退","name":"fIsLeaving","relation":"fIsLeaving","type":"String"},"fIsLeavingRemark":{"define":"fIsLeavingRemark","label":"早退备注","name":"fIsLeavingRemark","relation":"fIsLeavingRemark","type":"String"},"fLateImg":{"define":"fLateImg","label":"迟到图片","name":"fLateImg","relation":"fLateImg","type":"String"},"fLeavingImg":{"define":"fLeavingImg","label":"早退图片","name":"fLeavingImg","relation":"fLeavingImg","type":"String"},"fOrgID":{"define":"fOrgID","label":"考勤组织ID","name":"fOrgID","relation":"fOrgID","type":"String"},"fOrgName":{"define":"fOrgName","label":"考勤组织名称","name":"fOrgName","relation":"fOrgName","type":"String"},"fPersonID":{"define":"fPersonID","label":"考勤人ID","name":"fPersonID","relation":"fPersonID","type":"String"},"fPersonName":{"define":"fPersonName","label":"考勤人名称","name":"fPersonName","relation":"fPersonName","type":"String"},"version":{"define":"version","label":"版本","name":"version","relation":"version","rules":{"integer":true},"type":"Integer"}},"directDelete":false,"events":{},"idColumn":"fID","limit":20,"queryAction":"queryOa_chekinout","saveAction":"saveOa_chekinout","tableName":"oa_chekinout","url":"/work/attendance","xid":"checkInOutData"});
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fAttendanceClass":{"define":"fAttendanceClass","label":"班制","name":"fAttendanceClass","relation":"fAttendanceClass","type":"String"},"fDeparting":{"define":"fDeparting","label":"班次","name":"fDeparting","relation":"fDeparting","type":"String"},"fEndAM":{"define":"fEndAM","label":"上午下班时间","name":"fEndAM","relation":"fEndAM","type":"String"},"fEndPM":{"define":"fEndPM","label":"下午下班时间","name":"fEndPM","relation":"fEndPM","type":"String"},"fStartAM":{"define":"fStartAM","label":"上午上班时间","name":"fStartAM","relation":"fStartAM","type":"String"},"fStartPM":{"define":"fStartPM","label":"下午上班时间","name":"fStartPM","relation":"fStartPM","type":"String"},"id":{"define":"id","label":"ID","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"TimeDataCustomRefresh"},"idColumn":"id","initData":"[{\"id\":\"1\",\"fAttendanceClass\":\"固定班制\",\"fDeparting\":\"A\",\"fStartAM\":\"08:00:00\",\"fEndAM\":\"18:00:00\"}]","limit":20,"xid":"TimeData"});
}}); 
return __result;});