define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	Model.prototype.saveBtnClick = function(event){//debugger;
		var id = justep.UUID.createUUID();
		var row = this.comp("newOrgData").find(['sParent'], [null]).length+1;
		var SSEQUENCE;
		if(10>row>=0){
			SSEQUENCE = '00'+row;
		}else if (99>=row>=10){
			SSEQUENCE = '0'+row;
		}else{
			SSEQUENCE = row;
		}
		this.comp("newOrgData").newData({
			'defaultValues' : [ {
					'sID' : id,//ok
					'sName' : this.comp("nameInput").value,
					'sCode' : this.comp("numInput").value,
					'sFName' : '/'+this.comp("nameInput").value,
					'sFCode' : '/'+this.comp("numInput").value,
					'sFID' : '/'+id+'.ogn',
					'sOrgKindID' : 'ogn',
					'sSequence' : '/'+SSEQUENCE,
					'sParent' : null,
					'version' : 990
				} ]
		})
		this.comp("newOrgData").saveData();
		this.comp("newOrgData").refreshData();
		this.close();
	};

	return Model;
});