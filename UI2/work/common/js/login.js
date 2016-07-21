define(function(require) {
	var justep = require("$UI/system/lib/justep");
	var store = require('$UI/system/lib/base/store');

	var onLogin = function(params) {
		var ret;
		var userParams = {};
		userParams.CurrentPersonID = "";
		userParams.CurrentPersonName = "";
		userParams.CurrentPersonFID = "";
		userParams.CurrentPersonFName = "";
		userParams.CurrentOgnID = "";
		userParams.CurrentOgnName = "";
		userParams.CurrentDeptID = "";
		userParams.CurrentDeptName = "";
		userParams.CurrentDeptFID = "";
		userParams.CurrentDeptFName = "";
		userParams.CurrentOgnFID = "";
		userParams.CurrentOgnFName = "";
		userParams.CurrentFunRole = "3";// 默认为3：普通员工。（1:公司领导；2:部门主管；3:普通员工）
		justep.Baas.sendRequest({
			"url" : "/work/Login",
			"action" : "CrrentOrgInfo",
			"async" : false,
			"params" : {
				"userName" : params.username
//				"password" : params.password
			},
			"success" : function(data) {
				ret = data;
				if (ret.flag) {
					userParams.CurrentPersonID = ret.personID;
					userParams.CurrentPersonName = ret.personName;
					userParams.CurrentPersonFID = ret.CurrentFID;
					userParams.CurrentPersonFName = ret.CurrentFName;
					userParams.CurrentOgnID = ret.CurrentOgnID;
					userParams.CurrentOgnName = ret.CurrentOgnName;
					
					userParams.CurrentFunRole = ret.CurrentFunRole;

					userParams.CurrentOgnFID = "/" + ret.CurrentFID.split("/")[1];
					userParams.CurrentOgnFName = "/" + ret.CurrentFName.split("/")[1];
					if (ret.CurrentFID.indexOf("dpt") > 0) {
						userParams.CurrentDeptID = ret.CurrentDeptID;
						userParams.CurrentDeptName = ret.CurrentDeptName;
						userParams.CurrentDeptFID = ret.CurrentFID.substring(0, ret.CurrentFID.indexOf("dpt") + 3);
						userParams.CurrentDeptFName = ret.CurrentFName.substring(0, ret.CurrentFName.indexOf("/", ret.CurrentFName.indexOf("/", 2) + 1));
					}
					saveLoginDataToStore(userParams);
				}
			}
		});
		return ret;
	};

	var password = [ 15, 52, 60, 73, 12, 11, 86, 35 ];
	var encrypt = function(str, key) {
		var ret = '', keyLen = key.length;
		for (var i = 0; i < str.length; i++) {
			ret += String.fromCharCode(str.charCodeAt(i) ^ key[i % keyLen]);
		}
		return ret;
	};

	var saveLoginDataToStore = function(data) {
		data = JSON.stringify(data);
		store.set('work_loginData', encrypt(data, password));
	};

	var WEsaveLoginDataToStore = function(data) {
		var Ldata = {};
		Ldata.CurrentPersonID = data.perID;
		Ldata.CurrentPersonName = data.perName;
		Ldata.CurrentPersonFID = data.val("sFID") + "/" + data.perID + ".psm";
		Ldata.CurrentPersonFName = data.val("sFName") + "/" + data.perName;
		if (data.val("sOrgKindID") == "dpt") {

			Ldata.CurrentDeptFID = data.val("sFID");
			Ldata.CurrentDeptFName = data.val("sFName");
			Ldata.CurrentDeptID = data.val("sID");
			Ldata.CurrentDeptName = data.val("sName");
			
			
			Ldata.CurrentOgnFID = data.val("sFID").substring(0,data.val("sFID").indexOf("ogn")+3);
			Ldata.CurrentOgnFName= data.val("sFName").substring(0,data.val("sFName").indexOf("/",1));
			Ldata.CurrentOgnID= data.val("sFID").substring(1,data.val("sFID").indexOf("."));
			Ldata.CurrentOgnName= data.val("sFName").substring(1,data.val("sFName").indexOf("/",1));
		} else {
			Ldata.CurrentDeptFID = "";
			Ldata.CurrentDeptFName = "";
			Ldata.CurrentDeptID = "";
			Ldata.CurrentDeptName = "";
			
			Ldata.CurrentOgnFID = data.val("sFID");
			Ldata.CurrentOgnFName = data.val("sFName");
			Ldata.CurrentOgnID = data.val("sID");
			Ldata.CurrentOgnName = data.val("sName");
		}

		Ldata.CurrentFunRole = "3";
		
		
		
		Ldata = JSON.stringify(Ldata);
		store.set('work_loginData', encrypt(Ldata, password));
	};
	
	var _loadLoginDataByStore = function() {
		var _loginData_;
		if (_loginData_)
			return _loginData_;
		var data = store.get('work_loginData');
		if (data) {
			data = encrypt(data, password);
			_loginData_ = JSON.parse(data);
			return _loginData_;
		}
	}

	return {
		requestLogin : function(data){
			WEsaveLoginDataToStore(data);
		},
		loadLoginDataByStore : _loadLoginDataByStore
	};
});