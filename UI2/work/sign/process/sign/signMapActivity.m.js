 define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	require("cordova!cordova-plugin-geolocation");
	require("cordova!com.justep.cordova.plugin.baidulocation");
	
	var Model = function(){
		this.callParent();
	};
	
	var pointArr=[];
	Model.prototype.modelParamsReceive = function(event){
		$(this.getElementByXid("showResult")).html("");
		var self=this;
		var id=this.getIDByXID("showMap")
		window._baiduInit=function(){
			var map = new BMap.Map(id/*,{minZoom:2,enableMapClick:false}*/);//创建地图对象
			
			var geol = new BMap.Geolocation();
			
			var success = function(data){
				var coorType = data.coorType || "gps";
				var longitude = data.coords.longitude
				var latitude = data.coords.latitude;
				if(coorType == "bd09ll"){
					var geoc = new BMap.Geocoder();
					var point=new BMap.Point(longitude,latitude);
					map.centerAndZoom(point,17);//初始化地图位置与放大级别
					map.setCurrentCity("北京"); //设置地图显示城市
					map.enableDragging();
					map.enableScrollWheelZoom(true); //开启鼠标滚轮缩放
					
					var marker=new BMap.Marker(point); //在地图上标注点
					map.addOverlay(marker);
					marker.disableDragging();
					
					map.removeEventListener("click");
					
					var mOption ={
							poiRadius : 500,           //半径为500米内的POI,默认100米
							numPois : 50                //列举出50个POI,默认10个
					};
					
					geoc.getLocation(point,function(rs){
						var allPois = rs.surroundingPois;//获取附近全部poi
						pointArr=[];
						$(self.getElementByXid("showResult")).html("");
						for(var i=0;i<allPois.length;i++){
							$(self.getElementByXid("showResult")).append("<p id='addr"+i+"' style='font-size:14px;line-height:26px;'>" + (i+1) + "、" + allPois[i].title +","+ allPois[i].address +"</p>");
							pointArr.push(allPois[i].point);
						}
					},mOption);
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
							var geoc = new BMap.Geocoder();
							var point=new BMap.Point(lon,lat);
							map.centerAndZoom(point,17);//初始化地图位置与放大级别
							map.setCurrentCity("北京"); //设置地图显示城市
							map.enableDragging();
							map.enableScrollWheelZoom(true); //开启鼠标滚轮缩放
							
							var marker=new BMap.Marker(point); //在地图上标注点
							map.addOverlay(marker);
							marker.disableDragging();
							
							map.removeEventListener("click");
							
							var mOption ={
									poiRadius : 500,           //半径为500米内的POI,默认100米
									numPois : 50                //列举出50个POI,默认10个
							};
							
							geoc.getLocation(point,function(rs){
								var allPois = rs.surroundingPois;//获取附近全部poi
								pointArr=[];
								$(self.getElementByXid("showResult")).html("");
								for(var i=0;i<allPois.length;i++){
									$(self.getElementByXid("showResult")).append("<p id='addr"+i+"' style='font-size:14px;line-height:26px;'>" + (i+1) + "、" + allPois[i].title +","+ allPois[i].address +"</p>");
									pointArr.push(allPois[i].point);
								}
							},mOption);
						});
				}
			}
			
			var fail = function(e) {
//				justep.Util.hint("获取地理位置失败，暂时采用默认地址");
//				var geoc = new BMap.Geocoder();
//				var map = new BMap.Map(id);
//				map.centerAndZoom(new BMap.Point(116.468497,39.871319), 17);
//				map.setCurrentCity("北京");
//				map.disableDragging();// 禁止拖拽地图
//				map.disableDoubleClickZoom();// 禁止双击方法地图你
//				var marker = new BMap.Marker(new BMap.Point(116.468497,39.871319));
//				map.addOverlay(marker);
//				var mOption ={
//						poiRadius : 500,           //半径为500米内的POI,默认100米
//						numPois : 50                //列举出50个POI,默认10个
//				};
//					
//				geoc.getLocation(new BMap.Point(116.468497,39.871319),function(rs){
//					var allPois = rs.surroundingPois;//获取附近全部poi
//					pointArr=[];
//					$(self.getElementByXid("showResult")).html("");
//					for(var i=0;i<allPois.length;i++){
//						$(self.getElementByXid("showResult")).append("<p id='addr"+i+"' style='font-size:14px;line-height:26px;'>" + (i+1) + "、" + allPois[i].title +","+ allPois[i].address +"</p>");
//						pointArr.push(allPois[i].point);
//					}
//				},mOption);
				justep.Util.hint("获取地理位置失败！请尝试设置应用权限");
			};
			navigator.geolocation.getCurrentPosition(success, fail);
			
			
			$(self.getElementByXid("showResult")).click(function(e){
				if(e.target.nodeName=="P"){
					var ps=$(e.target).parent().children();
					ps.each(function(i,obj){
						$(obj).removeClass("bgcolor");
					});
					$(e.target).addClass("bgcolor");
					var lonlat=pointArr[e.target.innerHTML.split("、")[0]-1];
					map.clearOverlays();//清除地图上的覆盖物
					map.panTo(new BMap.Point(lonlat.lng,lonlat.lat));//重新定位地图的显示位置
					var marker=new BMap.Marker(lonlat);
					map.addOverlay(marker);//重新标注选中的位置
				}
			});
		};
	
	
		require([ 'http://api.map.baidu.com/api?v=2.0&ak=o9pzum8sF8s3wqodZnt9S5OsKlLdjOil&callback=_baiduInit' ], function() {
			if (window.BMap && window.BMap.Map) {
				window._baiduInit();
			}
		});
	};

	Model.prototype.okBtnClick = function(event){
		var strArr=$(".bgcolor").html().split("、");
		this.owner.send({"data":[strArr[1],pointArr[strArr[0]-1]]});
		this.owner.close();
	};

	Model.prototype.modelLoad = function(event){
		$(this.getElementByXid("waitDiv")).hide();
		$(this.getElementByXid("mapContent")).show();
	};

	return Model;
});