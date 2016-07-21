define(function(require){
	var $ = require("jquery");
	var co = require("$UI/work/common/js/common");
	var Model = function(){
		this.callParent();
	};
	
	Model.prototype.mainDataBeforeRefresh = function(event) {
		var fpersonID = co.personID;
		this.comp("mainData").setFilter("filter1", "s.sParentID is null and s.sCreatorPersonID like '"+fpersonID+"'");// 筛选包含当前人的任务默认
	};
	
	return Model;
});