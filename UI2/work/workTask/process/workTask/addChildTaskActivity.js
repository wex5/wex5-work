define(function(require){
	var $ = require("jquery");
	var co = require("$UI/work/common/js/common");
	var Model = function(){
		this.callParent();
	};
	
	Model.prototype.saveBtnClick = function(event) {
		var createTime = co.getSysDate();
		this.comp("mainData").setValue("sParentID", this.params.parentID);
		this.comp("mainData").setValue("sCreatorPersonID", co.personID);
		// 获取当前人的ID和名称为创建者的
		this.comp("mainData").setValue("sCreatorPersonName", co.personName);
		this.comp("mainData").setValue("sCreatorOgnID", co.ognID);
		this.comp("mainData").setValue("sCreatorOgnName", co.ognName);
		this.comp("mainData").setValue("sCreatorDeptID", co.deptID);
		this.comp("mainData").setValue("sCreatorDeptName", co.deptName);
		this.comp("mainData").setValue("sCreateTime", createTime);
		this.comp("mainData").setValue("sStatusName", "未确认");

		if (!(this.comp("parentData").getValueByID("sStatusName", this.params.parentID) == "未确认")) {
			this.comp("parentData").setValueByID("sStatusName", "进行中", this.params.parentID);
		}
		this.comp("mainData").setValue("sStatusName", "未完成");

		this.comp("parentData").saveData();
		this.comp("mainData").saveData();
		this.owner.close();
	};

	Model.prototype.parentDataBeforeRefresh = function(event){
		this.comp("parentData").setFilter("filter2", "sa_task.sID ='" + this.params.parentID + "'");
	};
	
	return Model;
});