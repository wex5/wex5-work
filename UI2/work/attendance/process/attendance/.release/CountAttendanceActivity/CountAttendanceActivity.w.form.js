define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/windowContainer/windowContainer');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
require('$model/UI2/system/components/bootstrap/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/work/attendance/process/attendance/CountAttendanceActivity'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='ciimeAb';
	this._flag_='c05b6991d24b7331d9e432a4fc134bee';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fDeptID":{"define":"fDeptID","label":"部门ID","name":"fDeptID","relation":"fDeptID","type":"String"},"fDeptName":{"define":"fDeptName","label":"部门名称","name":"fDeptName","relation":"fDeptName","type":"String"},"fID":{"define":"fID","label":"ID","name":"fID","relation":"fID","type":"String"},"fOrgID":{"define":"fOrgID","label":"组织ID","name":"fOrgID","relation":"fOrgID","type":"String"},"fOrgName":{"define":"fOrgName","label":"组织名称","name":"fOrgName","relation":"fOrgName","type":"String"},"fPersonID":{"define":"fPersonID","label":"人员ID","name":"fPersonID","relation":"fPersonID","type":"String"},"fPersonName":{"define":"fPersonName","label":"人员名称","name":"fPersonName","relation":"fPersonName","type":"String"},"fStatus":{"define":"fStatus","label":"状态名","name":"fStatus","relation":"fStatus","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"attenStatusDataCustomRefresh"},"idColumn":"fID","initData":"[{\"fID\":\"\",\"fOrgName\":\"\"}]","limit":-1,"xid":"attenStatusData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fActualPersonCount":{"define":"fActualPersonCount","label":"实到","name":"fActualPersonCount","relation":"fActualPersonCount","type":"String"},"fDeptID":{"define":"fDeptID","label":"部门ID","name":"fDeptID","relation":"fDeptID","type":"String"},"fDeptName":{"define":"fDeptName","label":"部门名称","name":"fDeptName","relation":"fDeptName","type":"String"},"fID":{"define":"fID","name":"fID","relation":"fID","type":"String"},"fOrgID":{"define":"fOrgID","label":"组织ID","name":"fOrgID","relation":"fOrgID","type":"String"},"fOrgName":{"define":"fOrgName","label":"组织名称","name":"fOrgName","relation":"fOrgName","type":"String"},"fOrgPersonCount":{"define":"fOrgPersonCount","label":"应到","name":"fOrgPersonCount","relation":"fOrgPersonCount","type":"String"},"fStatus":{"define":"fStatus","name":"fStatus","relation":"fStatus","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"deptStatusDataCustomRefresh"},"idColumn":"fID","initData":"[{\"fID\":\"1212\",\"fOrgID\":\"1\",\"fOrgName\":\"阳光科技\",\"fDeptID\":\"/F92C257AEA094865A96.ogn\",\"fDeptName\":\"/阳光集团（演示数据）/综合办公室\",\"fOrgPersonCount\":\"104\",\"fActualPersonCount\":\"104\"}]","limit":1,"xid":"deptStatusData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"ID":{"define":"ID","label":"ID","name":"ID","relation":"ID","type":"String"},"fStatus":{"define":"fStatus","label":"状态","name":"fStatus","relation":"fStatus","type":"String"}},"directDelete":false,"events":{},"idColumn":"ID","initData":"[{\"ID\":\"01\",\"fStatus\":\"正常\"},{\"ID\":\"02\",\"fStatus\":\"迟到\"},{\"ID\":\"03\",\"fStatus\":\"早退\"},{\"ID\":\"04\",\"fStatus\":\"未打卡\"},{\"ID\":\"05\",\"fStatus\":\"出差\"},{\"ID\":\"06\",\"fStatus\":\"外出\"},{\"ID\":\"07\",\"fStatus\":\"请假\"},{\"ID\":\"08\",\"fStatus\":\"旷工\"}]","limit":20,"xid":"AllStatusData"});
}}); 
return __result;});