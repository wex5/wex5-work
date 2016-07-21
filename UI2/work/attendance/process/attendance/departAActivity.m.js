define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
		this.timer;
		this.depart;
		this.departs;
	};

	Model.prototype.backBtnClick = function(event){
		this.owner.close();	
	};

	Model.prototype.dateButtonClick = function(event){
		var row = event.bindingContext.$object;
		this.depart=row.val("fTime");
		this.comp("datePickerDD").show();
        this.timer=0;
        
        //获取当前行的时间值设置给datePicker
        var dateTime=justep.Date.fromString(row.val("fStartAM"),"hh:mm:ss");
		this.comp("datePickerDD").setValue(dateTime);
          
	};

	Model.prototype.DateButtonClick = function(event){
		var row = event.bindingContext.$object;
		this.depart=row.val("fTime");
		this.comp("datePickerDD").show();	
		this.timer=1;
		
		//获取当前行的时间值设置给datePicker
        var dateTime=justep.Date.fromString(row.val("fEndAM"),"hh:mm:ss");
		this.comp("datePickerDD").setValue(dateTime);
	};

	

	Model.prototype.datePickerDDOK = function(event){
         var Time = event.source.getValue();
         var data = this.comp("DepartData");
         var rows = data.find(['fTime'],[this.depart],true,true,true);
         var rowID=rows[0].getID();
         if(this.timer==0 ){
        	 data.setValueByID("fStartAM",justep.Date.toString(Time, "hh:mm:ss"),rowID);
        	 data.setValueByID("fDepart",this.params.fDepart);
         }else{
        	 data.setValueByID("fEndAM",justep.Date.toString(Time, "hh:mm:ss"),rowID);
        	 data.setValueByID("fDepart",this.params.fDepart);
         }
				 
	};

	Model.prototype.deleteRowClick = function(event){
		var data=this.comp("DepartData");
		data.deleteData(data.getCurrentRow())
	};

	Model.prototype.addDivRowClick = function(event){
		var data=this.comp("DepartData");
		var count=data.count();
			data.newData({
				defaultValues : [{
					"fDepart":this.params.fDepart,
					"fTime":"时段" +(count+1),
					"fStartAM":"9:00:00",
					"fEndAM":"18:00:00"
				}]
			})
	};
	Model.prototype.modelLoad = function(event){
	
		$("[xid=titleSpan]").html("修改班次"+this.params.fDepart);
	};

	Model.prototype.saveButtonClick = function(event){
		this.comp("DepartData").saveData();	
		this.close();
	};

	Model.prototype.modelModelConstruct = function(event){
		this.comp("DepartData").setFilter('filter1',"OA_AttendanceTime.fDepart='"+this.params.fDepart+"'");
	};




	return Model;
});