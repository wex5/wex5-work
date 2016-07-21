define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	
	var Model = function(){
		this.callParent();
        //this.markerArr = new Array();
        //info = new Array(); //存放提示信息窗口对象的数组  
	};

	Model.prototype.windowReceiverReceive = function(event){
		localStorage.setItem("com.justep.OA.mapInfo", JSON.stringify(event.data));	
	    var url =  require.toUrl("./map.html");
	    $(this.getElementByXid('mapContent')).html('<iframe src="'+url+'" width="100%" height="100%"></iframe>');

/*		this.markerArr = event.data;
		
		var self = this;
		window.map_init = function(){
			self.map_init();
		};
        //异步调用百度js  
        var load = document.createElement("script");  
        load.src = "http://api.map.baidu.com/api?v=2.0&ak=EzfQTH533pbevnhohMX4QZRK&callback=map_init";  
        document.head.appendChild(load);  
*/
	};

/*  
	Model.prototype.map_init = function(event){
    	 var map = new BMap.Map("map"); // 创建Map实例  
         //var point = new BMap.Point(113.312213, 23.147267); //地图中心点，广州市  
         //map.centerAndZoom(point, 13); // 初始化地图,设置中心点坐标和地图级别。  
         map.centerAndZoom('北京', 13); // 初始化地图,设置中心点坐标和地图级别。  
         map.enableScrollWheelZoom(true); //启用滚轮放大缩小  
         map.enableDragging();   //开启拖拽
         //向地图中添加缩放控件  
         var ctrlNav = new window.BMap.NavigationControl({  
        	 anchor: BMAP_ANCHOR_TOP_LEFT,  
        	 type: BMAP_NAVIGATION_CONTROL_LARGE  
         });  
         map.addControl(ctrlNav);  
  
         //向地图中添加缩略图控件  
         var ctrlOve = new window.BMap.OverviewMapControl({  
        	 anchor: BMAP_ANCHOR_BOTTOM_RIGHT,  
        	 isOpen: 1  
         });  
         map.addControl(ctrlOve);  
  
         //向地图中添加比例尺控件  
         var ctrlSca = new window.BMap.ScaleControl({  
        	 anchor: BMAP_ANCHOR_BOTTOM_LEFT  
         });  
         map.addControl(ctrlSca);  
 
         var point = new Array(); //存放标注点经纬信息的数组  
         var marker = new Array(); //存放标注点对象的数组  
         for (var i = 0; i < this.markerArr.length; i++) {  
       	 var p0 = this.markerArr[i].point.split(",")[0]; //  
        	 var p1 = this.markerArr[i].point.split(",")[1]; //按照原数组的point格式将地图点坐标的经纬度分别提出来  
        	 point[i] = new BMap.Point(p0, p1); //循环生成新的地图点  
        	 marker[i] = new BMap.Marker(point[i]); //按照地图点坐标生成标记  
        	 map.addOverlay(marker[i]);  
        	 //marker[i].setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画  
        	 var label = new BMap.Label(this.markerArr[i].title, { offset: new window.BMap.Size(20, -10) });  
        	 marker[i].setLabel(label);  
        	 info[i] = new BMap.InfoWindow("<p style=’font-size:12px;lineheight:1.8em;’>" + this.markerArr[i].title 
        			 + "</br>业务员：" + this.markerArr[i].person + "</br> 总结：" 
        			 + this.markerArr[i].summary + "</br></p>"); // 创建信息窗口对象  
        	 
        	 var self = this;
        	 marker[i].addEventListener("click", function (e) {  
        		 var iIndex = self.findInfo(this.getLabel().content);
        		 this.openInfoWindow(info[iIndex]);  
        	 });  
         }  
	};
	
    Model.prototype.findInfo = function(label){
         for (var i = 0; i < this.markerArr.length; i++) {  
        	 if(this.markerArr[i].title == label){
        		 return i;
        	 }
         }
	};
*/
	return Model;
});