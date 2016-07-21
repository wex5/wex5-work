define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.backBtnClick = function(event) {
		this.getParentModel().close();
	};

	Model.prototype.showBtnClick = function(event) {
		justep.Shell.showPage("$UI/work/vote/process/vote/voteStart.m.w");

	};

	Model.prototype.modelLoad = function(event) {
//		debugger;
		// 数据库中没数据显示
		var count = this.comp("voteStartData").count();
		if (count == 0) {
			$(".hide-or-show").show();
		} else {
			$(".hide-or-show").hide();
		}

	};

	return Model;
});