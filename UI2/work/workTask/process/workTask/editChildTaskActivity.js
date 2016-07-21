define(function(require) {
	var $ = require("jquery");
	var con = require("$UI/work/common/js/common");
	var Model = function() {
		this.callParent();
		this.Creator = justep.Bind.observable(false);
	};

	Model.prototype.mainDataBeforeRefresh = function(event) {
		this.comp("mainData").setFilter("filter1", "sa_task.sID ='" + this.params.fID + "'");
	};

	Model.prototype.saveBtnClick = function(event) {
		this.comp("messageDialog").show({
			"message" : "确定修改子任务吗？"
		});
	};

	Model.prototype.messageDialogOK = function(event) {
		this.comp("mainData").setValue("sStatusName", "未完成");
		if (!(this.comp("parentData").getValueByID("sStatusName", this.params.parentID) == "未确认")) {
			this.comp("parentData").setValueByID("sStatusName", "进行中", this.params.parentID);
		}
		this.comp("parentData").saveData();
		this.comp("mainData").saveData();
		this.close();
	};

	Model.prototype.parentDataBeforeRefresh = function(event) {
		this.comp("parentData").setFilter("filter2", "sa_task.sID ='" + this.params.parentID + "'");
	};

	Model.prototype.modelLoad = function(event) {
		var date = new Date();
		this.comp("datePicker").setValue(date);
		if (this.isCreator(con.personID)) {
			$(this.getElementByXid("saveBtn")).hide();
			$(this.getElementByXid("delBtn")).hide();
		}
	};

	Model.prototype.isCreator = function(person) {
		this.Creator.set(this.comp("mainData").val('sCreatorPersonID').indexOf(person) == -1);
		return this.Creator.get();
	};

	return Model;
});