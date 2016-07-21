define(function(require) {
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
		//this.len;
	};

	Model.prototype.newPersonRowClick = function(event) {
		justep.Shell.showPage("$UI/work/org/newPersonActivity.m.w",{"data":this.params.data});
	};

	Model.prototype.modelModelConstruct = function(event) {
		this.comp("NoDeptPersonData").setFilter("filterNoDept", "sa_opperson.sMainOrgID = ''");
	};

	Model.prototype.modelActive = function(event) {
		this.comp("NoDeptPersonData").refreshData();
		this.comp("addOrgData").refreshData();
	};

	Model.prototype.assignBtnClick = function(event) {
		this.comp("confirmAssignDialog").show();
	};

	Model.prototype.delBtnClick = function(event) {
		this.comp("warningDialog").show();
	};

	Model.prototype.warningDialogYes = function(event) {
		var personData = this.comp("NoDeptPersonData");
		personData.deleteData();
		personData.saveData({
			"onSuccess" : function(event) {
				justep.Util.hint("删除成功", {
					"type" : "success"
				});
				event.source.refreshData();
			}
		});
	};

	Model.prototype.confirmAssignDialogYes = function(event){
		var self = this;
		var data = this.params.data;
		var personData = this.comp("NoDeptPersonData");
		var sequence;
		//获取sequence
		var PsID = data.val('sID');
		var Psequence = data.val('sSequence');
		justep.Baas.sendRequest({
			"url" : "/work/org",
			"action" : "getsSequence",
			"async" : false,
			"params" : {
				'sID':PsID,
				'sSequence':Psequence
			},
			"success" : function(data) {
				sequence = data.data;
			}
		});
		this.comp("addOrgData").newData({
			'defaultValues' : [ {
				'sID' : personData.val("sID") + '@' + data.val("sID"),
				'sName' : personData.val("sName"),
				'sCode' : personData.val('sCode'),
				'sFName' : data.val("sFName") + '/' + personData.val('sName'),
				'sFCode' : data.val("sFCode") + '/' + personData.val('sCode'),
				'sPhone' : personData.val('sLoginName'),
				'sFID' : data.val("sFID") + '/' + personData.val("sID") + '.psm',
				'sOrgKindID' : 'psm',
				'sSequence' : sequence,
				'sParent' : data.val("sID"),
				'sPersonID' : personData.val("sID"),
				'sNodeKind' : 'nkLeaf',
				'sValidState':1,
				'version' : 0
			} ]
		});
		this.comp("addOrgData").saveData({
			"onSuccess" : function(event) {
				event.source.refreshData();
				self.comp("NoDeptPersonData").setValue("sMainOrgID", data.val("sID"));
				self.comp("NoDeptPersonData").saveData({
					"onSuccess" : function(event) {
						justep.Util.hint("保存成功", {
							"type" : "success"
						});
						event.source.refreshData();
					}
				});
			}
		});
	};

	return Model;
});