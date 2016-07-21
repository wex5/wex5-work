define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var ChinesePY = require("$UI/system/lib/base/chinesePY");

	var Model = function() {
		this.callParent();
		this.arr = [];
		this.ID;// 点中checkbox当前行的ID
		this.pID;
		this.pName;
		this.pCode;
		this.dFName;
		this.dFCode;
		this.dFID;
		this.dSequence;
		this.dID;// 父ID
		this.len;
		this.real;
		this.movePerson;
		this.updata;
		this.row;
		this.father;
	};

	Model.prototype.personBtnClick = function(event) {
		var len = $(this.getElementByXid("headDiv ul")).children("li").length;
		if (len == 1) {
			justep.Util.hint('不可新建顶级机构!请进入下一级!', {
				'type' : 'danger'
			});
			this.comp("createDialog").close();
		} else {
			justep.Shell.showPage("$UI/work/org/assignPersonActivity.m.w",{"data":this.father});
			this.comp("createDialog").close();
		}
	};

	Model.prototype.checkboxClick = function(event) {
		this.real = event.target.checked;
		var row = event.bindingContext.$object;
		this.row = event.bindingContext.$object;
		this.ID = row.val('sID');
		this.orgKindID = row.val('sOrgKindID');
		this.pID = row.val('sID');
		this.pName = row.val('sName');
		this.pCode = row.val('sCode');
	};

	Model.prototype.saveChangeBtnClick = function(event) {
		var flag = false;
		var oldName = this.comp("nameOutput").value;
		var newName = this.comp('nameInput').value;
		var rowID = this.ID;
		var oldCode = ChinesePY.makeFirstPY(oldName).toLocaleUpperCase();
		var newCode = ChinesePY.makeFirstPY(newName).toLocaleUpperCase();
		justep.Baas.sendRequest({
			"url" : "/work/org",
			"action" : "updateSa_Oporg",
			"async" : false,
			"params" : {
				"rowID" : rowID,
				"oldName" : oldName,
				"newName" : newName,
				"oldCode" : oldCode,
				"newCode" : newCode
			},
			"success" : function(data) {
				if (data.state === true) {
					flag = true;
					justep.Util.hint("编辑成功！",{'type':'success'});
				} else {
					flag = false;
					justep.Util.hint("编辑失败!");
				}
			}
		});
		if(flag){
			this.comp("createOrgData").setValueByID('sName', newName, rowID);
		}
		this.comp('editDialog').close();
	};

	Model.prototype.createBtnClick = function(event) {
		this.comp('createDialog').open();
	};

	Model.prototype.createDialogShow = function(event) {

		$('[xid=agencyLi]').addClass('hide');
	
	};

	Model.prototype.createDialogHide = function(event) {

	};

	Model.prototype.agencyBtnClick = function(event) {
		this.comp("newOrgDialog").open();
		this.comp("createDialog").close();
	};

	Model.prototype.sectorBtnClick = function(event) {
		var len = $(this.getElementByXid("headDiv ul")).children("li").length;
		if (len == 1) {
			justep.Util.hint('不可新建顶级机构!请进入下一级!', {
				'type' : 'danger'
			});
			this.comp("createDialog").close();
		} else if (len == 2 || len == 3) {
			this.comp("newSectorDialog").open();
			this.comp("createDialog").close();
		} else {
			justep.Util.hint('层级目录太深！', {
				'type' : 'danger'
			});
			this.comp("createDialog").close();
		}	
	};

	Model.prototype.delBtnClick = function(event) {
		this.ID;
		var self = this;
		if (this.ID === undefined || this.row.val('sOrgKindID') === 'psm' || this.row.val('sOrgKindID') === 'ogn') {
			justep.Util.hint('此处不能进行该操作！');
		} else {
			var orgData = this.comp("createOrgData");
			justep.Baas.sendRequest({
				"url" : "/work/org",
				"action" : "deleteOrg",
				"async" : false,
				"params" : {
					"rowID" : self.ID
				},
				"success" : function(data) {
					if (data.state === true) {
						justep.Util.hint("删除成功");
						orgData.deleteData(this.row);
					} else {
						justep.Util.hint("删除失败!该组织下可能还有人员！");
					}
				}
			});
		}
		this.ID = undefined;
	};

	Model.prototype.moveBtnClick = function(event) {
		this.updata = "移动";
		this.comp("operation").close();
		this.comp('moveDialog').open();
	};

	Model.prototype.delPerBtnClick = function(event) {
		var sParent = this.movePerson.val("sParent");
		var personID = this.movePerson.val("sPersonID");
		
		justep.Baas.sendRequest({
			"url" : "/work/org",
			"action" : "updataMainOrg",
			"async" : false,
			"params" : {"sParent":sParent,"sPersonID":personID},
			"success" : function(data) {
			}
		});
		this.comp("createOrgData").deleteData(this.movePerson);
		this.comp("operation").close();

	};

	Model.prototype.editBtnClick = function(event) {
		if (this.ID === undefined) {
			justep.Util.hint('请选择你要编辑的机构（部门）');
		} else {
			if (event.bindingContext.$object.createOrgData.val('sOrgKindID') == 'psm') {
				justep.Util.hint('该操作对人员无效');
			} else {
				this.comp('editDialog').open();
			}
		}
	};

	Model.prototype.moveDialogReceive = function(event) {
		var dpt = event.data.data;
		var sFName = "";
		var sFID = "";
		var sSequence = "";
		var sParent = "";
		var sFCode = "";
		var sID = "";
		
		var per = this.movePerson;

		var row = per.val("sID");
		var person = per.val("sPersonID");
		var moveData = this.comp("createOrgData");
		var rows = moveData.find([ "sParent" ], [ dpt.val("sID") ]);
		var personID = [];

		for (var i = 0, sequence; i < rows.length; i++) {
			personID.push(rows[i].val("sPersonID"));
		}
		
		justep.Baas.sendRequest({
			"url" : "/work/org",
			"action" : "getsSequence",
			"async" : false,
			"params" : {"sID":dpt.val("sID"),"sSequence":dpt.val("sSequence")},
			"success" : function(data) {
				sSequence = data.data;
			}
		});

		sFName = dpt.val("sFName") + "/" + this.movePerson.val("sName");
		sFID = dpt.val("sFID") + "/" + this.movePerson.val("sPersonID") + ".psm";
		sParent = dpt.val("sID");
		sFCode = dpt.val("sFCode") + "/" + this.movePerson.val("sCode");
		sID = person + "@" + sParent;

		if (this.updata == "移动") {
			var state = null;
			justep.Baas.sendRequest({
				"url" : "/work/org",
				"action" : "queryPerson",
				"async" : false,
				"params" : {"sParent":sParent,"personID":person},
				"success" : function(data) {
					state = data.state;
				}
			});
			if (!state) {
				moveData.deleteData(this.movePerson);
				var oldParent = per.val("sParent");
				var newParent = dpt.val("sID");
				justep.Baas.sendRequest({
					"url" : "/work/org",
					"action" : "movePerson",
					"async" : false,
					"params" : {
						'sID' : sID,
						'sName' : per.val("sName"),
						'sCode' : per.val("sCode"),
						'sFName' : sFName,
						'sFCode' : sFCode,
						'sFID' : sFID,
						'sOrgKindID' : 'psm',
						'sSequence' : sSequence,
						'sParent' : sParent,
						'sPersonID' : per.val("sPersonID"),
						'sNodeKind' : 'nkLeaf',
						'sValidState' : 1,
						'version' : 0,
						'oldParent':oldParent,
						'newParent' :newParent,
						'mainPersonID' : per.val("sPersonID")
					},
					"success" : function(data) {
					}
				});
				
			} else {
				justep.Util.hint("当前人员已在此部门中！");
			}

		} else if (this.updata == "分配") {
			if (personID.join(",").indexOf(row.split("@")[0]) == -1) {
				var options = {
					defaultValues : [ {
						sID : sID,
						sName : per.val("sName"),
						sCode : per.val("sCode"),
						sFName : sFName,
						sFCode : sFCode,
						sFID : sFID,
						sOrgKindID : per.val("sOrgKindID"),
						sSequence : sSequence,
						sValidState : per.val("sValidState"),
						sParent : sParent,
						sPersonID : per.val("sPersonID"),
						sNodeKind : per.val("sNodeKind"),
						version : per.val("version") + 1
					} ]
				};
				moveData.newData(options);
			} else {
				justep.Util.hint("当前人员已在此部门中！");
			}
		}
		this.updata = "";
		moveData.saveData();
	};

	Model.prototype.moreBtnClick = function(event) {
		this.movePerson = event.bindingContext.$object;
		var perData = this.comp("personData");
		var funRole = perData.getValueByID("sFunRole", this.movePerson.val("sPersonID"));
		if (funRole == 3) {
			this.comp("setBtn").set({
				"label" : "设置管理员"
			});
		} else {
			this.comp("setBtn").set({
				"label" : "取消管理员"
			});
		}
		this.comp("operation").open({
			data : this.movePerson.val("sPersonID")
		});
	};

	Model.prototype.distBtnClick = function(event) {
		this.updata = "分配";
		this.comp("operation").close();
		this.comp('moveDialog').open();
	};

	Model.prototype.setBtnClick = function(event) {
		var filData = this.comp("filterData");
		var label = this.comp("setBtn").get("label");
		if (label == "设置管理员") {
			filData.setValue("sFunRole", 1);
			this.comp("setBtn").set({
				"label" : "取消管理员"
			});
		} else if (label == "取消管理员") {
			filData.setValue("sFunRole", 3);
			this.comp("setBtn").set({
				"label" : "设置管理员"
			});
		}
		filData.saveData();
		this.comp("personData").refreshData();
		this.comp("operation").close();
	};

	Model.prototype.operationShow = function(event) {
		var filData = this.comp("filterData");
		filData.setFilter('filter', "sID = '" + this.movePerson.val("sPersonID") + "'");
		filData.refreshData();
	};

	Model.prototype.tree2AfterRender = function(event) {
		this.ID = undefined;
	};

	Model.prototype.newSectorDialogReceive = function(event) {
		var len = $(this.getElementByXid("headDiv ul")).children("li").length;
		if (len == 1 || len == 4) {
			justep.Util.hint('当前组织下不可进行该操作！', {
				'type' : 'danger'
			});
		} else if (len == 2 || len == 3) {
			var sSequence = "";
			var SID = this.father.val('sID');// 父ID
			var SFNAME = this.father.val('sFName');
			var SFCODE = this.father.val('sFCode');
			var SFID = this.father.val('sFID');
			var sequence = this.father.val('sSequence');
			var sSequence;
			justep.Baas.sendRequest({
				"url" : "/work/org",
				"action" : "getsSequence",
				"async" : false,
				"params" : {"sID":SID,"sSequence":sequence},
				"success" : function(data) {
				sSequence = data.data;
				}
			});
			var sid = justep.UUID.createUUID();// 新建部门的
			var PY =  ChinesePY.makeFirstPY(event.data.data.sName).toLocaleUpperCase();
			this.comp("createOrgData").newData({
				"parent" : this.father,
				'defaultValues' : [ {
					'sID' : sid,// ok
					'sName' : event.data.data.sName,
					'sCode' : PY, 
					'sFName' : SFNAME + '/' + event.data.data.sName,
					'sFCode' : SFCODE + '/' + PY,
					'sFID' : SFID + '/' + sid + '.dpt',
					'sOrgKindID' : 'dpt',
					'sSequence' : sSequence,
					'sParent' : SID,
					'version' : 0
				} ]
			});
			this.comp("createOrgData").saveData();
		} else {
			justep.Util.hint('层级目录太深！', {
				'type' : 'danger'
			});
		}
	};

	Model.prototype.nextBtnClick = function(event) {
		this.father = event.bindingContext.$object;
	};

	Model.prototype.tree2BeforeLoadChildren = function(event){
		event.forcedTo=true;
	};

	return Model;
});
