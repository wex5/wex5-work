define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.trgSencondKeyWordClick = function(event){
		var wDlgSencondKeyWord = this.comp("wDlgSencondKeyWord");
	
		wDlgSencondKeyWord.open();
	};

	Model.prototype.wDlgSencondKeyWordReceive = function(event){
		var rows = event.data;
		var len  = rows.length;
		var fName ="",names="";
		for (var i = 0; i < len; i++) {
			var row = rows[i];
			fName = row.val('fName');
			if(names==""){
				names = fName;
			}else{
				names = names+" "+fName;
			}
		}	
		var oldNames = this.comp("dTemp").getValue("keyWordSencond");
		oldNames = oldNames ?  oldNames.replace(/(^\s*)|(\s*$)/g, "") : oldNames;
		if(oldNames==""){
			this.comp("dTemp").setValue("keyWordSencond",names);
		}else{
			this.comp("dTemp").setValue("keyWordSencond",oldNames+" "+names);
		}
	};

	Model.prototype.windowReceiverReceive = function(event){
	    ;
		keyWord = event.data.keyWord;
		var data = this.comp("dTemp");
		var keyWordView = "";
		var keyWordFirst = "";
		var keyWordSencond = "";
		var keyWordEnd = "";
		if(keyWord != undefined && keyWord != ""){
		
		   keyWordView = keyWord.replace(/(^\s*)|(\s*$)/g, "");
		   keyWordFirst = keyWord.substring(0,keyWord.indexOf(" "));
		   keyWordSencond = keyWord.substring(keyWord.indexOf(" ")+1,keyWord.lastIndexOf(" ")).replace(/(^\s*)|(\s*$)/g, "");
		   keyWordEnd = keyWord.substring(keyWord.lastIndexOf(" ")+1,keyWord.length);
		}
		data.newData({
			index : 0,
			defaultValues : [ {
				"id" : justep.UUID.createUUID(),
				"keyWordFirst" : keyWordFirst,
			    "keyWordSencond" : keyWordSencond,
			    "keyWordEnd" : keyWordEnd,
			    "keyWordView" : keyWordView
			} ]
		});
		
	};
    
     Model.prototype.setKeyWordView = function(keyWordFirst,keyWordSencond,keyWordEnd){
        ;
    	var row = this.comp("dTemp").getCurrentRow();
    	if(!row)
    		return;
    /*	var keyWordFirst = row.val("keyWordFirst");
    	var keyWordSencond = row.val("keyWordSencond").replace(/(^\s*)|(\s*$)/g, "");
    	var keyWordEnd = row.val("keyWordEnd");*/
    	var keyWordView = keyWordFirst +" "+keyWordSencond+" "+keyWordEnd;
    	row.val("keyWordView",keyWordView);
    };

	Model.prototype.okBtnClick = function(event){
		;
	
		var data = this.comp("dTemp");
		var keyWordView = data.getCurrentRow().val("keyWordView");
		this.comp("windowReceiver").windowEnsure(keyWordView);
		
	};

	Model.prototype.select2Change = function(event){
	   ;
	   var row = this.comp("dTemp").getCurrentRow();
       if(!row)
    		return;
	   var keyWordFirst = event.value;
       var keyWordSencond = row.val("keyWordSencond").replace(/(^\s*)|(\s*$)/g, "");
       var keyWordEnd = row.val("keyWordEnd");
	   this.setKeyWordView(keyWordFirst,keyWordSencond,keyWordEnd);
		
	};

	Model.prototype.select3Change = function(event){
	   var row = this.comp("dTemp").getCurrentRow();
       if(!row)
    		return;
	    var keyWordFirst = row.val("keyWordFirst");
    	var keyWordSencond = row.val("keyWordSencond").replace(/(^\s*)|(\s*$)/g, "");
    	var keyWordEnd = event.value;
		this.setKeyWordView(keyWordFirst,keyWordSencond,keyWordEnd);
	};

	Model.prototype.textarea1Change = function(event){
	    ;
	    var row = this.comp("dTemp").getCurrentRow();
       if(!row)
    		return;
	    var keyWordFirst = row.val("keyWordFirst");
	    debugger
    	var keyWordSencond = event.value;
    	keyWordSencond = keyWordSencond ? keyWordSencond.replace(/(^\s*)|(\s*$)/g, "") : keyWordSencond;
    	var keyWordEnd = row.val("keyWordEnd");
		this.setKeyWordView(keyWordFirst,keyWordSencond,keyWordEnd);
	};


	return Model;
});