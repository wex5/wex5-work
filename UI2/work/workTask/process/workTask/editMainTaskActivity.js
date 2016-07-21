define(function(require){
	var $ = require("jquery");
	var con = require("$UI/work/common/js/common");
	var justep = require("$UI/system/lib/justep");
	var Model = function(){
		this.callParent();
		this.Creator = justep.Bind.observable(false);
	};
	
	Model.prototype.mainDataBeforeRefresh = function(event){
		this.comp("mainData").setFilter("filter1", "sa_task.sID ='" + this.params.fID + "'");
	};
	
	Model.prototype.saveBtnClick = function(event){
		this.comp("messageDialog").show({"message":"确定修改主任务吗？"});
	};
	
	Model.prototype.messageDialogOK = function(event){
		this.comp("mainData").getValue("sStatusName") == "完成"?this.comp("mainData").setValue("sStatusName","进行中"):"";
		this.comp("mainData").saveData();
		this.close();
	};
	
	Model.prototype.modelLoad = function(event){
		var date = new Date();
		this.comp("datePicker").setValue(date);
		//只有当前人是创建者才可以保存
		this.isCreator(con.personID)?$(this.getElementByXid("saveBtn")).hide():'';
	};
	
	Model.prototype.isCreator = function(person){
		this.Creator.set(this.comp("mainData").val('sCreatorPersonID').indexOf(person) == -1);
		return this.Creator.get();
	};
	
	return Model;
});