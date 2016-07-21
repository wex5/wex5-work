define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var con = require("$UI/work/common/js/common");
	var Model = function(){
		this.callParent();
		this.title;
		this.date;
		this.deptID;
		this.status = justep.Bind.observable();
	};

	Model.prototype.modelParamsReceive = function(event){
		this.status.set(event.params.data[0]);
		var date = event.params.data[1];
		this.title=status;
		this.date=date;
		this.deptID = event.params.data[2];
		this.comp("detailTitleBar").set({"title":status+"人员列表"});
		this.personStatusRequestLoad("queryCheckSortStat",con.getSysDateStr("yyyy-MM-dd") );
	};

	
	Model.prototype.personStatusRequestLoad = function(action,date) {
		var self = this;
		/*
		 * 查询团队考勤进度条
		 * 需传入参数
		 * 1.strDeptID -- 部门ID
		 * 2.strDate -- 日期
		 * 3.ognID  -- 组织ID
		 * 4.ognName --  组织名称
	  */
		justep.Baas.sendRequest({
			"url" : "/work/attendance",
			"action" : action,
			"async" : false,
			"params" : {
				"strDate":self.date,
				"strDeptID":self.deptID,
				"ognID":con.ognID,
				"ognName":con.ognName
				},
			"success" : function(data) {
				self.comp("detailStatusDlgData").clear();
				self.comp("detailStatusDlgData").loadData(data);
			}
		});
	};
	
	
	
	return Model;
});