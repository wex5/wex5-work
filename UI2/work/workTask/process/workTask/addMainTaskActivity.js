define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var co = require("$UI/work/common/js/common");
	
	var Model = function(){
		this.callParent();
	};
	
	Model.prototype.dateInputClick = function(event) {
		this.comp("datePicker").show();
	};
	
	Model.prototype.datePickerOK = function(event) {
		var date = justep.Date.toString(event.source.getValue(), "yyyy年MM月dd日");
		if (date < justep.Date.toString(new Date(), "yyyy年MM月dd日")) {
			justep.Util.hint("日期选择不符合规范", {
				"type" : "danger"
			});
			return;
		}
		this.comp("mainData").setValue("sLimitTime", event.source.getValue());
	};
	
	Model.prototype.transDate = function(date){
		if(date){
			return justep.Date.toString(date, "yyyy年MM月dd日");
		}else{
			return "";
		}
	};

	Model.prototype.modelLoad = function(event){
		var date = new Date();
		this.comp("datePicker").setValue(date);
	};

	Model.prototype.delDialogOK = function(event) {
		this.comp("mainData").deleteData();
		this.comp("mainData").saveData();
		this.owner.close();
	};

	Model.prototype.delBtnClick = function(event) {
		this.comp("delDialog").show({
			"message" : "确定删除任务吗？"
		});
	};


	Model.prototype.saveBtnClick = function(event){
		var createTime = co.getSysDate();
		this.comp("mainData").setValue("sCreatorPersonID", co.personID);
		// 获取当前人的ID和名称为创建者的
		this.comp("mainData").setValue("sCreatorPersonName", co.personName);
		this.comp("mainData").setValue("sCreatorOgnID", co.ognID);
		this.comp("mainData").setValue("sCreatorOgnName", co.ognName);
		this.comp("mainData").setValue("sCreatorDeptID", co.deptID);
		this.comp("mainData").setValue("sCreatorDeptName", co.deptName);
		this.comp("mainData").setValue("sCreateTime", createTime);
		this.comp("mainData").setValue("sStatusName", "未确认");
		this.comp("mainData").saveData();
		this.owner.close();
	};

	Model.prototype.selSesDialogReceive = function(event){
		var data = event.data.data;
		var len = data.length;
		var personName = "";
		var personID = "";
		for (var i = 0; i < len; i++) {
			personName += data[i].sName + "  ";
			personID += data[i].sPersonID + "  ";
		}
		this.comp("mainData").setValue("sESField01", personID);
		this.comp("mainData").setValue("sESField02", personName);
	};

	return Model;
});