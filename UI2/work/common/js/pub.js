define(function(require) {
	var $ = require("jquery");
	var DocUtils = require("$UI/system/components/justep/docCommon/docUtil");
	
	var OA = {
	    
		//计算请假时长显示信息
		calcLeaveDayHour: function(days, hours){
			var sLeaveDayHour = "";
			if(days != 0)
				sLeaveDayHour = days + " 天";
			if(hours != 0)
				sLeaveDayHour = sLeaveDayHour + " " + hours + " 小时";
			if(sLeaveDayHour == "")
				sLeaveDayHour = "0 小时";
			return sLeaveDayHour;
	    },
	    
	    //设置请假时长显示信息
    	setLeaveDayHour: function(data){
    		if(data.getCount() > 0)
    			data.setValue('fLeaveDayHour', this.calcLeaveDayHour(data.getValue('fLeaveDays'),data.getValue('fLeaveHours') ));
    	},
    	
	    //转换日期的显示，其中今天会显示时间
	    transformDate: function(datetime){
	    	if(datetime == undefined)
	    		return '';
			var showTime = justep.Date.toString(datetime,'hh:mm');
	    	var now = new Date();
	    	now.setHours(0);
	    	now.setMinutes(0);
	    	now.setSeconds(0);
	    	now.setMilliseconds(0);
	    	datetime.setHours(0);
	    	datetime.setMinutes(0);
	    	datetime.setSeconds(0);
	    	datetime.setMilliseconds(0);

	    	var deltaDay = justep.Date.diff(datetime,now,'d');
    		var showDate = '';
    		switch(deltaDay){
    			case -1: showDate = '明天'; break;
    			case 0: showDate = showTime; break;
    			case 1: showDate = '昨天'; break;
    			case 2: showDate = '前天'; break;
    			default: 
    	    		var deltaYear = justep.Date.diff(datetime,now,'y');
    				if(deltaYear == 0)//今年
    					showDate = justep.Date.toString(datetime,'MM-dd');
    				else
    					showDate = justep.Date.toString(datetime,'yyyy-MM-dd');
    				break;
    				
    		}
    		return showDate;
    	},

	    //转换日期时间的显示，今天已经显示时间，不用再加时间
    	transformDateTime: function(datetime){
	    	if(datetime == undefined)
	    		return '';
			var showTime = justep.Date.toString(datetime,'hh:mm');
    		var showDate = this.transformDate(datetime);
    		if(showDate != showTime)
    			showDate = showDate + ' ' + showTime;
    		return showDate;
    	},
    	
    	//从拜访记录中获取地图的显示信息
    	getMapInfo : function(row, context){
    		var mapInfo = {};
    		mapInfo.title = row.val('fCustomer');
    		mapInfo.point = row.val('flongitude').toString() + ',' + row.val('fLatitude');
    		mapInfo.person = row.val('fCreator');
    		mapInfo.summary = row.val('fContent');
    		mapInfo.num = row.val('fVisitNum');
    		mapInfo.date = justep.Date.toString(row.val('fVisitTime'), justep.Date.STANDART_FORMAT_SHOT);

    		var attJson = row.val('fAttachment');
    		var url = "";
    		if (attJson != null) {
    			var jsonList = eval("(" + attJson + ")");
    			for(var i=0; i<jsonList.length; i++){
    				var docName = jsonList[i]["docName"]; 
    				docName = docName.substr(docName.length-3,3).toUpperCase();
    				if(docName == "PNG" || docName == "JPG" || docName == "GIF"){
    					var docPath = jsonList[i]["docPath"]; 
    					var fileID = jsonList[i]["fileID"];

    					var url1 = DocUtils.InnerUtils.getdocServerAction({
    						"docPath" : docPath,
    						urlPattern:"/repository/file/view/" + fileID + "/last/content", 
    						isFormAction : false,
    						context : context
    					});
    					url = require.toUrl(url1);
    					break;
    				}
    			}
    		}
    		mapInfo.image = url;
    		return mapInfo;
    	},
    	
    	//从客户记录中获取地图的显示信息
    	getMapInfoFromCustomer : function(row, context){
    		var mapInfo = {};
    		mapInfo.title = row.val('fName');
    		mapInfo.point = row.val('flongitude').toString() + ',' + row.val('fLatitude');
    		//mapInfo.person = row.val('fCreator');
    		//mapInfo.summary = row.val('fContent');
    		mapInfo.num = row.val('fVisitNum');
    		//mapInfo.date = justep.Date.toString(row.val('fVisitTime'), justep.Date.STANDART_FORMAT_SHOT);

    		var attJson = row.val('fAttachment');
    		var url = "";
    		if (attJson != null) {
    			var jsonList = eval("(" + attJson + ")");
    			for(var i=0; i<jsonList.length; i++){
    				var docName = jsonList[i]["docName"]; 
    				docName = docName.substr(docName.length-3,3).toUpperCase();
    				if(docName == "PNG" || docName == "JPG" || docName == "GIF"){
    					var docPath = jsonList[i]["docPath"]; 
    					var fileID = jsonList[i]["fileID"];

    					var url1 = DocUtils.InnerUtils.getdocServerAction({
    						"docPath" : docPath,
    						urlPattern:"/repository/file/view/" + fileID + "/last/content", 
    						isFormAction : false,
    						context : context
    					});
    					url = require.toUrl(url1);
    					break;
    				}
    			}
    		}
    		mapInfo.image = url;
    		return mapInfo;
    	}
	}

	return OA;
});