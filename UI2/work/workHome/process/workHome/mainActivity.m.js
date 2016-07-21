define(function(require) {
	var $ = require("jquery");
	var util = require("$UI/system/lib/base/util");
	var con = require("$UI/work/common/js/common");
	var justep = require("$UI/system/lib/justep");
	var UUID = require("$UI/system/lib/base/uuid");

	var Model = function() {
		this.callParent();
		this.con = con;
		this.labelStr = justep.Bind.observable("");
	};

	// 单击跳转相应页面事件
	Model.prototype.applyListClick = function(event) {
		var btn = this.comp("compileBtn");
		if (btn.get("label") == "编辑") {
			var row = event.bindingContext.$object;
			var url = row.val("fUrl");
			justep.Shell.showPage(url);
		}
	};

	Model.prototype.removeBtnClick = function(event) {
		var personID = con.personID;
		var data = this.comp("applyBizData");
		data.deleteData(event.bindingContext.$object);
		var count = this.comp('applyBizData').count(function(ev) {
			var v = ev.source.getValue('fPresonID', ev.row);
			return v.indexOf(personID) === 0;
		});
		var btn = this.comp("compileBtn");
		if (count === 0) {
			btn.set({
				"label" : "编辑",
				"icon" : "dataControl dataControl-pencill"
			});
		}
	};

	Model.prototype.compileBtnClick = function(event) {
		var btn = this.comp("compileBtn");
		var personID = con.personID;
		var data = this.comp("applyBizData");
		var count = data.count(function(ev) {
			var v = ev.source.getValue('fPresonID', ev.row);
			return v.indexOf(personID) === 0;
		});

		if (count === 0) {
			util.hint("请先添加更多功能...");
		} else {
			if (btn.get("label") == "编辑") {
				btn.set({
					"label" : "确定",
					"icon" : "dataControl dataControl-selected"
				});
				$(this.getElementsByXid("removeBtn")).fadeIn(700);
			} else {
				btn.set({
					"label" : "编辑",
					"icon" : "dataControl dataControl-pencill"
				});
				$(this.getElementsByXid("removeBtn")).fadeOut(700);
			}
		}

	};

	Model.prototype.funcsDialogReceive = function(event) {
		var data = this.comp("applyBizData");
		if (event.data != []) {
			var selectArr = event.data;
			for (var i = 0; i < selectArr.length; i++) {
				var option = {
					defaultValues : [ {
						"fActitvty" : selectArr[i].activity,
						"fLabel" : selectArr[i].label,
						"fProcess" : selectArr[i].process,
						"fUrl" : selectArr[i].url,
						"fPresonID" : con.personID,
						"fDevicesType" : "m",
						"fIcon" : selectArr[i].iconClass,
						"fColor" : selectArr[i].iconColor,
						"fID" : UUID.createUUID()
					} ]
				};
				data.newData(option);
			}
			data.saveData();
			data.refreshData();
		}
	};

	Model.prototype.modelLoad = function(event) {
		// 加载之前的动画
		$(this.getElementByXid("waitDiv")).hide();
		$(this.getElementByXid("panel2")).show();
	};

	Model.prototype.addMoreDivClick = function(event) {
		var self = this;
		var str = "";
		self.comp("applyBizData").each(function(obj) {
			if (obj.row.val("fPresonID") == con.personID) {
				str += obj.row.val("fLabel") + ",";
			}
		});
		self.labelStr.set(str);
		$(this.getElementByXid("addMoreDiv")).click(function() {
			self.comp("funcsDialog").open();
		});
	};

	Model.prototype.applyBizDataBeforeRefresh = function(event){
		this.comp("applyBizData").setFilter("selSelf", "oa_workfavorite.fpresonid = '"+con.personID+"'");
	};

	return Model;
});