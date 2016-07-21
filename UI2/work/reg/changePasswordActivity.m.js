define(function(require) {
	// var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var MD5 = require('$UI/system/lib/base/md5');
	var con = require("$UI/work/common/js/common");
	var md5 = new MD5();
	var Model = function() {
		this.callParent();

	};

	Model.prototype.passwordSaveBtnClick = function(event) {
		var sPassword = md5.hex_md5_salt(this.comp("oldPassword").val());
		var oPassword = this.comp('changePasswordData').getValueByID("sPassword");
		var newPassword = this.comp("newPassword").val();
		var confirmPasswd = this.comp("confirmPasswd").val();
		var passwordReg = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9a-zA-Z]{8,16}$/;
		if (sPassword !== oPassword) {
			justep.Util.hint("旧密码错误！", {
				"type" : "danger"
			});
			return;
		}

		if (newPassword !== confirmPasswd) {
			justep.Util.hint("新密码不一致！", {
				"type" : "danger"
			});
			return;
		}

		if (!passwordReg.test(newPassword)) {
			justep.Util.hint("请输入由8-16位字母和数字的组合", {
				"type" : "danger"
			});
			return;
		}

		var newPas = md5.hex_md5_salt(confirmPasswd);
		this.comp('changePasswordData').setValueByID("sPassword", newPas);
		this.comp('changePasswordData').saveData();
		justep.Util.hint("密码修改成功！", {
			"type" : "success"
		});
		this.owner.close();

	};

	Model.prototype.modelModelConstruct = function(event){
		this.comp("changePasswordData").setFilter('filter', "sa_opperson.sID ='"+ con.personID +"'");
	};

	return Model;
});