define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	

	var Model = function() {
		this.callParent();
		this.ip;
	};

	Model.prototype.modelLoad = function(event) {
		this.showBrCode();
	};
//生成二维码
	Model.prototype.showBrCode = function() {
		var self=this;
		justep.Baas.sendRequest({
			"url" : "/work/common",
			"action" : "getSysAddress",
			"async" : false,
			"params" : {},
			"success" : function(data) {
				self.ip = data.server;
			}
		});
		this.comp("indexQR").set({
			"value" : self.ip + "/x5/UI2/work/tastepage/QRcode/QRcode.w"
		})
		this.comp("wechatQR").set({
			"value" : self.ip + "/x5/UI2/chat/wex5/index.w?device=m"
		});
	};
//下载PC版铛铛
	Model.prototype.downHrefClick = function(event){
		location.href =this.ip+require.toUrl("/app/dangchat.zip");
	};
//直接打开网页版
	Model.prototype.netPClick = function(event){
		location.href =this.ip+require.toUrl("/app/dangchat.zip");
	};

	return Model;
});