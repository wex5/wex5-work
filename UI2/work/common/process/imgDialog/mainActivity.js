define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.modelParamsReceive = function(event){
		$("[xid=image1]").attr("src",event.data.data);
	};

	Model.prototype.image1Click = function(event){
		this.owner.close();
	};

	return Model;
});