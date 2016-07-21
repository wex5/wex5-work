define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var util = require("$UI/system/lib/base/util");
	var con = require("$UI/work/common/js/common");
	require("cordova!cordova-plugin-geolocation");

	var Model = function() {
		this.callParent();
		this.lng = justep.Bind.observable();
		this.lat = justep.Bind.observable();
		this.signTime;
		this.signAddr;
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
		;
		return week;
	}

	Model.prototype.modelLoad = function(event) {
		var personName = con.personName
		$(this.getElementByXid("personName")).html(personName);
		this.detailDialogClose();
		var date = con.getSysDate();//时间
		var week = this.transWeek(date);
		$(this.getElementByXid("weekSpan")).html("星期" + week);
		var time = justep.Date.toString(date, "yyyy-MM-dd");
		$(this.getElementByXid("dateSpan")).html(time);
		$(this.getElementByXid("timeSpan")).html(justep.Date.toString(date, "hh:mm"));
		this.signTime = justep.Date.toString(date, "hh:mm");
		
		$(this.getElementByXid("waitDiv")).hide();
		$(this.getElementByXid("content1")).show();
		$(this.getElementByXid("mainImgSpan")).html(personName.slice(-2));
	};

	Model.prototype.signImageClick = function(event) {
		this.signAddr = this.comp("statusData").getValue("address");
		if (this.signAddr) {
			this.comp("detailDialog").open({
				"data" : [ this.signTime, this.signAddr ]
			});
		} else {
			util.hint("获取地理位置失败！请尝试设置应用权限")
		}
	};

	Model.prototype.detailDialogClose = function(event) {
		this.comp("mainData").refreshData();
	};

	Model.prototype.mainDataCustomRefresh = function(event) {
		var fPersonID =con.personID;
		var append = event.options && event.options.append;
		var time= con.getSysDateStr("yyyy-MM-dd");
		justep.Baas.sendRequest({
			"url" : "/work/Sign",
			"action" : "querySignCountAction",
			"async" : false,
			"params" : {"strDate":time,"fPersonID":fPersonID},
			"success" : function(data) {
				event.source.loadData(data, append);
			}
		});
	};

	Model.prototype.loadBMap = function(addr, addrPoint) {
		var id = this.getIDByXID("baiduMap");
		var self = this;

		var mainData = this.comp("statusData");
		window._baiduInit = function() {
			var longitude, latitude;
			var map = new BMap.Map(id); // 创建地图对象，可以设置地图缩放最大最小级别，设置是否显示POI点击
			var geoc = new BMap.Geocoder(); // 116.468439,39.871337
			var geol = new BMap.Geolocation();
			if (addrPoint) {
				var nowPoint = new BMap.Point(addrPoint.lng, addrPoint.lat);
				map.centerAndZoom(new BMap.Point(addrPoint.lng, addrPoint.lat), 17);
				map.setCurrentCity("北京");
				map.disableDragging();// 禁止拖拽地图
				map.disableDoubleClickZoom()// 禁止双击方法地图你
				var marker = new BMap.Marker(nowPoint);
				map.addOverlay(marker);
				geoc.getLocation(nowPoint, function(rs) {
					mainData.setValue("address", addr);
				})
			} else {
				var success = function(data) {
					var coorType = data.coorType || "gps";
					var longitude = data.coords.longitude;
					var latitude = data.coords.latitude;
					if(coorType == "bd09ll"){
						var nowPoint = new BMap.Point(longitude, latitude);
						map.centerAndZoom(nowPoint, 17);
						map.setCurrentCity("北京");
						map.disableDragging();// 禁止拖拽地图
						map.disableDoubleClickZoom()// 禁止双击放大地图你
						var marker = new BMap.Marker(nowPoint);
						map.addOverlay(marker);
						geoc.getLocation(nowPoint, function(rs) {
							mainData.setValue("address", rs.address + rs.surroundingPois[0].title);
						})
					}else if(coorType == "gps"){
						$.ajax({
							method: "GET",
							url:"/baas/bmap/api/convertLocation",
							cache:false,
							data:{
								longitude:longitude,
								latitude:latitude
							}
						}).done(function(result) {
							var bmapResult = JSON.parse(result);
							var lon = bmapResult.result[0].x;
							var lat = bmapResult.result[0].y;
							var nowPoint = new BMap.Point(lon, lat);
							map.centerAndZoom(nowPoint, 17);
							map.setCurrentCity("北京");
							map.disableDragging();// 禁止拖拽地图
							map.disableDoubleClickZoom()// 禁止双击放大地图你
							var marker = new BMap.Marker(nowPoint);
							map.addOverlay(marker);
							geoc.getLocation(nowPoint, function(rs) {
								mainData.setValue("address", rs.address + rs.surroundingPois[0].title);
							})
						})
					}
				};

				var fail = function(e) {
//					justep.Util.hint("获取地理位置失败，暂时采用默认地址");
//					var map = new BMap.Map(id);
//					map.centerAndZoom(new BMap.Point(116.468497,39.871319), 17);
//					map.setCurrentCity("北京");
//					map.disableDragging();// 禁止拖拽地图
//					map.disableDoubleClickZoom()// 禁止双击方法地图你
//					var marker = new BMap.Marker(new BMap.Point(116.468497,39.871319));
//					map.addOverlay(marker);
//					geoc.getLocation(new BMap.Point(116.468497,39.871319), function(rs) {
//						mainData.setValue("address", rs.address + rs.surroundingPois[0].title);
//					})
					justep.Util.hint("获取地理位置失败！请尝试设置应用权限");
				};
				navigator.geolocation.getCurrentPosition(success, fail);

			}

		}
		require([ 'http://api.map.baidu.com/api?v=2.0&ak=o9pzum8sF8s3wqodZnt9S5OsKlLdjOil&callback=_baiduInit' ], function() {
			if (window.BMap && window.BMap.Map) {
				window._baiduInit();
			}
		});

		$(self.getElementByXid("baiduMap")).css({
			"width" : "100%",
			"height" : "150px;"
		})
		
	}

	Model.prototype.mapDialogReceive = function(event) {
		var addrStr = event.data.data[0];// 微调后的地址信息
		var addrPoint = event.data.data[1];// 微调后的经纬度对象

		this.loadBMap(addrStr, addrPoint);
	};

	Model.prototype.modelParamsReceive = function(event) {
		this.comp("statusData").setValue("address", "");
		this.loadBMap();
	};

	Model.prototype.statisticsClick = function(event){
		justep.Shell.showPage("$UI/work/sign/process/sign/statisticsActivity.m.w")
	};
    Model.prototype.imgUser=function(event){
        var url=this.comp("personIDData").val("fpersonID");
        if(!url){
          url = "$UI/work/common/images/personUser.png";
          return require.toUrl(url);
        }
      
    };
	
	Model.prototype.mapBtnClick = function(event){
		this.signAddr = this.comp("statusData").getValue("address");
		if(this.signAddr){
			this.comp("mapDialog").open();
		}else{
			justep.Util.hint("获取地理位置失败！请尝试设置应用权限");
		}
	};
	
	return Model;
});