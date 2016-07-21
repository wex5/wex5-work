window.__justep.__ResourceEngine.loadCss([{url: '/v_1ff54159b4af48598e47e8afcd02d110l_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/system/components/bootstrap/lib/css/bootstrap,$model/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/v_6736f3b8da7e4e67ac5152e849943069l_zh_CNs_d_m/system/components/comp.min.css', include: '$model/system/components/justep/lib/css2/dataControl,$model/system/components/justep/input/css/datePickerPC,$model/system/components/justep/messageDialog/css/messageDialog,$model/system/components/justep/lib/css3/round,$model/system/components/justep/input/css/datePicker,$model/system/components/justep/row/css/row,$model/system/components/justep/attachment/css/attachment,$model/system/components/justep/barcode/css/barcodeImage,$model/system/components/bootstrap/dropdown/css/dropdown,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/contents/css/contents,$model/system/components/justep/common/css/forms,$model/system/components/justep/locker/css/locker,$model/system/components/justep/menu/css/menu,$model/system/components/justep/scrollView/css/scrollView,$model/system/components/justep/loadingBar/loadingBar,$model/system/components/justep/dialog/css/dialog,$model/system/components/justep/bar/css/bar,$model/system/components/justep/popMenu/css/popMenu,$model/system/components/justep/lib/css/icons,$model/system/components/justep/lib/css4/e-commerce,$model/system/components/justep/toolBar/css/toolBar,$model/system/components/justep/popOver/css/popOver,$model/system/components/justep/panel/css/panel,$model/system/components/bootstrap/carousel/css/carousel,$model/system/components/justep/wing/css/wing,$model/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/system/components/justep/titleBar/css/titleBar,$model/system/components/justep/lib/css1/linear,$model/system/components/justep/numberSelect/css/numberList,$model/system/components/justep/list/css/list,$model/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_aa76c0843a34438c9fe1ec7b77704001l_zh_CNs_d_m/system/components/comp2.min.js','/v_65c748a6accd4470bc949ab3c7a44661l_zh_CNs_d_m/system/core.min.js','/v_0b976d59d49e424c960ce5dce1cbbf85l_zh_CNs_d_m/system/common.min.js','/v_d8a94db01687440b95d9b695b9dbfa19l_zh_CNs_d_m/system/components/comp.min.js']);define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/work/workLog/process/logDetail/logDetail.m'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cuMjima';
	this._flag_='04117fd88b6f18082f4fed783d3e94ba';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fActivity":{"define":"fActivity","name":"fActivity","relation":"fActivity","type":"String"},"fColor":{"define":"fColor","label":"图标颜色","name":"fColor","relation":"fColor","type":"String"},"fID":{"define":"fID","name":"fID","relation":"fID","type":"String"},"fIconClass":{"define":"fIconClass","label":"图标","name":"fIconClass","relation":"fIconClass","type":"String"},"fLabel":{"define":"fLabel","label":"名称","name":"fLabel","relation":"fLabel","type":"String"},"fProcess":{"define":"fProcess","name":"fProcess","relation":"fProcess","type":"String"},"fUrl":{"define":"fUrl","label":"路径","name":"fUrl","relation":"fUrl","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"headSkipDataCustomRefresh"},"idColumn":"fID","limit":20,"xid":"headSkipData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fActivity":{"define":"fActivity","name":"fActivity","relation":"fActivity","type":"String"},"fColor":{"define":"fColor","label":"图标颜色","name":"fColor","relation":"fColor","type":"String"},"fID":{"define":"fID","name":"fID","relation":"fID","type":"String"},"fIconClass":{"define":"fIconClass","label":"图标","name":"fIconClass","relation":"fIconClass","type":"String"},"fLabel":{"define":"fLabel","label":"名称","name":"fLabel","relation":"fLabel","type":"String"},"fProcess":{"define":"fProcess","name":"fProcess","relation":"fProcess","type":"String"},"fUrl":{"define":"fUrl","label":"路径","name":"fUrl","relation":"fUrl","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"skipDataCustomRefresh"},"idColumn":"fID","limit":20,"xid":"skipData"});
}}); 
return __result;});
