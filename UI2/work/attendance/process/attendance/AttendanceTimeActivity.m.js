define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var con = require("$UI/work/common/js/common");

	var Model = function(){
		this.callParent();
		this.departs;
		this.row;
	};

	Model.prototype.editButtonClick = function(event){
	    var row = event.bindingContext.$object;
		var fStartAM=row.val("fStartAM");
		var fStartPM=row.val("fStartPM");
		var fEndAM=row.val("fEndAM");
		var fEndPM=row.val("fEndPM");
		var fDepart=row.val("fDepart");
		justep.Shell.showPage("$UI/work/attendance/process/attendance/departAActivity.m.w",{
			"fStartAM":fStartAM,
			"fStartPM":fStartPM,
			"fEndAM":fEndAM,
			"fEndPM":fEndPM,
			"fDepart":fDepart
		});
	};

	Model.prototype.rowClick = function(event){
		var code=['A','B','C','D','E','F','G','H','L','J','K','L','M','N','O'];
		var counts=$("[xid=showList]>li").length;
		var count=code[counts];
		this.comp("timeDlg").open({"src":"$UI/work/attendance/process/attendance/departBActivity.m.w",'data':{"fDepart":count}});
	};

	
	Model.prototype.modelLoad = function(event){
		var self = this;

		//考勤组ID，rowID
		justep.Baas.sendRequest({
			"url" : "/work/attendance",
			"action" : "queryAttendanceTime",
			"async" : false,
			"params" : {'ognID':con.ognID},
			"success" :function(data) {
				if(data){
					self.comp("showData").clear();
					self.comp("showData").loadData(data);
				}
			}
		});
		
		
		
	};

	Model.prototype.saveButtonClick = function(event){
		var self = this;
		var row = null;
		var time = "";
		var departSign = "";
		$("input[name=choose]").each(function(index,obj){
			if(obj.nodeName == "INPUT"){
				if(obj.checked){
					self.comp("showData").each(function(obj){
						if(obj.index == index){
							row = this;
						}
					});
				}
			}
		});
		//try {
			 departSign=row.val("fDepart");
			 time=row.val("fTime");
		//} catch (e) {
			//justep.Util.hint("请选择班次");
		//}
		if(departSign){
			this.owner.send({"departSign":departSign,"time":time});
			this.close();
		}
	};
	
	Model.prototype.timeDlgReceive = function(event){
		var data = con.baasRequest("attendance","queryAttendanceTime",{'ognID':con.ognID});
		this.comp("showData").clear();
		this.comp("showData").loadData(data)
	};



	return Model;
});