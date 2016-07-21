define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var con = require("$UI/work/common/js/common");

	var Model = function() {
		this.callParent();
		this.addrData;
		this.rows = [];
		this.SpersonID=[];
		this.SpersonName=[];
		this.JpersonName = [];
		this.JpersonID=[];
	};

	Model.prototype.modelLoad = function(event) {
		this.comp("addrData").clear();
		var weekData = this.comp("weekData");
		weekData.setValue("fMonday", "true");
		weekData.setValue("fTuesday", "true");
		weekData.setValue("fWednesday", "true");
		weekData.setValue("fThursday", "true");
		weekData.setValue("fFriday", "true");
		weekData.setValue("fSaturday", "false");
		weekData.setValue("fSunday","false");
		weekData.setValue("fDepart", "A");
		weekData.setValue("fDepartTime", "09:00-18:00");
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
					fAttenAddrName : addr[0]
				} ]
			};

			var rows = this.comp("addrData").newData(options);
			this.rows.push(rows[0]);
		}
	};

	Model.prototype.WeekDialogReceive = function(event) {
		var data = event.data.data;
		var weekData = this.comp("weekData");
		weekData.setValue("fMonday", data.val("fMonday"));
		weekData.setValue("fTuesday", data.val("fTuesday"));
		weekData.setValue("fWednesday", data.val("fWednesday"));
		weekData.setValue("fThursday", data.val("fThursday"));
		weekData.setValue("fFriday", data.val("fFriday"));
		weekData.setValue("fSaturday", data.val("fSaturday"));
		weekData.setValue("fSunday", data.val("fSunday"));
		weekData.setValue("fDepart", data.val("fDepart"));
		weekData.setValue("fDepartTime", data.val("fDepartTime"));
	};

	Model.prototype.AttendancePersonClick = function(event){
		this.comp("perDialog").open();
	};

	Model.prototype.attendanceResponsiblePersonClick = function(event){
		this.comp("manDialog").open();
	};

	Model.prototype.manDialogReceive = function(event){
		var arr = event.data.data;// 返回的负责人信息
		this.SpersonID=[];
		this.SpersonName=[];
		for (var i = 0; i < arr.length; i++) {
			this.SpersonID.push(arr[i].sPersonID);
			this.SpersonName.push(arr[i].sName);
		}
		this.comp("attendanceResponsiblePerson").val(this.SpersonID.length + "人");
	};

	Model.prototype.perDialogReceive = function(event){
		var self = this;
		this.JpersonName = [];
		this.JpersonID=[];
		var personArr  = event.data.data;
		
		for (var i = 0; i < personArr.length; i++) {
			this.JpersonName.push(personArr[i].sName);
			this.JpersonID.push(personArr[i].sPersonID);
		}

		var adminData = this.comp("attenData");
		var id = this.JpersonID.join(",");
		var result;
		justep.Baas.sendRequest({
			"url" : "/work/attendance",
			"action" : "queryPerson",
			"async" : false,
			"params" : {'rowID':"",
						'orgID':con.ognID,
						'person':id
						},
			"success" : function(data) {
				result = data.rows;
			}
		});
		if (result.length > 0) {
			var message = "";
			result.length==1 && (message=result[0].fPersonName); 
			result.length>1 && (message=result[0].fPersonName+"等"+result.length+"人"); 
			this.comp("replaceDialog").show({
				message :  message + "已在别的考勤组，是否移到此考勤组",
				callback : function(o) {
					if (o.button == "ok") {
						var row,nameValue,IDvalue;
						for(var i=0;i<result.length;i++){
							row = adminData.getRowByID(result[i].fID);
							nameValue =adminData.getValue("fAttendancePersonName", row);
							IDvalue = adminData.getValue("fAttendancePersonID", row);
							if(IDvalue.indexOf(result[i].fPersonID) !== 0){
								IDvalue=IDvalue.replace(","+result[i].fPersonID,"");
								adminData.setValue("fAttendancePersonID", IDvalue, row);
								nameValue=nameValue.replace(","+result[i].fPersonName,"");
								adminData.setValue("fAttendancePersonName", nameValue, row);
							}else{
								IDvalue=IDvalue.replace(result[i].fPersonID+"," ,"");
								adminData.setValue("fAttendancePersonID", IDvalue, row);
								self.openID=IDvalue;
								nameValue=nameValue.replace(result[i].fPersonName+",","");
								adminData.setValue("fAttendancePersonName", nameValue, row);
							}
						}
						self.comp("AttendancePerson").val(self.JpersonID.length + "人");
					}else if(o.button=="cancel"){
						for(var i=0;i<result.length;i++){
							var index =self.joinPeopleID.indexOf(result[i].fPersonID);
							if(index != -1){
								self.JpersonID.splice(index,1);
								self.JpersonName.splice(index,1);
								self.comp("AttendancePerson").val(self.JpersonID.length + "人");
							}
						}
					}
				}
			});
		}else{
			self.comp("AttendancePerson").val(self.JpersonID.length + "人");
		}
		
	};

	Model.prototype.saveBtnClick = function(event){
		var mainData = this.comp("mainData");
		var weekData = this.comp("weekData");
		var mapData = this.comp("addrData");
		var index =null; //被选中的单选框的下标
		var groupName = this.comp("fAttendanceGroupNameInput").val();
		var range = this.comp("fEffectiveRange").val();
		
		$("input[name=banzhi]").each(function(i,obj){
			if(obj.checked){
				index = i+1;
			}
		});
		
		if(this.rows.length>0 && this.SpersonID.length>0 && this.JpersonID.length>0 && groupName && range){
			//保存考勤星期表数据
			weekData.setValue("fAttendanceAdminID",mainData.getValue("fID"));
			
			//保存考勤主表数据
			index && mainData.setValue("fAttendanceClass", index);
			mainData.setValue("fAttendanceTeamManager",this.SpersonName.join(","));
			mainData.setValue("fAttendanceTeamManagerID", this.SpersonID.join(","));
			mainData.setValue("fAttendancePersonName", this.JpersonName.join(","));
			mainData.setValue("fAttendancePersonID", this.JpersonID.join(","));
			con.savePerson(mainData);
			con.saveDept(mainData);
			con.saveOgn(mainData);
			
			//保存考勤地址信息
			for (var i = 0; i < this.rows.length; i++) {
				mapData.setValueByID("fAttendanceAdminID", mainData.getValue("fID"), this.rows[i].val("fID"));
			}
			mainData.saveData();
			weekData.saveData();
			mapData.saveData();
			this.owner.close();
		}else{
			this.rows.length>0  ||  justep.Util.hint("请添加考勤地址！");
			this.SpersonID.length>0  ||  justep.Util.hint("请添加考勤组负责人！");
			this.JpersonID.length>0  ||  justep.Util.hint("请添加参与考勤人员！");
			groupName  ||  justep.Util.hint("请填写考勤组名称！");
			range  ||  justep.Util.hint("请设置考勤范围！");
		}
		
		
	};

	Model.prototype.removeAddrBtnClick = function(event){
		this.rows = con.removeArrEle(this.rows,this.comp("addrData").getRowIndex(event.bindingContext.$object));
		this.comp("addrData").deleteData(event.bindingContext.$object);
	};

	Model.prototype.setAttenTimeClick = function(event){
		this.comp("WeekDialog").open();
	};

	return Model;
});