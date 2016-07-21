define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelLoad = function(event) {
		this.comp("radio").set({
			"checked" : true
		});
		var self = this;
		//对话框半透明区域点击可退出
		$("[xid=timeChooseDlg]>.x-dialog-overlay").addClass("clickEvent");
		$($(".clickEvent")[0]).click(function() {
			self.close();
		});
	};

	Model.prototype.liClick = function(event) {
		var status = this.params.data.status;
		var data = this.comp("shortTimeData");
		var row = event.bindingContext.$object;
		var rowID = row.getID();
		var time = row.val("fTime");
		data.setValue("isChecked", 0);
		var v = (row.val("isChecked") === 1) ? 0 : 1;
		data.setValue("isChecked",v, row);
		var rowStatus = data.getValueByID("isChecked", rowID);
		this.owner.send({
			'status' : status,
			"time" : time,
			"rowStatus" : rowStatus,
			"rowID" : rowID
		});
		 this.close();
	};

	Model.prototype.shortTimeDataCustomNew = function(event) {
		var defaultValues = [ {
			'fID' : 0,
			'fTime' : "关闭",
			"isChecked" : "1"
		} ];
		for (var i = 1; i < 121; i++) {
			defaultValues.push({
				'fID' : i,
				'fTime' : i + "分钟",
				"isChecked" : "0"
			})
		} 
		event.data = defaultValues;
	};

	Model.prototype.modelParamsReceive = function(event){
		var data =this.comp("shortTimeData");
		var paramTime = this.params.data.oldTime;
		if(data.count() === 0){
			data.clear();
			data.newData();
			return false;
		}
		var rows = data.find(['fTime'],[paramTime],true,true,true);
		if(rows.length === 1){
			data.setValueByID("isChecked","1",rows[0].getID());
		}else{
			throw new Error("error...");
		}

	};
	return Model;
});