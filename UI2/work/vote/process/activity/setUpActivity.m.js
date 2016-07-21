define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	// var con = require("$UI/work/common/js/common");获取服务器时间用
	var Model = function() {
		this.callParent();
		this.addrStr;
	};

	Model.prototype.mapBtnClick = function(event) {
		this.signAddr = this.comp("statusData").getValue("address");
		if (this.signAddr) {
			this.comp("mapDialog").open();
		} else {
			justep.Util.hint("获取地理位置失败！请尝试设置应用权限");
		}
	};

	Model.prototype.mapDialogReceive = function(event) {
		this.addrStr = event.data.data[0];// 微调后的地址信息
		var addrPoint = event.data.data[1];// 微调后的经纬度对象
		this.loadBMap(addrStr, addrPoint);
	};

	Model.prototype.input6Click = function(event) {
		this.comp("input6").val(this.addrStr);
		
	};

	Model.prototype.saveBtnClick = function(event) {
		var fReg = this.comp("setUpData").val("fRegistrationTime");
		var fStart = this.comp("setUpData").val("fStartTime");
		var fEnd = this.comp("setUpData").val("fEndTime");
		var fBetweenA = justep.Date.diff(fReg, fStart, "h");
		var fBetwwenB = justep.Date.diff(fStart, fEnd, "h");
		var fTitle = this.comp("titleIpt").val();
		var fAdds = this.comp("setUpData").val("fAdds");
		if (!fTitle) {
			justep.Util.hint('标题不能为空', {
				'type' : 'danger'
			});
			return;

		}
		if (!fReg) {
			justep.Util.hint('报名时间不能为空', {
				'type' : 'danger'
			});
			return;
		}
		if (fBetweenA <= 0 || !fBetweenA) {
			justep.Util.hint('活动开始时间不能早于报名结束时间', {
				'type' : 'danger'
			});

			return;
		}
		if (fBetwwenB <= 0 || !fBetwwenB) {
			justep.Util.hint('活动结束时间不能早于活动开始时间', {
				'type' : 'danger'
			});
			return;
		}
		;
		if (!fAdds) {
			justep.Util.hint('地点不能为空', {
				'type' : 'danger'
			});
			return;
		}

		this.comp("setUpData").saveData();
	};

	Model.prototype.a1Click = function(event) {
		this.comp("demoPopOver").hide();
	};

	Model.prototype.costBtnClick = function(event) {
		this.comp("costPopOver").show();
	};

	return Model;
});