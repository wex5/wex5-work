define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
	
	
	Model.prototype.transWeek = function(date){
		var week =date.getDay();
		switch(week){
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
		};
		return week;
	}

	
	Model.prototype.modelModelConstructDone = function(event){
		var fID = this.params.data[0];
		var date =this.params.data[1];
		var week = this.transWeek(date);
		$(this.getElementByXid("weekSpan")).html("星期"+week);
		var time=justep.Date.toString(date, "yyyy-MM-dd");
		$(this.getElementByXid("dateSpan")).html(time);
		this.comp("signInfoData").setFilter("filterSign", "OA_Sign.fPersonID='"+fID+"'AND OA_Sign.fSignTime > '"+justep.Date.toString(date,'yyyy-MM-dd')+"' AND OA_Sign.fSignTime < '"+justep.Date.toString(justep.Date.increase(date,1,"d"),'yyyy-MM-dd')+"'");
		
	};  
	
	
	Model.prototype.datePickerOK = function(event){
		var date=event.source.getValue();
		if(date>new Date){
			justep.Util.hint(("只能选择今天以前的时间"), {"type":"danger"});
			return;
		}
		var week = this.transWeek(date);
		$(this.getElementByXid("weekSpan")).html("星期"+week);
		$(this.getElementByXid("dateSpan")).html(justep.Date.toString(date, "yyyy-MM-dd"));
		
		this.comp("signInfoData").setFilter("filterSign", "OA_Sign.fPersonID='"+this.params.data[0]+"' AND OA_Sign.fSignTime > '"+justep.Date.toString(date,'yyyy-MM-dd')+"' AND OA_Sign.fSignTime < '"+justep.Date.toString(justep.Date.increase(date,1,"d"),'yyyy-MM-dd')+"'");
		this.comp("signInfoData").refreshData();
	};  
	
	Model.prototype.modelLoad = function(event){
		this.comp("datePicker").setValue(this.params.data[1]);
		$(this.getElementByXid("waitDiv")).hide();
		$(this.getElementByXid("content1")).show();
	};  
	
	
	return Model;
});