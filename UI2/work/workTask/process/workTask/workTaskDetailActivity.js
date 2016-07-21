define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var con = require("$UI/work/common/js/common");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.addChildBtnClick = function(event) {
		var parentID = this.params.fID;
		justep.Shell.showPage(require.toUrl("./addChildTaskActivity.w"), {
			"parentID" : parentID
		});
	};

	Model.prototype.accomBtnClick = function(event) {
		var self = this;
		if (this.comp("parentData").getValueByID("sStatusName", this.params.fID) == "未确认") {
			this.comp("messageDialog").show({
				"message" : "还未接受，无法完成"
			});
			return;
		}
		justep.Baas.sendRequest({
			"url" : "/work/workTask",
			"action" : "workTaskQueryComplete",
			"async" : false,
			"params" : {
				"sID" : this.params.fID
			},
			"success" : function(data) {
				if (!data.flag) {
					self.comp("messageDialog").show({
						"message" : "子任务还未全部完成"
					});
					return;
				}
				if (self.comp("parentData").getValueByID("sStatusName", self.params.fID) == "完成") {
					self.comp("messageDialog").show({
						"message" : "您已完成任务"
					});
				} else {
					self.comp("parentData").setValueByID("sStatusName", "完成", self.params.fID);
					self.comp("messageDialog").show({
						"message" : "恭喜您，完成任务"
					});
				}
				self.comp("parentData").saveData();
			}
		});
	};

	Model.prototype.acceptBtnClick = function(event) {
		// 增加判断只有负责人才能点击，创建人不能点击接受任务
		var personID = con.personID;
		var sESField01 = this.comp("parentData").getValueByID("sESField01", this.params.fID);
		if (sESField01.indexOf(personID) == -1) {
			this.comp("messageDialog").show({
				"message" : "不是负责人无法接受任务"
			});
			return;
		}
		this.comp("parentData").setValueByID("sStatusName", "进行中", this.params.fID);
		this.comp("parentData").saveData();
	};

	Model.prototype.modelActive = function(event) {
		var self = this;
		this.comp("mainData").refreshData({
			"onSuccess" : function() {
				self.comp("parentData").refreshData();
			}

		});
	};

	Model.prototype.showListClick = function(event) {
		var row = event.bindingContext.$object;
		var fID = row.val("sID");
		justep.Shell.showPage(require.toUrl("./editChildTaskActivity.w"), {
			"fID" : fID,
			"parentID" : this.params.fID
		});
	};

	Model.prototype.editBtnClick = function(event) {
		var fID = this.params.fID;
		justep.Shell.showPage(require.toUrl("./editMainTaskActivity.w"), {
			"fID" : fID
		});
	};

	Model.prototype.childBtnClick = function(event) {
		if (this.comp("parentData").getValueByID("sStatusName", this.params.fID) == "未确认") {
			this.comp("messageDialog").show({
				"message" : "还未接受，无法完成，操作"
			});
			return false;
		}
		var row = event.bindingContext.$object;
		var fTaskStatus = row.val("sStatusName");
		fTaskStatus = (fTaskStatus == "完成" ? "未完成" : "完成");
		if (fTaskStatus == "未完成") {
			this.comp("parentData").setValueByID("sStatusName", "进行中", this.params.fID);
			this.comp("parentData").saveData();
		}
		this.comp("mainData").setValueByID("sStatusName", fTaskStatus, row.val("sID"));
		this.comp("mainData").saveData();
		//刷新data对子任务进行排序
		this.comp("mainData").refreshData();
	};

	Model.prototype.parentDataBeforeRefresh = function(event) {
		this.comp("parentData").setFilter("filP", "sa_task.sid = '" + this.params.fID + "'");
	};

	return Model;
});