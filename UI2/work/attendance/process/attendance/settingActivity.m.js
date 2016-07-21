define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var con = require("$UI/work/common/js/common");

	var Model = function(){
		this.callParent();
		this.fPersonID;
		this.fPersonName;
	};
	
	Model.prototype.workRowClick = function(event){
		this.comp("shortTimeChooseDlg").open({
			"src" : "$UI/work/attendance/process/attendance/shortTimeActivity.m.w",
			"data":{
				"status" :"work",
				"oldTime":$("[xid=workSpan]").html()
			}
		});
	};
	
	Model.prototype.lateRowClick = function(event){
		this.comp("shortTimeChooseDlg").open({
			"src" : "$UI/work/attendance/process/attendance/shortTimeActivity.m.w",
			"data":{
				"status" :"late",
				"oldTime":$("[xid=lateSpan]").html()
			}
		});
	};
	
	Model.prototype.absentRowClick = function(event){
		this.comp("shortTimeChooseDlg").open({
			"src" : "$UI/work/attendance/process/attendance/shortTimeActivity.m.w",
			"data":{
				"status" :"absent",
				"oldTime":$("[xid=absentSpan]").html()
			}
		});
	};
	
	Model.prototype.mastEarlyClick = function(event){
		this.comp("longTimeChooseDlg").open({
			"src" : "$UI/work/attendance/process/attendance/longTimeDlgActivity.m.w", 
		});
	};
	Model.prototype.longTimeChooseDlgReceive = function(event){
		$("[xid=longSpan]").html(event.data);
		if(this.comp("timeData").getValue("fFirstEarlyTime") === undefined){
			var longDefaultValue = {
				  "fFirstEarlyTime" : event.data
			};
			this.comp("timeData").newData(longDefaultValue)
		}else{
			this.comp("timeData").setValue("fFirstEarlyTime", event.data)
		}
		this.comp("timeData").setValue("fCreatepreID",this.fPersonID);
		this.comp("timeData").setValue("fCreatepreName",this.fPersonName);
		this.comp("timeData").saveData()
	};
	
	Model.prototype.shortTimeChooseDlgReceive = function(event){
		if(event.data.status=="work"){
//			self.comp("timeData").setValue("fGoWorkTime", event.data.time);
//			var a = self.comp("timeData").getCurrentRow().val('fID');
			$("[xid=workSpan]").html(event.data.time);
			if(this.comp("timeData").getValue("fGoWorkTime") === '关闭'){
				this.comp("timeData").setValue("fGoWorkTime", event.data.time)
			}
		}else if(event.data.status=="late"){
			$("[xid=lateSpan]").html(event.data.time);
			if(this.comp("timeData").getValue("fLateTime") === '关闭'){
				this.comp("timeData").setValue("fLateTime", event.data.time)
			}
		}else{
			$("[xid=absentSpan]").html(event.data.time);
			if(this.comp("timeData").getValue("fAbsentTime") === '关闭'){
				this.comp("timeData").setValue("fAbsentTime", event.data.time)
			}
		}
		
		this.comp("timeData").setValue("fCreatepreID",this.fPersonID);
		this.comp("timeData").setValue("fCreatepreName",this.fPersonName);
		this.comp("timeData").saveData()
	};
	
	Model.prototype.modelLoad = function(event){
		this.fPersonID = con.personID;
		this.fPersonName = con.personName;
		if(this.comp('timeData').count() === 0){
	
		 var data = this.comp('timeData');
           var options = {
        		   defaultValues : [
        		                    {"fID":justep.UUID.createUUID(),
        		                    "version":"0","fGoWorkTime":"关闭",
        		                    "fLateTime":"关闭","fAbsentTime":"关闭",
        		                    "fFirstEarlyTime":"关闭"}
        		                 ]}; 
		    
			data.newData(options);
		}
	};
	
	Model.prototype.modelModelConstruct = function(event){
		var personid = con.personID;
		this.comp("timeData").setFilter("fl1", "fCreatepreID = '"+personid+"'");
	};
	
	
	
	
	
	return Model;
});