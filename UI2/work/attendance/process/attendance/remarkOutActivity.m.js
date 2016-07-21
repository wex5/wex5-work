define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var con = require("$UI/work/common/js/common");

	var Model = function() {
		this.callParent();
		this.status;
		this.address;
		this.time;
		this.standTime;
	};

	Model.prototype.modelParamsReceive = function(event) {
		this.status = event.data.data.status;
		this.address = event.data.data.address;
		this.time = event.data.data.systemTime;
		this.standTime = event.data.data.standTime;

		this.comp("checkInOutDataDOut").setValue("fCheckOutPM", this.time)
		this.comp("checkInOutDataDOut").setValue("fCheckAreaPM", this.address);

		con.savePerson(this.comp("checkInOutDataDOut"));
		con.saveDept(this.comp("checkInOutDataDOut"));
		con.saveOgn(this.comp("checkInOutDataDOut"));

	};

	Model.prototype.modelModelConstructDone = function(event) {
		// 获取当前用户信息WeX5
		var fPersonID = con.personID;
		var date = new Date();

		this.comp("checkInOutDataDOut").setFilter(
				"queryMyself",
				"OA_ChekInOut.fPersonID='" + fPersonID + "'AND OA_ChekInOut.fCheckInAM > '" + justep.Date.toString(date, 'yyyy-MM-dd') + "' AND OA_ChekInOut.fCheckInAM < '"
						+ justep.Date.toString(justep.Date.increase(date, 1, "d"), 'yyyy-MM-dd') + "'");
	};

	Model.prototype.commitBtnClick = function(event) {
		var self = this;
		if (justep.Date.toString(this.time, "hh:mm:ss") > this.standTime) {
			this.comp("checkInOutDataDOut").setValue("fIsLeaving", "");
		} else {
			this.comp("checkInOutDataDOut").setValue("fIsLeaving", "早退");
		}

		this.comp("checkInOutDataDOut").saveData({

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