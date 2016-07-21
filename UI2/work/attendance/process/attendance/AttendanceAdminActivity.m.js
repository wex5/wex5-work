define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var IM = require("$UI/chat/js/im"); 
	var util = require("$UI/system/lib/base/util");

	var Model = function() {
		this.callParent();
		this.SpersonName = [];// 考勤组负责人数组
		this.SpersonID = [];// 考勤组负责人ID数组
		this.JpersonName = [];// 参与考勤人员
		this.JpersonID = []; // 参与考勤人员ID
		this.repeatName=[];
		this.repeatID=[];
		this.repeatRowID;
		this.result;
		this.isUpdata=false;
	};
	
	Array.prototype.indexOf = function(val) {
		for (var i = 0; i < this.length; i++) {
		if (this[i] == val) return i;
		}
		return -1;
	};

	Model.prototype.AttendancePersonClick = function(event) {
		var self = this;
		this.comp("AttendanceOrgDialog").open({
			"data" : {
					selected : {
					kind : "sPersonID",
					value: this.JpersonID
					}
				}
		});
	};

	Model.prototype.AttendanceOrgDialogReceive = function(event) {
		var self = this;
		this.JpersonName = [];
		this.JpersonID=[];
		var personArr  = event.data.data;
		var result;

		for (var i = 0; i < personArr.length; i++) {
			this.JpersonName.push(personArr[i].sName);
			this.JpersonID.push(personArr[i].sPersonID);
		}

		var id = this.JpersonID.join(",");
		/*var params = new biz.Request.ActionParam();
		params.setParam("rowID","");
		params.setParam('person', id);
		biz.Request.sendBizRequest({
			contentType : 'application/json',
			dataType : "json",
			"context" : ctx,
			"action" : "queryPersonAction",
			"parameters" : params,
			"callback" : function(data) {
				if (data.state) {
					var resultData = data.response["person"];
					if (resultData) {
						self.result = resultData.rows;
					}
				}
			}
		});*/
			justep.Baas.sendRequest({
			"url" : "/work/attendance",
			"action" : "queryPerson",
			"async" : false,
			"params" : {'rowID':"ddd",
						'ID':IM.getCurrentInfo().CurrentPersonID,
						'person':id
						},
			"success" :function(data) {
			/*	if (data.state) {
					var resultData = data.response[datastr];
					if (resultData) {
						self.comp(datastr).clear();
						self.comp(datastr).loadData(resultData);
						}
					}
				}*/
				if(data){
//					self.comp("AttendanceAdminData").clear();
					self.result=data.rows;
				}
			}
		});
		var resultArr=[];
		if (self.result.length > 0) {
			var message = "";
			self.result.length==1 && (message=self.result[0].fPersonName) ;
			self.result.length>1 && (message=self.result[0].fPersonName+"等"+self.result.length+"人"); 
			this.comp("replaceDialog").show({
				message :  message + "已在别的考勤组，是否移到此考勤组",
				callback : function(o) {
					if (o.button == "ok") {
//						var row,nameValue,IDvalue;
//						for(var i=0;i<result.length;i++){
//							row = adminData.getRowByID(result[i].userdata.id.value);
//							nameValue =adminData.getValue("fAttendancePersonName", row)
//							IDvalue = adminData.getValue("fAttendancePersonID", row)
//							if(IDvalue.indexOf(",")!= -1){
//								if(IDvalue.indexOf(result[i].fPersonID.value) != 0){
//									IDvalue=IDvalue.replace(","+result[i].fPersonID.value,"");
//									adminData.setValue("fAttendancePersonID", IDvalue, row);
//									nameValue=nameValue.replace(","+result[i].fPersonName.value,"");
//									adminData.setValue("fAttendancePersonName", nameValue, row);
//								}else{
//									IDvalue=IDvalue.replace(result[i].fPersonID.value+"," ,"");
//									adminData.setValue("fAttendancePersonID", IDvalue, row);
//									self.openID=IDvalue;
//									nameValue=nameValue.replace(result[i].fPersonName.value+",","");
//									adminData.setValue("fAttendancePersonName", nameValue, row);
//								}
//							}else{
//								IDvalue=IDvalue.replace(result[i].fPersonID.value ,"");
//								adminData.setValue("fAttendancePersonID", IDvalue, row);
//								self.openID=IDvalue;
//								nameValue=nameValue.replace(result[i].fPersonName.value,"");
//								adminData.setValue("fAttendancePersonName", nameValue, row);
//							}
//						}
                  
						self.isUpdata = true;
					}else if(o.button=="cancel"){
						for(var i=0;i<self.result.length;i++){
							var index =self.JpersonID.indexOf(self.result[i].fPersonID.value);
							if(index != -1){
								self.JpersonID.splice(index,1);
								self.JpersonName.splice(index,1);
								self.comp("AttendancePerson").val(self.JpersonID.length + "人");
							}
						}
					}
				}
			});
		}
		
		this.comp("AttendancePerson").val(this.JpersonID.length + "人");
		
	};

	Model.prototype.attendanceResponsiblePersonClick = function(event) {
		if (this.comp("fAttendanceGroupNameInput").val()) {
			this.comp("ManagersOrgDialog").open({
				"data" : {
					selected : {
					kind : "sPersonID",
					value: this.SpersonID
					}
				}
			});
		} else {
			justep.Util.hint("请先填写考勤组名称！");
		}

	};

	Model.prototype.ManagersOrgDialogReceive = function(event) {
		var arr = event.data.data;// 返回的负责人信息
		this.SpersonID=[];
		this.SpersonName=[];
		for (var i = 0; i < arr.length; i++) {
			this.SpersonID.push(arr[i].sPersonID);
			this.SpersonName.push(arr[i].sName);
		}
		this.comp("attendanceResponsiblePerson").val(this.SpersonID.length + "人");
	};

	Model.prototype.nextBtnClick = function(event) {
		var radioValue, groupName;
		$("[name=radio]").each(function(index, obj) {
			if (obj.nodeName == "INPUT") {
				if (obj.checked) {
					radioValue = obj.value;
				}
			}
		});
		groupName = this.comp("fAttendanceGroupNameInput").val();
		if (groupName && this.comp("AttendancePerson").val() && this.comp("attendanceResponsiblePerson").val()) {
			var url = "$UI/work/attendance/process/attendance/RuleSetActivity.m.w";
			var data = {
				"name" : groupName,
				"shifts" : radioValue,
				"personID" : this.SpersonID,
				"personName" : this.SpersonName,
				"AttendanceArr" : this.JpersonName,
				"AttendanceArrID" : this.JpersonID,
				"isUpdata" : this.isUpdata,
				"result" : this.result
			};
			justep.Shell.showPage(url, data);
		} else {
			groupName || (justep.Util.hint("请先填写考勤组名称！"));
			this.comp("AttendancePerson").val() || (justep.Util.hint("请为当前考勤组添加人员！"));
			this.comp("attendanceResponsiblePerson").val() || (justep.Util.hint("请设置考勤组负责人！"));
		}
	};
	
	Model.prototype.modelParamsReceive = function(event){
		this.SpersonID = [];// 考勤组负责人ID数组
		this.JpersonName = [];// 参与考勤人员
		this.JpersonID = []; // 参与考勤人员ID
		this.result=null;
		this.isUpdata=false;
		this.comp("AttendancePerson").clear();
		this.comp("attendanceResponsiblePerson").clear();
		this.comp("AttendanceAdminData").refreshData();
		var a = this.comp("AttendanceAdminData").newData()[0];
	};
	
	return Model;
});