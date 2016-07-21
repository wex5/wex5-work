define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
		this.addr;
	};

	Model.prototype.modelParamsReceive = function(event){
		var data = event.data.data;
		this.addr = data;
		var address = data[0].split(",");
		this.comp("AddrName").val(address[0])
		$("[xid=addressDetail]").html(address[1])
	};

	Model.prototype.saveBtnClick = function(event){
		var self = this;
		var address = this.addr
		var addrDetail = this.addr[0].split(",");
		if(self.comp("AddrName").val()){
			addrDetail[0]=self.comp("AddrName").val();
			address[0]=addrDetail.join(",");
			this.owner.send({"data":address})
			this.owner.close();
		}else{
			justep.Util.hint("请填写考勤地点名称");
		}
		
	};

	Model.prototype.jumpBtnClick = function(event){
		var self = this;
		this.owner.send({"data":self.addr})
		this.owner.close();
	};

	return Model;
});