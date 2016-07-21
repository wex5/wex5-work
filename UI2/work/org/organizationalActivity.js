define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
		//以下是为了保存数据设置的全局变量
		this.sfname = '';//全路径名
		this.sfcode = '';//全路径编码
		this.sfid = '';//全路径ID
		this.ssequence = '';//序号
//		this.parent = '';//父节点
		this.ID = '';//当前行的ID
	};

	Model.prototype.li2Click = function(event){
//		console.log(this.comp('bizData2').getCurrentRow());
		if(this.comp('bizData2').getCurrentRow().val("sOrgKindID") == "psm"){
			this.comp('agencyDialog').open();
			this.ID = this.comp('bizData2').getCurrentRowID();
			//console.log(this.ID);
			//取出直接加在后面的
			this.sfname = this.comp('bizData2').getCurrentRow().val("sName");
			this.sfcode = this.comp('bizData2').getCurrentRow().val("sCode");
			//取出后需要截取的在加在后面的
			this.sfid = this.comp('bizData2').getCurrentRow().val("sFID").split("/").pop();
			this.ssequence = this.comp('bizData2').getCurrentRow().val("sSequence").split("/").pop();	
		}
	};

	Model.prototype.col11Click = function(event){
//		debugger;
		this.comp('bizData2').setValue('sFName', this.comp('bizData4').getCurrentRow().val("sFName") + '/' +this.sfname);
		this.comp('bizData2').setValue('sFCode', this.comp('bizData4').getCurrentRow().val("sFCode") + '/' +this.sfcode);
		this.comp('bizData2').setValue('sFID', this.comp('bizData4').getCurrentRow().val("sFID") + '/' +this.sfid);//对的
		this.comp('bizData2').setValue('sSequence', this.comp('bizData4').getCurrentRow().val("sSequence") + '/' +this.ssequence);
		this.comp('bizData2').setValue('sParent', this.comp('bizData4').getCurrentRow().val("sFID"));
		this.comp('bizData2').saveData();
		this.comp('bizData2').refreshData();
		this.comp('agencyDialog').close();
	};

	return Model;
});