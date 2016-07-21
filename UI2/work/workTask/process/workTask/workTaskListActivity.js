define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var con = require("$UI/work/common/js/common");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.showListClick = function(event) {
		var fID = this.comp("mainData").val("sID");
		justep.Shell.showPage(require.toUrl("./workTaskDetailActivity.w"), {
			"fID" : fID
		});
	};

	Model.prototype.AddBtnClick = function(event) {
		justep.Shell.showPage(require.toUrl("./addMainTaskActivity.w"), {
			"status" : 0
		});
	};

	Model.prototype.modelActive = function(event) {
		this.comp("mainData").refreshData();
	};

	Model.prototype.outTaskRowClick = function(event) {
		justep.Shell.showPage(require.toUrl("./workTaskOutActivity.w"));
	};

	Model.prototype.mainDataBeforeRefresh = function(event) {
		var fpersonID = con.personID;
		this.comp("mainData").setFilter("filter1", "s.sParentID is null and s.sESField01 like '%" + fpersonID + "%'");// 筛选包含当前人的任务默认
	};

	return Model;
});