define(function(require) {
//	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var IM = require("$UI/chat/base/js/im");
	var electronApp = require("$UI/chat/lib/electron-app");
	var login = require("$UI/work/common/js/login");
	var con = require("$UI/work/common/js/reLogin");

	var Model = function() {
		this.callParent();
		this.data;
	};

	Model.prototype.searchColClick = function(event) {
		var dialog = this.comp('joinOrgDialog');
		justep.Baas.sendRequest({
			"url" :"/work/org",
			"action" : "queryHasOrg",
			"async" : false,
			"params" : {},
			"success" : function(data) {
				if(data.flag){
					dialog.open();
				}else{
					justep.Util.hint('请联系管理员创建组织！', {'type':'danger'});
				}
			}
		});
	};

	Model.prototype.callColClick = function(event) {
		if (electronApp.getIsInElectron()) {
			IM.unbindGlobalCounter(function() {
			});
		}
		IM.logout();
	};

	Model.prototype.modelParamsReceive = function(event) {
		this.params.personID;
		//this.comp("regData").find([ 'sID' ], [ this.params.personID ]);
	};

	Model.prototype.joinOrgDialogReceive = function(event) {
		this.data = event.data.data;//父
		this.data.perID = con.personID;//当前人
		this.data.perName = con.personName;
		var self = this;
		var SID = event.data.data.val("sID");
		var sequence = event.data.data.val("sSequence");
		var sSequence;
		justep.Baas.sendRequest({//解决sSequence
			"url" : "/work/org",
			"action" : "getsSequence",
			"async" : false,
			"params" : {"sID":SID,"sSequence":sequence},
			"success" : function(data) {
				sSequence = data.data;
			}
		});
		this.comp("regData").setValue('sMainOrgID', event.data.data.val('sID'));
		this.comp("regData").saveData();
		this.comp("orgData").newData({
			'defaultValues' : [ {
				'sID' : this.params.personID + '@' + event.data.data.val('sID'),
				'sName' : this.comp("regData").val('sName'),
				'sCode' : this.comp("regData").val('sCode'),
				'sFName' : event.data.data.val('sFName') + '/' + this.comp("regData").val('sName'),
				'sFCode' : event.data.data.val('sFCode') + '/' + this.comp("regData").val('sCode'),
				'sFID' : event.data.data.val('sFID') + '/' + this.params.personID + '.psm',
				'sOrgKindID' : 'psm',
				'sSequence' : sSequence,
				'sParent' : event.data.data.val('sID'),
				'sPersonID' : this.params.personID,
				'sNodeKind' : 'nkLeaf',
				'sValidState' : 1,
				'version' : 0
			} ]
		});
		this.comp("orgData").saveData({
			"onError" : function() {
				IM.setReady(false, "加入组织失败！");
			},
			"onSuccess" : function() {
				self.saveDataSuccess(self.data);
			}
		});
		this.close();
	};
	
	Model.prototype.saveDataSuccess = function(data) {
		login.requestLogin(data);
		IM.setReady(true);
		IM.onLoggedIn();
	};

	Model.prototype.modelModelConstruct = function(event){
		this.comp("regData").setFilter('filters', "sID = '" + this.params.personID + "'");
		this.comp("regData").getFilter('filters');
	};	

	return Model;
});