define(function(require){
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};
	
	Model.prototype.okBtnClick = function (event){
		var phoneReg = /^[1][358][0-9]{9}$/;
		if(!phoneReg.test(this.comp('regData').val('sPhone'))){
			justep.Util.hint("手机格式错误", {"type":"danger"});
			return;
		}
		var params = this.params.data;
		var self = this;
		//获取sequence
		var sequence;
		var PsID = params.val('sID');
		var Psequence = params.val('sSequence');
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
		var regData = self.comp('regData');
		if (regData.val('sName') != 'system') {
			var uuuid = justep.UUID.createUUID();
			regData.setValue('sID', uuuid+'@' +params.val('sID'));
			regData.setValue('sCode', regData.val('sPhone'));
			regData.setValue('sFName',params.val('sFName')+'/'+ regData.val('sName'));
			regData.setValue('sFCode',params.val('sFCode')+'/'+ regData.val('sPhone'));
			regData.setValue('sFID',params.val('sFID')+'/'+ uuuid+'.psm');
			regData.setValue('sOrgKindID', 'psm');
			regData.setValue('sSequence', sequence);
			regData.setValue('sValidState', 1);
			regData.setValue('sParent', params.val('sID'));
			regData.setValue('sNodeKind', 'nkLeaf');
			regData.setValue('version', 0);
			regData.saveData({
				"onSuccess":function(event){
					justep.Util.hint("添加成功！");
				},
				"onError":function(event){
					justep.Util.hint("添加失败！重新添加");
				}
			});
			
			this.close();
		}else{
			justep.Util.hint("不可以使用system用户名！");
		}
	};
	
	return Model;
});