define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.StartUseBtnClick = function(event) {
		var data = this.comp('dPubBaseCode');
		var row = data.getCurrentRow();
		var fUseStatus = row.val("fUseStatus");
		var fUseStatusName = row.val("fUseStatusName");
		try {
			row.val("fUseStatus", '1');
			row.val("fUseStatusName", '启用');
			data.saveData();
		} catch (e) {
			row.val("fUseStatus", fUseStatus);
			row.val("fUseStatusName", fUseStatusName);
			alert("对不起,启用失败!");
		}
	};

	Model.prototype.StopUseBtnClick = function(event) {
		var data = this.comp('dPubBaseCode');
		var row = data.getCurrentRow();
		var fUseStatus = row.val("fUseStatus");
		var fUseStatusName = row.val("fUseStatusName");
		try {
			row.val("fUseStatus", '2');
			row.val("fUseStatusName", '未启用');
			data.saveData();
		} catch (e) {
			row.val("fUseStatus", fUseStatus);
			row.val("fUseStatusName", fUseStatusName);
			alert("对不起,停用失败!");
		}
	};

	Model.prototype.canStartUse = function() {

		var data = this.comp('dPubBaseCode');
		var row = data.getCurrentRow();
		if (!row) {
			return 1 != 1;
		}
		return row.val("fUseStatus") != '1';

	}

	Model.prototype.canStopUse = function() {
		;
		var data = this.comp('dPubBaseCode');
		var row = data.getCurrentRow();
		if (!row) {
			return 1 != 1;
		}
		return row.val("fUseStatus") == '1';

	}

	Model.prototype.AllUseBtnClick = function(event) {
		try {
			var data = this.comp('dPubBaseCode');
			var rows = [];
			data.each(function(options) {
				var row = options.row;
				var useFlag = row.val("fUseStatus");
				if (useFlag == '2' || useFlag == '' || useFlag == '0' || useFlag == '') {
					rows.push({'row' : row,'fUseStatus' : row.val('fUseStatus'),'fUseStatusName' : row.val('fUseStatusName')});
					row.val("fUseStatus", '1');
					row.val("fUseStatusName", '启用');
				}

			});
			data.saveData();
		} catch (e) {
			$.each(rows,function(i,param){
				data.setValue('fUseStatus', param.fUseStatus, param.row);
				data.setValue('fUseStatusName', param.fUseStatusName, param.row);
			});
			alert("对不起,全部启用失败!");
		}
	};

	Model.prototype.dPubBaseCodeValueChanged = function(event) {

		var ctx = this.getContext();

		var psnID = ctx.getCurrentPersonID();
		var psnName = ctx.getCurrentPersonName();
		;
		var now = new Date();
		var time = justep.Date.toString(now, justep.Date.STANDART_FORMAT);
		var data = this.comp('dPubBaseCode');
		var row = data.getCurrentRow();
		if (!row)
			return;
		row.val("fUpdatePsnID", psnID);
		row.val("fUpdatePsnName", psnName);
		row.val("fUpdateTime", time);
	};

	return Model;
});