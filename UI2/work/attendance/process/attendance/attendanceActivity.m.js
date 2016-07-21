define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var con = require("$UI/work/common/js/common");
	var util = require("$UI/system/lib/base/util");

	require("cordova!cordova-plugin-geolocation");

	var Model = function() {
		this.callParent();
		this.date;
		this.systemTime;
		this.timer;
		this.address;
		this.countTimeData;
		this.startAMa;
		this.endAMa;
		this.startPMa;
		this.endPMa;
		this.startAMb;
		this.endAMb;
		this.startPMb;
		this.endPMb;
	};

	Model.prototype.TimeDataCustomRefresh = function(event) {
		/**
			baas请求  
			
		 */
		 var TimeData = this.comp("TimeData");
		 justep.Baas.sendRequest({
			"url" : "/work/attendance",
			"action" : "queryPersonAttendanceTime",
			"async" : false,
			"params" : {"person":con.personID},
			"success" : function(data) {
				TimeData.clear();
				TimeData.loadData(data);
			}
			
			
		});
	};

	Model.prototype.transWeek = function(date) {
		var week = date.getDay();
		switch (week) {
		case 1:
			week = "一";
			break;
		case 2:
			week = "二";
			break;
		case 3:
			week = "三";
			break;
		case 4:
			week = "四";
			break;
		case 5:
			week = "五";
			break;
		case 6:
			week = "六";
			break;
		case 0:
			week = "日";
			break;
		}
		
		return week;
	};
	
	Model.prototype.getStartTime = function(date){
		if(date){
			return "(上班时间"+date+")";
		}else{
			return "您未被安排考勤组！";
		}
	};
	
	Model.prototype.getEndTime = function(date){
		if(date){
			return "(下班时间"+ date+")";
		}else{
			return "您未被安排考勤组！";
		}
	};

	Model.prototype.modelLoad = function(event) {
		var self = this;
		this.systemTime = con.getSysDate();
		var timedata = this.comp("TimeData");
		this.countTimeData = this.comp("TimeData").count();
		// "下班时间" + $model.TimeData.val("fEndPM")

		// 时间较大的，9.10-18.10或者为默认
		this.startAMa = timedata.getValueByID("fStartAM", 1);
		this.endAMa = timedata.getValueByID("fEndAM", 1);
		this.startPMa = timedata.getValueByID("fStartPM", 1);
		this.endPMa = timedata.getValueByID("fEndPM", 1);

		// 时间较小的，8.40-17.40
		if (this.countTimeData == 2) {
			this.startAMb = timedata.getValueByID("fStartAM", 2);
			this.endAMb = timedata.getValueByID("fEndAM", 2);
			this.startPMb = timedata.getValueByID("fStartPM", 2);
			this.endPMb = timedata.getValueByID("fEndPM", 2);
		}
		
		if(this.countTimeData===0){
			$(this.getElementByXid("tipSpan")).html("还未被安排考勤组");
		}
		// 判断签到时间,时间段
		if (this.countTimeData == 2 && this.comp("checkInOutData").getValue("fCheckInAM") < this.startAMb) {
			$(this.getElementByXid("EndTimeSpan")).html("下班时间:" + this.endPMb);
		} else {
			$(this.getElementByXid("EndTimeSpan")).html("下班时间:" + this.endPMa);
		}
		
		if (justep.Date.toString(self.systemTime, "hh:mm:ss") > this.startAMa) {
			$(this.getElementByXid("buttonCheck")).attr("style", "background:orange");
			$(this.getElementByXid("stateSpan")).html("迟到打卡");
		}
		
		if (justep.Date.toString(self.systemTime, "hh:mm:ss")<$(this.getElementByXid("EndTimeSpan")).html().split("下班时间:")[1]){
			$(this.getElementByXid("buttonCheckOut")).attr("style", "background:orange");
			$(this.getElementByXid("span4")).html("早退打卡");
		}

		var date = new Date();
		var week = this.transWeek(date);
		var time = justep.Date.toString(date, "yyyy年MM月dd日");
		$(this.getElementByXid("weekSpan")).html("星期" + week);
		$(this.getElementByXid("dateSpanc")).html(time);

		this.comp("datePicker").setValue(date);
		// 取系统时间，设置计时
		var deadLine = this.systemTime;
		var self = this;
		this.timer = window.setInterval(function() {
			$(self.getElementByXid("systemTime")).html(justep.Date.toString(deadLine, "hh:mm:ss"));
			$(self.getElementByXid("systemTime2")).html(justep.Date.toString(deadLine, "hh:mm:ss"));
			deadLine = justep.Date.increase(deadLine, 1, "s");
		}, 1000)
		
		//判断当前人员是否为普通员工，普通员工则“设置按钮”不可见
		con.funRole == 3 && $(this.getElementByXid("AttendanceAdminBtn")).hide();
		
		$(this.getElementByXid("waitDiv")).hide()
		$(this.getElementByXid("content1")).show()
	};

	Model.prototype.selPickerClick = function(event) {
		this.comp("datePicker").show();
	};

	// 切换日期
	Model.prototype.datePickerOK = function(event) {
		var date = event.source.getValue();
		if (date >this.systemTime) {
			util.hint("只能选择今天或之前的时间", {
				"type" : "danger"
			});
			return;
		}
		this.date = date;
		$(this.getElementByXid("dateSpanc")).html(justep.Date.toString(date, "yyyy年MM月dd日"));
		var week = this.transWeek(date);
		$(this.getElementByXid("weekSpan")).html("星期" + week);
		
		//获取当前用户信息WeX5
		//var fPersonID = this.getContext().getCurrentPersonID();
		var fPersonID =con.personID ;
		this.comp("checkInOutData").setFilter(
				"queryMyself",
				"OA_ChekInOut.fPersonID='" + fPersonID + "'AND OA_ChekInOut.fCheckInAM > '" + justep.Date.toString(date, 'yyyy-MM-dd') + "' AND OA_ChekInOut.fCheckInAM < '"
						+ justep.Date.toString(justep.Date.increase(date, 1, "d"), 'yyyy-MM-dd') + "'");
		this.comp("checkInOutData").refreshData();
		if (justep.Date.toString(date, "yyyy-MM-dd") < justep.Date.toString(this.systemTime, "yyyy-MM-dd")) {
			$(this.getElementByXid("tipSpan")).hide();
			$(this.getElementByXid("changeStatus")).hide();
			if (this.comp("checkInOutData").count() == 0) {
				$(this.getElementByXid("col11")).hide();
				$(this.getElementByXid("tipOutRow")).hide();
				$(this.getElementByXid("tipInfoRow")).show();
				// 缺少周末判断
			} else if (!this.comp("checkInOutData").val("fCheckOutPM")) {
				$(this.getElementByXid("tipInfoRow")).hide();
				$(this.getElementByXid("checkOut")).hide();
			} else {
				$(this.getElementByXid("tipOutRow")).hide();
				$(this.getElementByXid("tipInfoRow")).hide();
			}
		} else if (justep.Date.toString(date, "yyyy-MM-dd") == justep.Date.toString(this.systemTime, "yyyy-MM-dd")) {
			if (!this.comp("checkInOutData").val("fCheckInAM")) {
				$(this.getElementByXid("col11")).show();
			}
			if (this.comp("checkInOutData").val("fCheckOutPM")) {
				$(this.getElementByXid("changeStatus")).show();
			}
			$(this.getElementByXid("tipOutRow")).hide();
			$(this.getElementByXid("tipInfoRow")).hide();
		}
	};

	Model.prototype.modelInactive = function(event) {
		window.clearInterval(this.timer);
	};

	Model.prototype.modelParamsReceive = function(event) {
		var self = this;
		require([ 'http://api.map.baidu.com/api?v=2.0&ak=o9pzum8sF8s3wqodZnt9S5OsKlLdjOil&callback=_baiduInit' ], function() {
			if (window.BMap && window.BMap.Map) {
				window._baiduInit();
			}
		});
		window._baiduInit = function() {
			var geoc = new BMap.Geocoder();
			var success = function(data) {
				var longitude = data.coords.longitude;
				var latitude = data.coords.latitude;
				var coorType = data.coorType || "gps";
				if (coorType == "bd09ll") {
					geoc.getLocation(new BMap.Point(longitude, latitude), function(rs) {
						self.address = rs.address + rs.surroundingPois[0].title;
						util.hint("地理位置获取成功!");
					})
				} else if (coorType == "gps") {
					$.ajax({
						method : "GET",
						url : "/baas/bmap/api/convertLocation",
						cache : false,
						data : {
							longitude : longitude,
							latitude : latitude
						}
					}).done(function(result) {
						var bmapResult = JSON.parse(result);
						var lon = bmapResult.result[0].x;
						var lat = bmapResult.result[0].y;
						geoc.getLocation(new BMap.Point(lon, lat), function(rs) {
							self.address = rs.address + rs.surroundingPois[0].title;
						})
					})
				}
			}

			var error = function(e) {
				justep.Util.hint("获取地理位置失败！请尝试设置应用权限");
				// 经纬度116.468497,39.871319
				// 地址 -- 北京市朝阳区东三环南路98号高和蓝峰大厦18层
				// 名称 -- 北京起步科技有限公司
//				var lon = 116.468497;
//				var lat = 39.871319;
				//self.address = "北京市朝阳区东三环南路98号高和蓝峰大厦18层,北京起步科技有限公司";
			}

			navigator.geolocation.getCurrentPosition(success, error);

		}

	};

	// 签到按钮判断
	Model.prototype.buttonCheckInClick = function(event) {
		var self=this;
		if (this.address) {
			if(this.countTimeData === 0){
				util.hint("还未被安排考勤组，请与管理员联系");
				return;
			}
			if (justep.Date.toString(this.systemTime, "hh:mm:ss") > this.startAMa) {
				this.comp("remarkDialog").set({
					"title" : "迟到打卡"
				});
				this.comp("remarkDialog").open({
					"data" : {
						"status" : 0,
						"systemTime" : self.systemTime,
						"address" : this.address
					}
				});
			} else {
				this.comp("checkInOutData").newData();
				this.comp("checkInOutData").setValue("fCheckInAM", this.systemTime);
				this.comp("checkInOutData").setValue("fCheckAreaAM", this.address);
				
				con.savePerson(this.comp("checkInOutData"));
				con.saveDept(this.comp("checkInOutData"));
				con.saveOgn(this.comp("checkInOutData"));
				
				
				this.comp("checkInOutData").saveData();
			}
		} else {
			util.hint("请等待获取地理位置");
		}
	};

	Model.prototype.buttonCheckOutClick = function(event) {
		var self=this;
		var endTime = $(this.getElementByXid("EndTimeSpan")).html().split(":")[1];
		
		self.systemTime =con.getSysDate();
		if (this.address) {
			if (justep.Date.toString(self.systemTime, "hh:mm:ss") < endTime) {
				this.comp("remarkOutDialog").set({
					"title" : "早退打卡"
				});
				this.comp("remarkOutDialog").open({
					"data" : {
						"status" : 1,
						"systemTime" :self.systemTime,
						"address" : this.address
					}
				});
			} else {
				this.comp("checkInOutData").setValue("fCheckOutPM", this.systemTime);
				this.comp("checkInOutData").setValue("fCheckAreaPM", this.address);
				this.comp("checkInOutData").saveData();
			}

		} else {
			util.hint("请等待获取地理位置");
		}
	};

	Model.prototype.remarkDialogReceived = function(event) {
		//Wex5获取当前人的ID
		var fPersonID =con.personID;
		var date = new Date();
		this.comp("checkInOutData").setFilter(
				"queryMyself",
				"OA_ChekInOut.fPersonID='" + fPersonID + "'AND OA_ChekInOut.fCheckInAM > '" + justep.Date.toString(date, 'yyyy-MM-dd') + "' AND OA_ChekInOut.fCheckInAM < '"
						+ justep.Date.toString(justep.Date.increase(date, 1, "d"), 'yyyy-MM-dd') + "'");
		this.comp("successDialog").show();
		this.comp("checkInOutData").refreshData();
	};

	Model.prototype.remarkOutDialogReceived = function(event) {
		//Wex5获取当前人的ID
		var fPersonID = con.personID;
		var date = new Date();
		this.comp("checkInOutData").setFilter(
				"queryMyself",
				"OA_ChekInOut.fPersonID='" + fPersonID + "'AND OA_ChekInOut.fCheckInAM > '" + justep.Date.toString(date, 'yyyy-MM-dd') + "' AND OA_ChekInOut.fCheckInAM < '"
						+ justep.Date.toString(justep.Date.increase(date, 1, "d"), 'yyyy-MM-dd') + "'");
		this.comp("successOutDialog").show();
		this.comp("checkInOutData").refreshData();
	};

	Model.prototype.changeStatusClick = function(event) {
		var self = this;
		if (this.address) {
			this.comp("remarkOutDialog").open({
				"data" : {
					"status" : 1,
					"systemTime" : self.systemTime,
					"address" : self.address,
					"standTime" : self.comp("TimeData").getValue("fEndPM")
				}
			});
		} else {
			util.hint("请等待获取地理位置");
		}

	};

	Model.prototype.modelModelConstruct = function(event) {
		//Wex5获取当前人的ID
		var fPersonID = con.personID;
		var date = new Date();
		this.comp("checkInOutData").setFilter(
				"queryMyself",
				"OA_ChekInOut.fPersonID='" + fPersonID + "'AND OA_ChekInOut.fCheckInAM > '" + justep.Date.toString(date, 'yyyy-MM-dd') + "' AND OA_ChekInOut.fCheckInAM < '"
						+ justep.Date.toString(justep.Date.increase(date, 1, "d"), 'yyyy-MM-dd') + "'");
	};

	Model.prototype.attenContentsActiveChange = function(event) {
		var to = event.to;
		if (to == 1) {
			$('.x-window-container', this.comp('attenContents').$domNode).css('display', 'none');
			this.comp('navContainer').$domNode.css('display', 'block');
			this.comp("navContainer").refresh();
		}
	};
	
	Model.prototype.AttendanceAdminBtnClick = function(event){
		var url = "$UI/work/attendance/process/attendance/AttendanceManagerActivity.m.w"//?process=/OA/attendance/process/attendance/attendanceProcess&Activity=AttendanceManagerActivity";
		justep.Shell.showPage(url);
	};

	return Model;
});