define(function(require){
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
		this.row;
	};

	
	Model.prototype.checkChange = function(event){
		this.row = event.bindingContext.$object;
	};
	
	Model.prototype.okBtnClick = function(event){
		if(this.row){
			this.owner.send({"data":this.row});
			this.owner.close();
		}else{
			justep.Util.hint("请选择一个部门！");
		}
		
	};
	
	Model.prototype.getCount =  function(row){
		var id = row.val("sID")
		var rows = this.comp("dptData").find(["sParent"],[id]);
		return rows.length;
	}
	
	return Model;
});