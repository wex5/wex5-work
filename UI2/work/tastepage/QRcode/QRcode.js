define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var ipaPath = 'http://www.dangChat.com:8080/apps/dangChat_BeX5.html';
	require("cordova!com.verso.cordova.clipboard");
	var Model = function() {
		this.callParent();
		this.ip='';
	};

	Model.prototype.toUrl = function(url) {
		return url ? require.toUrl(url) : "";
		
	};

	Model.prototype.modelModelConstructDone = function(event) {
		var ips;
		ips=location.href.split("/");
		for(var i=0;i<3;i++){
			this.ip+=ips[i]+"/"
		}
		$("[xid=input]").val(this.ip+"x5/UI2/chat/wex5/index.w?device=m")
		$("[xid=input]").select();
	};	

	Model.prototype.isBadAndroid = function() {
		var bo = false;
		var ua = navigator.userAgent.toLowerCase();
		var version = ua.substr(ua.indexOf('android') + 8, 3);
		if (ua.indexOf("android"))
			if (parseFloat(version) < 4.4)
				bo = true;
		return bo;
	};

	Model.prototype.downLoadBtnClick = function(event) {
		var type = this.getContext().getRequestParameter("type");

		var apkPath = this.ip + require.toUrl("/app/dangchat.apk");
		var apkPlusPath = '';
		var indexUrl = this.ip + require.toUrl("$UI/chat/wex5/index.w?device=m");

		if (justep.Browser.isWeChat) {
			if (type == "open") {
				location.href = indexUrl;
			} else {
				$(this.getElementByXid("weixin-tip-img")).show();
			}
		} else {
			if (justep.Browser.isAndroid) {
				if (this.isBadAndroid()) {
					location.href = apkPlusPath;
				} else {
					location.href = apkPath;
				}
			} else if (justep.Browser.isIOS) {
				justep.Util.hint("苹果系统请到安装路径下app文件夹下找到dangchat.ipa文件，使用数据线下载到手机上", {
					"type" : "info",
					"delay" : 100000
				})
			} else {
				location.href = indexUrl;
			}
		}
	};
	

	return Model;
});