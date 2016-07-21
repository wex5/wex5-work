define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var biz = require("$UI/system/lib/biz");
	
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.okBtnClick = function(event){
		;
		var rows = this.comp("mainDataTables").getCheckeds();
		if(rows.length == 0){
			alert("请选择数据");
			return;
		}
		this.comp("windowReceiver").windowEnsure(rows);
	};

	return Model;
});