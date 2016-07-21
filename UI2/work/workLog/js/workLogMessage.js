define(function(require) {
	var IM = require("$UI/OA/common/js/sendMessage");
	var justep = require("$UI/system/lib/justep");
	return {
		 
		sendMsg : function(self, mainData, scope, arrPersonId) {
			var msg = "";
			//获取填报人;
			var personName = self.comp(mainData).getValue("fPersonName");
			//获取填报日期
			var date = self.comp(mainData).getValue("fDate");
			msg = personName + "的工作" + scope + "报(" + date.getFullYear()+"年"+(date.getMonth()+1)+"月"+date.getDate() + "日)\n";
			
			 
			//获取 今日完成工作、明日工作计划 需协调与帮助，备注 
			var fFinishWork = self.comp(mainData).getValue("fFinishWork");
			if (fFinishWork){
				msg += $(self.getElementByXid("finishWorkL")).text() +"：" + fFinishWork + "\n";
			}
			if (scope != "日") {
				var fWorkSummary = self.comp(mainData).getValue("fWorkSummary");
				if (fWorkSummary){
					msg += $(self.getElementByXid("workSummary")).text() +"：" + fWorkSummary + "\n";
				}
			}
			
			
			var fWorkPlan = self.comp(mainData).getValue("fWorkPlan");
			if (fWorkPlan){
				msg += $(self.getElementByXid("workPlanL")).text() +"：" + fWorkPlan + "\n";
			}
			
			var fNeedHelp = self.comp(mainData).getValue("fNeedHelp");
			if (fNeedHelp){
				msg += $(self.getElementByXid("needHelp")).text() +"：" + fNeedHelp + "\n";
			}
			
			var fRemark = self.comp(mainData).getValue("fRemark");
			if (fRemark){
				msg += $(self.getElementByXid("remarkL")).text() +"：" + fRemark + "\n";
			}
			var internal = 1000;
			for (var i = 0; i < arrPersonId.length; i++){
				
				IM.sendMsgToPersonDelay(arrPersonId[i],msg, internal*i);
			}
			 
			arrPersonId = [];
		}  
	};
});
