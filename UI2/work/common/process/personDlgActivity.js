define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
	Model.prototype.checkboxChange= function(event){
		var row = event.bindingContext.$object;
		var data = this.comp('saveData');
		if(event.value == 1){
			var names=row.val('sName');
			var personID=row.val('sPersonID');
		 	var options = {
		 		defaultValues : [
		 			{sName:names,sPersonID:personID}
		 		]};	
		 	data.newData(options);
		 	data.saveData()
		}else if(event.value == 0){
			var rows=data.find(['sPersonID'],[row.val('sPersonID')]);
			if(rows.length>0){
				for (var i = 0; i < rows.length; i++) {
					data.remove(rows[i]);
				}
			}
		}
	};

	Model.prototype.saveButtonClick = function(event){
		var personArr = []
	    this.comp('saveData').each(function(param){
	    	personArr.push({"sName":param.row.val('sName'),"sPersonID":param.row.val('sPersonID')});
	    });
	   this.owner.send({"data":personArr});
	   this.close();
	};

	Model.prototype.modelLoad = function(event){
		this.comp('saveData').clear();
	};


	return Model;
});