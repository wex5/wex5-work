define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var allData=require("./js/loadData");
	
	var Model = function(){
		this.callParent();
	};


	Model.prototype.headSkipDataCustomRefresh = function(event){
		var url = require.toUrl("$UI/work/workLog/process/logDetail/json/headSkipData.json");
        allData.loadDataFromFile(url,event.source,true);
	};

	Model.prototype.skipDataCustomRefresh = function(event){
		var url = require.toUrl("$UI/work/workLog/process/logDetail/json/skipData.json");
        allData.loadDataFromFile(url,event.source,true);
	};

	Model.prototype.allWorkBtnClick = function(event){
		/*var url = this.comp("headSkipData").getValueByID("fUrl", 1);
		var process = this.comp("headSkipData").getValueByID("fProcess", 1);
		var activity = this.comp("headSkipData").getValueByID("fActivity", 1);
		url=url+'?'+'process='+process+'&activity='+activity;*/
		justep.Shell.showPage("$UI/work/schedule/process/workCalendar/process/workCalendar/allWorkLog.m.w");
	};

	Model.prototype.reportBtnClick = function(event){
		/*var url = this.comp("headSkipData").getValueByID("fUrl", 2);
		var process = this.comp("headSkipData").getValueByID("fProcess", 2);
		var activity = this.comp("headSkipData").getValueByID("fActivity", 2);
		url=url+'?'+'process='+process+'&activity='+activity;*/
		/*justep.Shell.showPage("$UI/work/workLog/process/workLogReport/mainActivity.m.w");*/
//		alert("WeX5没有报表组件！待定")
	};

	Model.prototype.modelLoad = function(event){
		var iconClass = this.comp("headSkipData").getValueByID("fIconClass", 2);
		var color = this.comp("headSkipData").getValueByID("fColor", 2);
		var label = this.comp("headSkipData").getValueByID("fLabel", 2);
		this.comp("reportBtn").set({
			"label" : label,
			"icon" : iconClass,
		})
	};

	Model.prototype.leaveBtnClick = function(event){
		var row = event.bindingContext.$object;
		var url =row.val("fUrl");
		/*var process = row.row.fProcess.value.latestValue;
		var activity = row.row.fActivity.value.latestValue;
		url=url+'?'+'process='+process+'&activity='+activity;*/
		justep.Shell.showPage(require.toUrl(url));
	};
	return Model;
});