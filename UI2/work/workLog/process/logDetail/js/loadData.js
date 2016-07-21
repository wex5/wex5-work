define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	return {
		loadDataFromFile : function(url,objData,operation) {			
			if (operation) { objData.clear();}
			$.ajaxSettings.async = false;
			$.getJSON(url, function(data) {
				objData.loadData(data);
			});
		}
	}
	
	
});