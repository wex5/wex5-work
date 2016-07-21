define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var con = require("$UI/work/common/js/common");
	var Model = function() {
		this.callParent();
		this.date = new Date();
		
	};

	Model.prototype.openMeDetailClick = function(event) {//查看我的
		var personID = con.personID;
		justep.Shell.showPage("$UI/work/sign/process/sign/statisticsPerSignActivity.m.w", {"data":[ personID, this.date ]});
	};

	Model.prototype.openGroupClick = function(event) {//团队今日最新签到
		justep.Shell.showPage("$UI/work/sign/process/sign/groupSignActivity.m.w", {"data":this.date});
	};

	Model.prototype.selPersonClick = function(event) {//查看我的
		this.comp("selectPersontWindowDialog").open();
	};
	Model.prototype.modelLoad = function(event){
		$(this.getElementByXid("waitDiv")).hide();
		$(this.getElementByXid("content1")).show();
	};

	Model.prototype.selectPersontWindowDialogReceive = function(event){
       var personID = event.data.data[0].sPersonID;
		justep.Shell.showPage("$UI/work/sign/process/sign/statisticsPerSignActivity.m.w", {"data" : [ personID, this.date ]});
	};

	return Model;
});