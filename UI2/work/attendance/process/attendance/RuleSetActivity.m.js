define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var UUID = require("$UI/system/lib/base/uuid");
	var con = require("$UI/work/common/js/common");
	
	var Model = function() {
		this.depart;
		this.departTime;
		this.callParent();
		this.datas; // 上一个页面传过来的数据
		this.addrData; // 地址选择传回来的数据
		this.rows = [];
	};

	Model.prototype.findElement = function(arr, obj) {
		var result = [];
		for (var i = 0; i < arr.length; i++) {
			if (arr[i] !== obj) {
				result.push(arr[i]);
			}
		}
		return result;
	};

	Model.prototype.modelParamsReceive = function(event) {
		//清空页面数据
		this.datas=null; 
		this.addrData=null; 
		this.rows = [];
		this.comp("OA_AttendanceMap").refreshData();
		this.comp("OA_AttendanceAdmin").refreshData();
		this.comp("Data").refreshData();
		this.comp("fEffectiveRange").clear();
		this.datas = event.data;
		
		$("[xid=setGroup]").html("对  " + event.data.name + "  的考勤组进行规则设置");
		this.comp("OA_AttendanceMap").clear();
		this.comp("OA_AttendanceAdmin").clear();
	};

	Model.prototype.addAddrClick = function(event) {
		this.comp("mapDialog").open();
	};

	Model.prototype.mapDialogReceive = function(event) {
		this.comp("setAddrDialog").open({
			"data" : event.data.data
		});
	};

	Model.prototype.setAddrDialogReceive = function(event) {
		this.addrData = event.data.data;
		if (this.addrData) {
			var addr = this.addrData[0].split(",");
			var point = this.addrData[1];

			var options = {
				defaultValues : [ {
					fLongitude : point.lng,
					fLatitude : point.lat,
					fAddressDetail : addr[1],
					fAttenAddrName : addr[0],
					fID:UUID.createUUID()
				} ]
			};

			var rows = this.comp("OA_AttendanceMap").newData(options);
			this.rows.push(rows[0]);
		}
	};

	Model.prototype.removeAddrBtnClick = function(event) {
		var row = event.bindingContext.$object;
		this.comp("OA_AttendanceMap").remove(row);// .deleteData(row);
		this.rows = this.findElement(this.rows, row);
	};

	Model.prototype.saveBtnClick = function(event) {
		var self = this;
		var mapData = this.comp("OA_AttendanceMap");
		var adminData = this.comp("Data");
		var range = this.comp("fEffectiveRange").val();
		
		var weekData = this.comp("OA_AttendanceWeek");
		
		if (range && this.rows.length > 0) {
			var options1 = {
				defaultValues : [ {
					"fAttendanceClass" : self.datas.shifts,
					"fAttendanceGroupName" : self.datas.name,
					"fAttendanceTeamManager" : self.datas.personName.join(","),
					"fAttendanceTeamManagerID" : self.datas.personID.join(","),
					"fAttendancePersonName" : self.datas.AttendanceArr.join(","),
					"fAttendancePersonID" : self.datas.AttendanceArrID.join(","),
					"fEffectiveRange" : self.comp("fEffectiveRange").val(),
					"fID":UUID.createUUID(),
				} ]
			};

			var row = this.comp("OA_AttendanceAdmin").newData(options1);
			con.savePerson(mapData,row[0]);
			con.saveDept(mapData,row[0]);
			con.saveOgn(mapData,row[0]);
			var rowID = row[0].val("fID");
			
			weekData.setValue("fAttendanceAdminID",rowID);
			weekData.saveData();
			
			
			
			for (var i = 0; i < this.rows.length; i++) {
				mapData.setValueByID("fAttendanceAdminID", rowID, self.rows[i].val("fID"));
			}
			var result = self.datas.result;
			if (self.datas.isUpdata) {
				var nameValue, IDvalue;
				for (var i = 0; i < result.length; i++) {
					row = adminData.getRowByID(result[i].fID);
					nameValue = adminData.getValue("fAttendancePersonName", row);
					IDvalue = adminData.getValue("fAttendancePersonID", row);
					if (IDvalue.indexOf(",") != -1) {
						if (IDvalue.indexOf(result[i].fPersonID.value) !== 0) {
							IDvalue = IDvalue.replace("," + result[i].fPersonID.value, "");
							adminData.setValue("fAttendancePersonID", IDvalue, row);
							nameValue = nameValue.replace("," + result[i].fPersonName.value, "");
							adminData.setValue("fAttendancePersonName", nameValue, row);
						} else {
							IDvalue = IDvalue.replace(result[i].fPersonID.value + ",", "");
							adminData.setValue("fAttendancePersonID", IDvalue, row);
							self.openID = IDvalue;
							nameValue = nameValue.replace(result[i].fPersonName.value + ",", "");
							adminData.setValue("fAttendancePersonName", nameValue, row);
						}
					} else {
						IDvalue = IDvalue.replace(result[i].fPersonID.value, "");
						adminData.setValue("fAttendancePersonID", IDvalue, row);
						self.openID = IDvalue;
						nameValue = nameValue.replace(result[i].fPersonName.value, "");
						adminData.setValue("fAttendancePersonName", nameValue, row);
					}
				}
				adminData.saveData();
			}
			
			
			this.comp("OA_AttendanceAdmin").saveData();
			mapData.saveData();
			justep.Shell.showPage("$UI/work/attendance/process/attendance/AttendanceManagerActivity.m.w");
		}else{
			justep.Util.hint("请添加办公地点或填写有效范围");
		}

	};

	Model.prototype.setAttenTimeClick = function(event){
		this.comp("WeekDialog").open({fStr:""});
	};

	Model.prototype.WeekDialogReceive = function(event){
		this.depart = event.data.data.val("fDepart");
		this.departTime = event.data.data.val("fDepartTime");
		if(this.depart === undefined){
			this.depart = "";
			this.departTime  = "";
		}
		var data = this.comp("OA_AttendanceWeek");
		var options = {
			  defaultValues : [  {
			                   "fMonday":event.data.data.val("fMonday"),
			                   "fTuesday":event.data.data.val("fTuesday"),
			                   "fWednesday":event.data.data.val("fWednesday"),
			                   "fThursday":event.data.data.val("fThursday"),
			                   "fFriday":event.data.data.val("fFriday"),
			                   "fSaturday":event.data.data.val("fSaturday"),
			                   "fSunday":event.data.data.val("fSunday"),
			                   "fDepart":this.depart,
			                   "fDepartTime":this.departTime,
			                   }, ]
			  }; 
			  data.newData(options);
		$("[xid=attendanceTime]").html('班次'+ this.depart +'   '+ this.departTime);
	};

	Model.prototype.modelModelConstructDone = function(event){
		this.getElementByXid("attendanceTime").innerHTML = "班次 A ： 09:00:00-18:00:00";
	};

	return Model;
});