define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("cordova!cordova-plugin-screen-orientation");
	
	var Model = function(){
		this.callParent();
	};
	
//	Model.prototype.screenBtnClick = function(event){
//		justep.Shell.showPage("screenActivity");
//	};
	
	Model.prototype.determineBtnClick = function(event){
		var td = this.comp("tobarData");
		//debugger;
		td.add({modelName:this.comp("radioGroup").val(),startDate:this.comp("startDataInput").val(),endDate:this.comp("endDataInput").val()}, 0);
		td.refreshData();
		var sdate = this.comp("startDataInput").val();
		var edate = this.comp("endDataInput").val();
		if(this.comp("radioGroup").val()=="月报"){
			this.comp("reportData").setStringVar("strConcept","OA_Workmonthly");
			this.comp("titleData").setValue("title", "工作月报");
		}else if(this.comp("radioGroup").val()=="周报"){
			this.comp("reportData").setStringVar("strConcept","OA_WorkWeekly");
			this.comp("titleData").setValue("title", "工作周报");
		}else{
			this.comp("reportData").setStringVar("strConcept","OA_WorkDaily");
			this.comp("titleData").setValue("title", "工作日报");
		}
		this.comp("reportData").setStringVar("strStartDate",sdate);
		this.comp("reportData").setStringVar("strEndDate",edate);
		this.comp("report").refresh();
	};
	
	Model.prototype.modelLoad = function(event){
		//debugger;
		var td = this.comp("tobarData");
		var sdate = justep.Date.toString(justep.Date.decrease(new Date(),1,'m'),justep.Date.STANDART_FORMAT_SHOT);
		var edate = justep.Date.toString(new Date(),justep.Date.STANDART_FORMAT_SHOT);
		
		td.add({modelName:"日报",startDate:justep.Date.fromString(sdate,justep.Date.STANDART_FORMAT_SHOT),endDate:justep.Date.fromString(edate,justep.Date.STANDART_FORMAT_SHOT)}, 0);
		this.comp("radioGroup").val("日报");
		td.refreshData();
		this.comp("reportData").setStringVar("strConcept","OA_WorkDaily");
		this.comp("reportData").setStringVar("strStartDate",sdate);
		this.comp("reportData").setStringVar("strEndDate",edate);
		this.comp("titleData").setValue("title", "工作报表");
		//表报页面横屏
		cordova.plugins.screenorientation.setOrientation('landscape');
	};
		
	Model.prototype.modelUnLoad = function(event){
		//屏幕方向-竖屏
		cordova.plugins.screenorientation.setOrientation('portrait');
		this.close();
	};
	
	
	return Model;
});