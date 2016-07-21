define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.longTimeDataCustomNew = function(event){
		var defaultValues = [ {
			'fID' : 0,
			'fTime' : "关闭",
		} ];
		for (var i = 10; i <=360; i+=10) {
			var j=1
			defaultValues.push({
				'fID' : j,
				'fTime' : i + "分钟"
			})
			j++;
		} 
		event.data = defaultValues;
	};

	Model.prototype.modelLoad = function(event){
		this.comp("radio").set({
			"checked" : true
		});
		var self = this;
		//对话框半透明区域点击可退出
		$("[xid=longChooseDlg]>.x-dialog-overlay").addClass("clickEvent");
		$($(".clickEvent")[0]).click(function() {
			self.close();
		});
	};

	Model.prototype.liClick = function(event){
		var row = event.bindingContext.$object;
		var data = row.val("fTime");
		this.comp("longTimeData").setValue("isChecked", 0);
		var v = (row.val("isChecked") === 1) ? 0 : 1;
		this.comp("longTimeData").setValue("isChecked", v, row);
		this.owner.send(data);
		this.close();
	};

	return Model;
});