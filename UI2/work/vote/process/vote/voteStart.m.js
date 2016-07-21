define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};
	// 动态添加节点
	Model.prototype.saveDivClick = function(event) {
		debugger;
		// $(this.comp("panel1").$domNode).append()
		$(".css", this.getRootNode()).after();
	};
	// 改变值的状态发生的事件
	Model.prototype.toggle3Change = function(event) {
		// debugger;
		// 是单选不让下面显示，是多选让显示，获取label值
		var selectVal = this.comp("toggle3").get("checked");
		if (selectVal == true) {
			$(".num-select").show();

		} else {
			$(".num-select").hide();
		}
	};
	Model.prototype.button7Click = function(event) {
		// debugger;
		this.comp("toggle3").get("checked")
		var selectVal = this.comp("toggle3").get("checked");
		if (selectVal == true) {
			$(".num-select").show();

		} else {
			$(".num-select").hide();
		}

	};

	Model.prototype.timeBtn1Click = function(event) {
		this.comp("cssData").setValue("col0", 0);
		this.comp("cssData").setValue("col1", 1);
		this.comp("cssData").setValue("col2", 1);
		debugger;
		// 获取当期时间
		var currentDate = new Date().getTime();
		var newData = currentDate + 24 * 3600 * 1000;
		var dd = new Date(newData)
		// 格式化时间
		var ff = dd.getFullYear() + "-" + (dd.getMonth() + 1) + "-" + dd.getDate() + " " + dd.getHours() + ":" + dd.getMinutes()+ ":" + dd.getSeconds();
		this.comp("timeOutput").val(ff);
	};

	Model.prototype.timeBtn2Click = function(event) {
		this.comp("cssData").setValue("col0", 1);
		this.comp("cssData").setValue("col1", 0);
		this.comp("cssData").setValue("col2", 1);
	};

	Model.prototype.timeBtn3Click = function(event) {
		this.comp("cssData").setValue("col0", 1);
		this.comp("cssData").setValue("col1", 1);
		this.comp("cssData").setValue("col2", 0);
	};

	Model.prototype.publishBtnClick = function(event) {
		// 获取填写信息
		var title = this.comp("title").val();
		var explain = this.comp("explain").val();
		var selectVal = this.comp("toggle3").get("checked")

	};

	Model.prototype.deltBtnClick = function(event) {
		// 获取input的值进行加减，然后存到赋值到input中
		// debugger;
		var numInput = this.comp("numInput")
		var initNum = numInput.get("placeHolder");
		var num = this.comp("numInput").val();
		if (num !== undefined) {
			if (num == 0) {
				numInput.val(0);
			} else {
				numInput.val(num - 1);
			}
		} else {
			numInput.set("placeHolder", '');
			numInput.val(1);
		}

	};

	Model.prototype.adBtnClick = function(event) {
		// debugger;
		var numInput = this.comp("numInput")
		var initNum = numInput.get("placeHolder");
		var num = this.comp("numInput").val();
		if (num !== undefined) {
			if (num == 0) {
				numInput.val(0);
			} else {
				numInput.val(num + 1);
			}
		} else {
			numInput.set("placeHolder", '');
			numInput.val(parseInt(initNum) + 1);
		}

	};
	// 用了提示所以需要新建一条数据，否则是只读，无法输入
	Model.prototype.voteStartDataAfterRefresh = function(event) {
		this.comp("voteStartData").newData({
			defaultValues : [ {
				fID : justep.UUID.createUUID()
			} ]
		})
	};
	// 是否匿名
	Model.prototype.toggle4Change = function(event) {
		var animotyVal = this.comp("toggle4").get("checked")
		if (animotyVal == true) {
			$(".start-publish").show();
		} else {
			$(".start-publish").hide();
		}

	};
	return Model;
});