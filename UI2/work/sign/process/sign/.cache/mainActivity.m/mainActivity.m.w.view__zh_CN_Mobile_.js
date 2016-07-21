window.__justep.__ResourceEngine.loadCss([{url: '/v_b24624b45b4045a28bbf2b389851377bl_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/system/components/bootstrap/lib/css/bootstrap,$model/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/v_199076a6a1d84dc093799c3d6dee126fl_zh_CNs_d_m/system/components/comp.min.css', include: '$model/system/components/justep/lib/css2/dataControl,$model/system/components/justep/input/css/datePickerPC,$model/system/components/justep/messageDialog/css/messageDialog,$model/system/components/justep/lib/css3/round,$model/system/components/justep/input/css/datePicker,$model/system/components/justep/row/css/row,$model/system/components/justep/attachment/css/attachment,$model/system/components/justep/barcode/css/barcodeImage,$model/system/components/bootstrap/dropdown/css/dropdown,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/contents/css/contents,$model/system/components/justep/common/css/forms,$model/system/components/justep/locker/css/locker,$model/system/components/justep/menu/css/menu,$model/system/components/justep/scrollView/css/scrollView,$model/system/components/justep/loadingBar/loadingBar,$model/system/components/justep/dialog/css/dialog,$model/system/components/justep/bar/css/bar,$model/system/components/justep/popMenu/css/popMenu,$model/system/components/justep/lib/css/icons,$model/system/components/justep/lib/css4/e-commerce,$model/system/components/justep/toolBar/css/toolBar,$model/system/components/justep/popOver/css/popOver,$model/system/components/justep/panel/css/panel,$model/system/components/bootstrap/carousel/css/carousel,$model/system/components/justep/wing/css/wing,$model/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/system/components/justep/titleBar/css/titleBar,$model/system/components/justep/lib/css1/linear,$model/system/components/justep/numberSelect/css/numberList,$model/system/components/justep/list/css/list,$model/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_279096a276a94caab0d2a4feb1f8c4bfl_zh_CNs_d_m/system/core.min.js','/v_b4074fb3dd2e4cdabad9c8376cb5ec8dl_zh_CNs_d_m/system/common.min.js','/v_564b0a7c009c4e3fab47132296ac8b52l_zh_CNs_d_m/system/components/comp.min.js']);define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/work/sign/process/sign/mainActivity.m'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='criqIFf';
	this._flag_='7a63af3172edeeb6fc6769a7f36034b3';
	this.callParent(contextUrl);
 require('css!$UI/work/common/css/pub').load();
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fDimension":{"define":"fDimension","name":"fDimension","relation":"fDimension","type":"String"},"fID":{"define":"fID","name":"fID","relation":"fID","type":"String"},"fImgURL":{"define":"fImgURL","name":"fImgURL","relation":"fImgURL","type":"String"},"fLongitude":{"define":"fLongitude","name":"fLongitude","relation":"fLongitude","type":"String"},"fPersonName":{"define":"fPersonName","name":"fPersonName","relation":"fPersonName","type":"String"},"fRemark":{"define":"fRemark","name":"fRemark","relation":"fRemark","type":"String"},"fSignAddress":{"define":"fSignAddress","name":"fSignAddress","relation":"fSignAddress","type":"String"},"fSignTime":{"define":"fSignTime","name":"fSignTime","relation":"fSignTime","rules":{"datetime":true},"type":"DateTime"}},"directDelete":false,"events":{"onCustomRefresh":"mainDataCustomRefresh"},"idColumn":"fID","limit":20,"xid":"mainData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"address":{"define":"address","label":"地址","name":"address","relation":"address","type":"String"},"editStatus":{"define":"editStatus","label":"编辑状态","name":"editStatus","relation":"editStatus","type":"String"}},"directDelete":false,"events":{},"idColumn":"editStatus","initData":"[{\"editStatus\":\"编辑\"}]","limit":20,"xid":"statusData"});
}}); 
return __result;});
