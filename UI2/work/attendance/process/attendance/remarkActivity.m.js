define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var con = require("$UI/work/common/js/common");

	var Model = function() {
		this.callParent();
		this.status;
		this.address;
		this.time;
	};

	Model.prototype.modelParamsReceive = function(event) {
		this.comp("checkInOutDataD").newData();
		this.status = event.data.data.status;
		this.address = event.data.data.address;
		this.time = event.data.data.systemTime;

		this.comp("checkInOutDataD").setValue("fCheckInAM", this.time)
		this.comp("checkInOutDataD").setValue("fCheckAreaAM", this.address);
		con.savePerson(this.comp("checkInOutDataD"));
		con.saveDept(this.comp("checkInOutDataD"));
		con.saveOgn(this.comp("checkInOutDataD"));

	};

	Model.prototype.modelModelConstructDone = function(event) {
		// 获取当前用户信息WeX5
		var fPersonID = con.personID;
		var date = new Date();

		this.comp("checkInOutDataD").setFilter(
				"queryMyself",
				"OA_ChekInOut.fPersonID='" + fPersonID + "'AND OA_ChekInOut.fCheckInAM > '" + justep.Date.toString(date, 'yyyy-MM-dd') + "' AND OA_ChekInOut.fCheckInAM < '"
						+ justep.Date.toString(justep.Date.increase(date, 1, "d"), 'yyyy-MM-dd') + "'");
	};

	Model.prototype.commitBtnClick = function(event) {
		var self = this;
		this.comp("checkInOutDataD").setValue("fIsLate", "迟到");
		this.comp("checkInOutDataD").saveData({

			"onSuccess" : function(event) {
				self.owner.send({
					"data" : ""
				});
				self.owner.close();
			}
		});

	};

	Model.prototype.modelLoad = function(event) {
		$(this.getElementByXid("waitDiv")).hide()
		$(this.getElementByXid("panel1")).show()
	};

	return Model;
});