define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var con = require("$UI/work/common/js/common");

	var Model = function(){
		this.callParent();
		this.actionUrl = "/baas/justep/attachment/simpleFileStore";
	};

	//getRequest方法中需要的参数
	var workDaily,workDailyAction,workWeekly,workWeeklyAction,workMonthly,workMonthlyAction,sScheDay;
	
	Model.prototype.getUrl = function(id,photo){
		var src = "";
		if (photo != "" && photo != "undefined" && photo != null) {
			var imageJson = eval("(" + photo + ")");
			var realFileName = imageJson[0]["realFileName"];
			var storeFileName = imageJson[0]["storeFileName"];
			var ownerID = id;
			var operateType = "browse";
			var url = this.actionUrl + '?realFileName=' + realFileName + '&storeFileName=' + storeFileName + '&ownerID=' + ownerID + '&operateType=' + operateType;
			src = require.toUrl(url);
		}

		return src;
	}
	
	Model.prototype.modelLoad = function(event){
		workDaily="workDailyData";
		workDailyAction="queryOA_WorkDailyScope";
		workWeekly="workWeeklyData";
		workWeeklyAction="queryOA_WorkWeeklyScope";
		workMonthly="workMonthlyData";
		workMonthlyAction="queryOA_WorkmonthlyScope";
		this.getRequest(workDailyAction,workDaily);
	};
	
	
	
	Model.prototype.getRequest = function(action,dataStr) {
		var self=this;
		justep.Baas.sendRequest({
			"url" : "/work/workLog",
			"action" : action,
			"async" : false,
			"params" : {
						'fPersonID':con.personID
						},
			"success" :function(data) {
				if (data) {
					self.comp(dataStr).loadData(data);
				
				}
			}
		});
		
		//加载之前的动画
		$(this.getElementByXid("waitDiv")).hide();
		$(this.getElementByXid("content1")).show();
	}

	Model.prototype.WorkDailyBtnClick = function(event){
		this.getRequest(workDailyAction,workDaily);
	};

	Model.prototype.WorkWeeklyBtnClick = function(event){
		this.getRequest(workWeeklyAction,workWeekly);
	};

	Model.prototype.WorkmonthlyBtnClick = function(event){
		this.getRequest(workMonthlyAction,workMonthly);
	};

	Model.prototype.controlGroupClick = function(event){
		if($(event.target).hasClass("x-control-group-title")){
			$(".x-control-group-title").next("li").hide();
			$(event.target).next("li").show();
		}
	};

	
	Model.prototype.image2Click = function(event){
		this.comp("imgDialog").set({
			"status": "normal",
			"resizable" : false,
			"width": "80%",
			"height": "auto"
		});
		this.comp("imgDialog").open({"data":event.target.src});
	};

	
	Model.prototype.image3Click = function(event){
       this.comp("imgDialog").set({
			"status": "normal",
			"resizable" : false,
			"width": "80%",
			"height": "auto"
		});
		this.comp("imgDialog").open({"data":event.target.src});
	};

	
	Model.prototype.image4Click = function(event){
		this.comp("imgDialog").set({
			"status": "normal",
			"resizable" : false,
			"width": "80%",
			"height": "auto"
		});
		this.comp("imgDialog").open({"data":event.target.src});
	};

	
	return Model;
});