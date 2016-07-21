define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var UUID = require("$UI/system/lib/base/uuid");
	var Model = function(){
		this.callParent();
		this.rowID = justep.Bind.observable();
		this.depart;
		this.departTime; 
	};

	Model.prototype.setAddrDialogReceive = function(event){
	var self = this;
		var addrData = event.data.data;
		var addr = addrData[0].split(",")
		var point = addrData[1];
		
		var options = {
				  defaultValues : [
					  {
					  fAttendanceAdminID:self.params.rowID,
					  fLongitude:point.lng,
					  fLatitude:point.lat,
					  fAddressDetail:addr[1],
					  fAttenAddrName:addr[0]
					  }
				  ] 
			}; 
			
		this.comp("OA_AttendanceMap").newData(options);		
	}
	
	Model.prototype.modelParamsReceive = function(event){
		var self = this;
		this.rowID.set(self.params.rowID);
		var rows = self.comp("OA_AttendanceAdmin").find(["fID"],[self.params.rowID])
		self.comp("fEffectiveRange").val(rows[0].val("fEffectiveRange"));
	};
	
	Model.prototype.mapDialogReceive = function(event){
		this.comp("setAddrDialog").open({"data":event.data.data});
	};
	
	Model.prototype.saveBtnClick = function(event){
		var range = this.comp("fEffectiveRange").val();
		var attAdminID = this.rowID.get();
		var mapData = this.comp("OA_AttendanceMap");
		var mainData = this.comp("OA_AttendanceAdmin");
		//mainData.setValue("fID",attAdminID);
		
		var weekData = this.comp("weekData");
		weekData.setValue("fAttendanceAdminID",attAdminID);
		
		/*if(range && mapData.count()>0){
				mainData.setValueByID("fEffectiveRange", range, attAdminID);
				mapData.saveData();
				mainData.saveData();
				weekData.saveData();
				this.owner.close();
		}*/
			mapData.saveData();
			mainData.saveData();
			weekData.saveData(); 
			var departSign = weekData.val("fDepart");
			var departTime = weekData.val("fDepartTime");
			this.owner.send({"departSign":departSign,"departTime":departTime});
			this.close();
	};
	
	Model.prototype.removeAddrBtnClick = function(event){
		var row = event.bindingContext.$object;
		this.comp("OA_AttendanceMap").deleteData(row);
	};
	
	Model.prototype.addAddrClick = function(event){
		this.comp("mapDialog").open();
	};
	
	Model.prototype.modelModelConstruct = function(event){
		this.comp("weekData").setFilter("filter","fAttendanceAdminID='"+this.params.rowID+"'");
		this.comp("OA_AttendanceMap").setFilter("filter","fAttendanceAdminID='"+this.params.rowID+"'");
	};

	Model.prototype.AttendanceTimeClick = function(event){
			this.comp("WeekDialog").open();
	};

	Model.prototype.setAttenTimeClick = function(event){
		this.comp("WeekDialog").open({data : this.rowID.latestValue });
	};

	Model.prototype.WeekDialogReceive = function(event){
		this.depart = event.data.data.val("fDepart");
		this.departTime = event.data.data.val("fDepartTime");
		$("[xid=attendanceTime]").html('班次'+ this.depart +'   '+ this.departTime);
		if(this.depart == undefined){
			this.depart = "";
			this.departTime  = "";
		}
		var data = this.comp("weekData");

		if (data != null) {
			data.setValue("fMonday" , event.data.data.val("fMonday"));
			data.setValue("fTuesday" , event.data.data.val("fTuesday"));
			data.setValue("fWednesday" , event.data.data.val("fWednesday"));
			data.setValue("fThursday" , event.data.data.val("fThursday"));
			data.setValue("fFriday" , event.data.data.val("fFriday"));
			data.setValue("fSaturday" , event.data.data.val("fSaturday"));
			data.setValue("fSunday" , event.data.data.val("fSunday"));
			data.setValue("fDepart" , this.depart);
			data.setValue("fDepartTime" , this.departTime);
			data.setValue("fID" , event.data.data.val("fID"));
		} else {
			var options = {
				defaultValues : [ {
					"fMonday" : event.data.data.val("fMonday"),
					"fTuesday" : event.data.data.val("fTuesday"),
					"fWednesday" : event.data.data.val("fWednesday"),
					"fThursday" : event.data.data.val("fThursday"),
					"fFriday" : event.data.data.val("fFriday"),
					"fSaturday" : event.data.data.val("fSaturday"),
					"fSunday" : event.data.data.val("fSunday"),
					"fDepart" : this.depart,
					"fDepartTime" : this.departTime,
					"fID" : event.data.data.val("fID"),
				}, ]
			};
			data.newData(options);
		}
	//	$("[xid=attendanceTime]").html('班次'+ depart +'   '+ departTime);
	};

	return Model;
});