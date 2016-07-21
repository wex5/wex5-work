define(function(require) {
	// var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var MD5 = require('$UI/system/lib/base/md5');
	var md5 = new MD5();
	var numbers = "";
	var Model = function() {
		this.callParent();
	};

	Model.prototype.sendsmsbuttonClick = function(event) {
		// 通过Baas获取数据
		// 验证手机号是否合法！
		var reg = /^[1][34578][0-9]{9}$/;
		var phoneNumber = this.comp("phonenumber").val();
		if (reg.test(phoneNumber)) {
			this.comp("sendsmsbutton").mytimer();
			justep.Baas.sendRequest({
				"url" : "/work/Dx",
				"action" : "DuanXinCheck",
				"params" : {
					"fPhoneNumber" : this.comp("phonenumber").val()
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
			justep.Util.hint('手机号码格式不正确!', {
				'type' : 'danger'
			});
		}

	};

	Model.prototype.okBtnClick = function(event) {
		var self = this;
		var userPassword = this.comp("userPassword").val();
		var passWordAgain = this.comp("passwordAgain").val();
		var userName = this.comp("nameInput").val();
		var phoneNumber = this.comp("phonenumber").val();
		if (phoneNumber === '' || userName === '' || passWordAgain === '' || userPassword === '') {
			justep.Util.hint('请将信息填写完整!', {
				'type' : 'danger'
			});
		} else {
			var pId = justep.UUID.createUUID();
			var reg = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9a-zA-Z]{8,16}$/;
			if (userPassword === passWordAgain) {
				if (reg.test(userPassword)) {
					if (numbers === this.comp("verifyCode").val()&&this.comp("verifyCode").val() != '') {
						justep.Baas.sendRequest({
							"url" : "/work/org",
							"action" : "queryIsActivation",
							"async" : false,
							"params" : {
								"phone" : this.comp("phonenumber").val(),
								"name" : this.comp("nameInput").val(),
								"password" : md5.hex_md5_salt(userPassword),
								"uuid" : pId
							},
							"success" : function(data) {
								justep.Util.hint(data.status);
								if (data.status === "注册成功！") {
									self.close();
								}
							}
						});
					} else {
						justep.Util.hint('验证码输入错误', {
							'type' : 'danger'
						});
					}
				} else {
					justep.Util.hint('密码格式错误', {
						'type' : 'danger'
					});
				}
			} else {
				justep.Util.hint('密码输入不一致', {
					'type' : 'danger'
				});
			}
		}
	};

	Model.prototype.backBtnClick = function(event) {
		this.close();
	};

	function Timmer(loopSecond, titile1, title2) {
		// 还要检查一个结果返回变量。
		this.loopSecond = loopSecond;
		this.waittime = loopSecond;
		var self = this;
		this.mytimer = function() {
			if (self.waittime <= 0) {
				self.set({
					"disabled" : false,
					"label" : titile1
				});
				this.waittime = loopSecond; // 可设 60秒
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
		var comp = this.comp("sendsmsbutton");
		Timmer.apply(comp, [ 60, "获取验证码", "重新发送" ]);
	};

	return Model;
});