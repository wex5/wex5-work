define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var con = require("$UI/work/common/js/common");
	var Model = function(){
		this.callParent();
		this.date;
	};
	
	Model.prototype.deptStatusRequestLoad = function(action, dataCom, date) {
	
		var self = this;
		/*
		 * 查询团队考勤统计
		 * 需传入参数
		 * 1.deptFID--部门全路径ID
		 * 2.ognFID--组织全路径ID
		 * 3.strDate 
		 * 4.dptID
		 * 5.ognID -- 组织ID
		 * 6.ognName --组织名称
	   */
	
		justep.Baas.sendRequest({
		"url" : "/work/attendance",
			"action" :action,
			"async" : false,
			"params" : {
				deptFID : con.deptFID,
				ognFID : con.ognFID,
				strDate :  date,
				dptID : con.deptID,
				ognID : con.ognID,
				ognName :con.ognName
			},
			"success" : function(data) {
				self.comp("deptStatusDialogData").loadData(data);
			}
		});
	};

	Model.prototype.deptStatusDataCustomRefresh = function(event){
		this.date = this.params.data;
		this.deptStatusRequestLoad("queryCheckStatDept", "deptStatusDialogData", this.date);
	};
	
	Model.prototype.dialogDeptListClick = function(event){
		var rowID = this.comp("deptStatusDialogData").getRowID();
		//获取第几行
		var deptID = this.comp("deptStatusDialogData").val("fDeptID");
		this.owner.send([deptID,rowID]);
		this.owner.close();
	};
	
	return Model;
});