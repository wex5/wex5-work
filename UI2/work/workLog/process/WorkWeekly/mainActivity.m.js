define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var con = require("$UI/work/common/js/common");
	
	var Model = function(){
		this.callParent();
		this.arrPersonId = new Array();
		this.mainData="";
	};

	
	Model.prototype.modelLoad = function(event){
		this.mainData =this.comp("mainData");
		this.arrPersonId = [];
		//加载之前的动画
		$(this.getElementByXid("waitDiv")).hide();
		$(this.getElementByXid("weeklyContent")).show();
	};	

	Model.prototype.saveCommit = function(event){
		justep.Util.hint("保存数据成功！");
		this.arrPersonId = [];
	};
	
	Model.prototype.findBtnClick = function(event){
      this.comp('personDlg').open();
	};
	
	Model.prototype.psmDialogReceive = function(event){
	var rows = event.data;		
		var names="";
		this.arrPersonId = [];
		var n=rows.length;
		for ( var i in rows) {
			names+=rows[i].val('sName');
			if(i<n-1) names+=",";
			this.arrPersonId.push(rows[i].val('sPersonID'));
		}
		this.mainData.setValue("fReleaseScope", names);

	};
	
	Model.prototype.personDlgReceive = function(event){
		var data = this.comp('mainData');
		var rows = event.data.data;	
		var names=[];
		var namesID=[];
		for (var i = 0; i < rows.length; i++) {
			names.push(rows[i].sName);
			namesID.push(rows[i].sPersonID);
		}
		data.setValue("fReleaseScope", names.join(","));
		data.setValue("fReleaseScopeID", namesID.join(","));
		con.savePerson(data);
		con.saveDept(data);
		data.setValue("fCreateTime", con.getSysDate());
		data.setValue("fDate", con.getSysDate());
	};
	
	
	
	Model.prototype.saveBtnClick = function(event){
	   var fReleaseScope=this.comp("mainData").getValue("fReleaseScope");
		if(!fReleaseScope){
	        justep.Util.hint("请选择发布范围！",{"type":"danger"} );
		}else{
		 this.comp("mainData").saveData();
         this.close();
         }
	};
	
	
	
	return Model;
});