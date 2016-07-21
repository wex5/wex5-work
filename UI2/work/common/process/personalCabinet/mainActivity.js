define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Model = function() {
		this.callParent();
		this.docAuthList = null;
		this.docAuthListArr = null;
	};

	Model.prototype.modelLoad = function(event) {
		var docTree = this.comp("docNodeTree");
		docTree.refreshData();
	};

	return Model;
});