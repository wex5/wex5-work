define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.liClick = function(event){
		var row = event.bindingContext.$object;
		var date = row.val("fDate");
		this.comp("dateData").setValue("isChecked",0);
		var v = (row.val("isChecked") == 1) ? 0 : 1; 
		this.comp("dateData").setValue("isChecked", v, row);
		this.owner.send(date,v);
		this.close();
	};

	Model.prototype.modelLoad = function(event){
		var data = this.comp('dateData');
		data.setValue("isChecked",'1');
		var year=new Date().getFullYear();
		var date=new Date().getMonth()+2;
		var valueArr=[];
		for(var i=1;i<11;i++){
			if(date>1){
				date-=1;
			}else{
				year-=1;
				date+=12;
				date-=1;
			}
			value= year+'年'+date+'月';
			valueArr.push(value);
			data.newData({
				defaultValues : [ {
				 'fID': i,
			     'fDate': value
			     }]
		    })
		}
		
		this.comp("radio").set({"checked":true});
		var self=this;
		
		$("[xid=dateChooseDlg]>.x-dialog-overlay").addClass("clickEvent");
		$($(".clickEvent")[0]).click(function(){
			self.close();
		});
	}

	return Model;
});