define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
		this.parentID;
	};

	Model.prototype.modelParamsReceive = function(event){//debugger;
		//this.parentID = this.params.data.val('sID');
	};

	Model.prototype.saveBtnClick = function(event){//debugger;
		//获得父的
		if(this.comp("nameInput").value == ''){
			justep.Util.hint('请将信息填写完整', {'type':'danger'});
		}else{
			this.owner.send({"data":{'sName' : this.comp("nameInput").value}});
			this.owner.close();
		}
		
		
//		var SFNAME = this.params.data.val('sFName');
//		var SFCODE = this.params.data.val('sFCode');
//		var SFID = this.params.data.val('sFID');
//		var SEQUENCE = this.params.data.val('sSequence');
//		//创建新的
//		var id = justep.UUID.createUUID();
//		var row = this.comp("newSectorData").find(['sParent'], [this.parentID]).length+1;
//		var SSEQUENCE;
//		if(10>row>=0){
//			SSEQUENCE = '00'+row;
//		}else if (99>=row>=10){ 
//			SSEQUENCE = '0'+row;
//		}else{
//			SSEQUENCE = row;
//		}
//		this.comp("newSectorData").newData({
//			'defaultValues' : [ {
//					'sID' : id,//ok
//					'sName' : this.comp("nameInput").value,
//					'sCode' : this.comp("numInput").value,
//					'sFName' : SFNAME+'/'+this.comp("nameInput").value,
//					'sFCode' : SFCODE+'/'+this.comp("numInput").value,
//					'sFID' : SFID+'/'+id+'.dpt',
//					'sOrgKindID' : 'dpt',
//					'sSequence' : SEQUENCE+'/'+SSEQUENCE,
//					'sParent' : this.parentID,
//					'version' : 990
//				} ]
//		})
//		this.comp("newSectorData").saveData();
//		this.comp("newSectorData").refreshData();
//		this.close();
	};

	return Model;
});