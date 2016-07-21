define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var IM = require("$UI/chat/base/js/im");

	var Model = function() {
		this.callParent();
		this.perID;
		this.bID;
	};

	Model.prototype.joinBtnClick = function(event) {
		// debugger;
		var self = this;
		if (this.comp("inputData").val('inputID') == undefined) {
			alert('请输入邀请码！');
		} else {
			this.bID = this.comp("inputData").val('inputID');
			var id = this.comp("inputData").val('inputID');
//			console.log(this.comp("orgData").find([ 'sID' ], [ id ])[0].val('sName'));// 当前部门
			var SFNAME = this.comp("orgData").find([ 'sID' ], [ id ])[0].val('sFName');
			var SFCODE = this.comp("orgData").find([ 'sID' ], [ id ])[0].val('sFCode');
			var SFID = this.comp("orgData").find([ 'sID' ], [ id ])[0].val('sFID');
			var SSEQUENCE = this.comp("orgData").find([ 'sID' ], [ id ])[0].val('sSequence');
			var SPARENT = this.comp("orgData").find([ 'sID' ], [ id ])[0].val('sParent')
			if (this.comp("checkbox").value) {
				// 当前ID对应下的人
				// console.log(this.comp("perData").find(['sID'],[this.perID]));
				// 找到两个表中的对应人，设置相关值
				this.comp('perData').setValue('sMainOrgID', id);
				this.comp("perData").saveData();

				// var row = this.comp("orgData").find(['sPersonID'],
				// [this.params.personID])[0];
				// console.log(row);
				var length = this.comp("orgData").find([ 'sParent' ], [ id ]).length+1;
				// console.log(length);//sSequence的值

				// var BigID = row.sID.value.latestValue
				// console.log(BigID);
				// var rName = row.sName.value.latestValue;
				// var rCode = row.sCode.value.latestValue;
				// var rID = row.sID.value.latestValue;
				var rSequence;
				if (10 > length >= 0) {
					rSequence = '00' + length;
				} else if (99 >= length >= 10) {
					rSequence = '0' + length;
				} else {
					rSequence = length;
				}
				// this.comp("orgData").setValueByID('sFName', SFNAME+'/'+rName,
				// BigID);
				// this.comp("orgData").setValueByID('sFCode', SFCODE+'/'+rCode,
				// BigID);
				// this.comp("orgData").setValueByID('sFID', SFID+'/'+rID,
				// BigID);
				// this.comp('orgData').setValue('sPersonID',
				// this.params.personID,
				// BigID)
				// this.comp("orgData").setValueByID('sSequence',
				// SSEQUENCE+'/'+rSequence, BigID);
				// this.comp("orgData").setValueByID('sParent', id, BigID);

				/*
				 * id值为父节点 personID为this.params.personID
				 */
				this.comp("orgData").newData({
					'defaultValues' : [ {
						'sID' : this.params.personID + '@' + id,// ok
						'sName' : this.comp("perData").val('sName'),
						'sCode' : this.comp("perData").val('sCode'),
						'sFName' : SFNAME + '/' + this.comp("perData").val('sName'),
						'sFCode' : SFCODE + '/' + this.comp("perData").val('sCode'),
						'sFID' : SFID + '/' + this.params.personID + '.psm',
						'sOrgKindID' : 'psm',
						'sSequence' : SSEQUENCE + '/' + rSequence,
						'sParent' : id,
						'sPersonID' : this.params.personID,
						'sNodeKind' : 'nkLeaf',
						'sValidState' : 1,
						'version' : 999
					} ]
				});
				this.comp("orgData").saveData({
					"onError" : function() {
						IM.setReady(false, "加入组织失败！");
					},
					"onSuccess" : function() {
						self.saveDataSuccess();
					}
				});
				this.close();
			} else {
				alert('请选择您要加入的组织！');
			}
		}

		// justep.Shell.showMainPage()
	};
	Model.prototype.saveDataSuccess = function() {
		IM.setReady(true);
		IM.onLoggedIn();
	};
	Model.prototype.modelParamsReceive = function(event) {
		this.perID = this.params.personID;
	};

	Model.prototype.modelModelConstruct = function(event) {
		// debugger;
		this.comp("perData").setFilter("filter", "sID = '" + this.params.personID + "'");
	};

	return Model;
});