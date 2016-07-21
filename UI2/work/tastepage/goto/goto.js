define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("cordova!com.verso.cordova.clipboard");	
	
	var Model = function(){
		this.callParent();
	};
	Model.prototype.modelLoad = function(event){
		var ipAddress = ""; 
		if (justep.Browser.isX5App) { 
			cordova.plugins.clipboard.paste( 
					function(event) {
						ipAddress = event;
						if(ipAddress){
							if(ipAddress.indexOf("x5/UI2/chat/wex5/index.w?device=m")>=0){
								location.href=ipAddress;
							}
						}
					}
			);
			return; 
			}else if(electronApp.getIsInElectron()){ // localstrage
			var clipboard = window.requireNode('electron').clipboard;
			ipAddress = clipboard.readText()
			location.href=ipAddress;
		}
	};
	Model.prototype.buttonClick = function(event){
		var url=this.comp("newInput").val()+"x5/UI2/chat/wex5/index.w?device=m"
		justep.Shell.showPage(url);
	};
	return Model;
});