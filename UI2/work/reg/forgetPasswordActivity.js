define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var MD5 = require('$UI/system/lib/base/md5');
	var md5 = new MD5();
	var numbers = "";
	var Model = function() {
		this.callParent();
		this.phoneNumber;
	};

	Model.prototype.sendSmsBtnClick = function(event) {
		// 获取手机认证
		var self = this;
		var forgetData = this.comp("forgetPasswordData");
		this.phoneNumber = this.comp("phonenumber").val();
		forgetData.setFilter("queryCount", "scode = '" + this.phoneNumber + "'");
		forgetData.refreshData({
			"onSuccess" : function() {
				if (forgetData.count() > 0) {
					self.comp("sendSmsBtn").mytimer();
					justep.Baas.sendRequest({
						"url" : "/work/Dx",
						"action" : "DuanXinCheck",
						"params" : {
							"fPhoneNumber" : self.comp("phonenumber").val()
						},
						"success" : function(resultData) {
							if (resultData.backStr) {
								numbers = resultData.backStr;
							} else {
								justep.Util.hint('验证码发送失败', {
									'type' : 'danger'
								});
							}
						}
					});
				} else {
					justep.Util.hint("该手机号没有注册", {
						"type" : "danger"
					});
				}
			}
		});
	};

	Model.prototype.okBtnClick = function(event) {
		var self = this;
		var newPassword = this.comp("newPassword").val();
		var confirmPassword = this.comp("confirmPassword").val();
		var reg = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9a-zA-Z]{8,16}$/;
		var forgetData = this.comp("forgetPasswordData");
		if (numbers !== this.comp("verifyCode").val()) {
			justep.Util.hint("验证码输入错误", {
				'type' : 'danger'
			});
			return;
		}

		if (newPassword !== confirmPassword) {
			justep.Util.hint('密码输入不一致', {
				'type' : 'danger'
			});
			return;
		}
		if (!reg.test(newPassword)) {
			justep.Util.hint("密码由8-16位字母和数字的组合", {
				'type' : 'danger'
			});
			return;
		}
		forgetData.setFilter("fil1", "sa_opperson.sCode = '" + this.phoneNumber + "'");
		forgetData.refreshData({
			"onSuccess" : function(event) {
				var newPas = md5.hex_md5_salt(confirmPassword);
				self.comp('forgetPasswordData').setValueByID("sPassword", newPas);
				self.comp('forgetPasswordData').saveData();
				justep.Util.hint("密码修改成功", {
					"type" : "success"
				});
				self.close();
			},
			"onError" : function() {
				justep.Util.hint("密码修改失败", {
					"type" : "danger"
				});
			}

		});

	};

	function Timmer(loopSecond, titile1, title2) {
		this.loopSecond = loopSecond;
		this.waittime = loopSecond;
		var self = this;
		this.mytimer = function() {
			if (self.waittime <= 0) {
				self.set({
					"disabled" : false,
					"label" : titile1
				});
				this.waittime = loopSecond;
			} else {
				self.set({
					"disabled" : true,
					"label" : title2 + "(" + self.waittime + ")"
				});
				self.waittime--;
				setTimeout(function() {
					self.mytimer();
				}, 1000);
			}
		};
	}

	Model.prototype.modelLoad = function(event) {

		var comp = this.comp("sendSmsBtn");
		Timmer.apply(comp, [ 60, "获取验证码", "重新发送" ]);
	};

	return Model;
});