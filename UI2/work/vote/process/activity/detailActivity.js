define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
		this.actionUrl = "/baas/justep/attachment/simpleFileStore";
	};
	Model.prototype.getUrl = function(id,photo){
		var src = "";
		if (photo != "" && photo != "undefined" && photo != null) {
			var imageJson = eval("(" + photo + ")");
			var realFileName = imageJson[0]["realFileName"];
			var storeFileName = imageJson[0]["storeFileName"];
			var ownerID = id;
			var operateType = "browse";
			var url = this.actionUrl + '?realFileName=' + realFileName + '&storeFileName=' + storeFileName + '&ownerID=' + ownerID + '&operateType=' + operateType;
			src = require.toUrl(url);
		}

		return src;
	}
	Model.prototype.modelLoad = function(event){
		/*var self = this;
		var carousel=this.comp("carousel1");   
		var data = this.comp("detailData")     
		data.each(function(obj){
			debugger;			
//			var fImgUrl=require.toUrl(obj.row.val("fImage"));
            var fImgUrl = data.getValue("fImage");
           // fImgUrl = JSON.parse(fImgUrl)[0].realFileName;
		
				$(carousel.domNode).find("img").eq(0).attr({"src":this.getUrl("C726EA4BEF6000017C7D6E3C14B65720", fImgUrl)});
		
				//carousel.add('<img src="'+fImgUrl+'" class="image-wall tb-img"/>');
			
		});*/
	};

	return Model;
});