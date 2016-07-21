define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var common = require("$UI/work/common/js/common");
	var Model = function(){
		this.callParent();
		this.departs;
		this.timer;
	};

	Model.prototype.dateButtonClick = function(event){
		var row = event.bindingContext.$object;
		this.depart=row.val("fTime");
		this.comp("datePickerBB").show();
        this.timer=0;
        
         //获取当前行的时间值设置给datePicker
        var dateTime=justep.Date.fromString(row.val("fStartAM"),"hh:mm:ss");
		this.comp("datePickerBB").setValue(dateTime);
	};

	Model.prototype.DateButtonClick = function(event){
		var row = event.bindingContext.$object;
		this.depart=row.val("fTime");
		this.comp("datePickerBB").show();	
		this.timer=1;
		
		//获取当前行的时间值设置给datePicker
        var dateTime=justep.Date.fromString(row.val("fEndAM"),"hh:mm:ss");
		this.comp("datePickerBB").setValue(dateTime);
	};

	Model.prototype.datePickerBBOK = function(event){
		 var Time = event.source.getValue();
         var data = this.comp("departData");
         var rows = data.find(['fTime'],[this.depart],true,true,true);
         var rowID=rows[0].getID();
         if(this.timer==0 ){
        	 data.setValueByID("fStartAM",justep.Date.toString(Time, "hh:mm:ss"),rowID);
        	 data.setValueByID("fDepart",this.params.data.fDepart);
         }else{
        	 data.setValueByID("fEndAM",justep.Date.toString(Time, "hh:mm:ss"),rowID);
        	 data.setValueByID("fDepart",this.params.data.fDepart);
         }
	};

	Model.prototype.modelParamsReceive = function(event){
		var self=this;
		var names=[];
		var code=['A','B','C','D','E','F','G','H','L','J','K','L','M','N','O'];
		var result = [], hash = {};
		if(this.params.data.fDepart == undefined){
			this.comp("departData").eachAll(function(param){
			     names.push(param.row.val('fDepart'));
			 });

			for(var i = 0; i < names.length; i++){
				if(! hash[names[i]]){
					 result.push(names[i]);
					 hash[names[i]] = 1;
				}
			}
			self.departs=code[result.length];
		}
		this.comp("departData").clear();
		var rows = this.comp("departData").newData({
			defaultValues : [{
				"fDepart":this.params.data.fDepart,
				"fTime":"时段"+1,
				"fStartAM":"9:00:00",
				"fEndAM":"18:00:00"
			}]
		});
		common.saveOgn(this.comp("departData"),rows[0]);
	};

	Model.prototype.saveButtonClick = function(event){
		this.comp("departData").saveData();
		this.owner.send({"ref":"true"});
		this.close();
	};

	
	Model.prototype.addDivRowClick = function(event){
		var data=this.comp("departData");
		var count=data.count();
		var rows = data.newData({
			defaultValues : [{
				"fDepart":this.params.data.fDepart,
				"fTime":"时段" +(count+1),
				"fStartAM":"9:00:00",
				"fEndAM":"18:00:00"
			}]
		});
		common.saveOgn(this.comp("departData"),rows[0]);
	};
	
	Model.prototype.departDataDataChange = function(event){
		this.comp("departData").saveData();
	};

	
	Model.prototype.deleteRowClick = function(event){
		var data=this.comp("departData");
		data.deleteData(data.getCurrentRow())
	};

	
	return Model;
});
