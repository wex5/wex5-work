define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var con = require("$UI/work/common/js/common");
	var Model = function(){
		this.callParent();
	};

	Model.prototype.modelParamsReceive = function(event){
		this.comp("signData").newData();
		var signTime = con.getSysDateStr("yyyy-MM-dd hh:mm:ss"); //时间
		var addr=event.data.data[1];
		$(this.getElementByXid("fSignTime")).html(signTime)
		var fPersonID =con.personID//window.localStorage.getItem("CurrentPersonID");
		var fPersonName = con.personName;
		var fOrgID = con.ognID;
		var fOrgName = con.ognName;
		var fDeptName = con.deptName;
		var fDeptID = con.deptID;
		var date = con.getSysDate();//时间
		this.comp("signData").setValue("fSignAddress",addr);
		this.comp("signData").setValue("fID", justep.UUID.createUUID())
		this.comp("signData").setValue("fPersonID",fPersonID);
		this.comp("signData").setValue("fSignTime",date);
		this.comp("signData").setValue("fPersonName",fPersonName );
		this.comp("signData").setValue("fOrgID", fOrgID);
		this.comp("signData").setValue("fOrgName", fOrgName);
		this.comp("signData").setValue("fDeptName", fDeptName);
		this.comp("signData").setValue("fDeptID", fDeptID);
		
	};
	Model.prototype.mainDataAfterSave = function(event){
		this.owner.send({state : 1});
		this.owner.close();
	};

	Model.prototype.modelLoad = function(event){
		$(this.getElementByXid("waitDiv")).hide();
		$(this.getElementByXid("content3")).show();
	};

	Model.prototype.subBtnClick = function(event){
		this.comp("signData").saveData();
		this.close();
	
	};

	return Model;
});