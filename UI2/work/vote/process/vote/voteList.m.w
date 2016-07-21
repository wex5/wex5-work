<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;resolution:360 x 640;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:412px;left:85px;" onLoad="modelLoad"><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="voteStartData" queryAction="queryWk_vote_start" saveAction="saveWk_vote_start" url="/vote/voteStrat" tableName="wk_vote_start" idColumn="fID"><column label="fID" name="fID" type="String" xid="default1"></column>
  <column label="版本" name="version" type="Integer" xid="default2"></column>
  <column label="登陆人Id" name="fPersonId" type="String" xid="default3"></column>
  <column label="标题" name="fTitle" type="String" xid="default4"></column>
  <column label="说明" name="fExplain" type="String" xid="default5"></column>
  <column label="选择" name="fSelect" type="String" xid="default6"></column>
  <column label="是否匿名" name="fAnomity" type="Integer" xid="default7"></column>
  <column label="是否可见" name="fStutes" type="Integer" xid="default8"></column>
  <column label="截至时间" name="fEndTime" type="DateTime" xid="default9"></column>
  <column label="状态类型" name="fType" type="String" xid="default10"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="voteContentData" queryAction="queryWk_vote_content" saveAction="saveWk_vote_content" url="/vote/voteContent" tableName="wk_vote_content" idColumn="fID"><column label="fID" name="fID" type="String" xid="default11"></column>
  <column label="版本" name="version" type="Integer" xid="default12"></column>
  <column label="关联id" name="fStartId" type="String" xid="default13"></column>
  <column label="投票内容" name="fContent" type="String" xid="default14"></column>
  <column label="单次投票次数" name="fVoteConnt" type="Integer" xid="default15"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="voteDetaileData" queryAction="queryWk_vote_detail" saveAction="saveWk_vote_detail" url="/vote/voteDetaile" tableName="wk_vote_detail" idColumn="fCountId"><column label="fCountId" name="fCountId" type="String" xid="default16"></column>
  <column label="版本" name="version" type="Integer" xid="default17"></column>
  <column label="投票人姓名" name="fVoteName" type="String" xid="default18"></column>
  <column label="投票时间" name="fVoteTime" type="DateTime" xid="default19"></column>
  <column label="投票总次数" name="fCount" type="Integer" xid="default20"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1" style="background-color:#F5F5F5;"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="投票列表"
        class="x-titlebar text-left"> 
        <div class="x-titlebar-left" style="margin-right:10px;"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-sm btn-only-icon" icon="icon-chevron-left" xid="backBtn"
            onClick="backBtnClick"> 
            <i class="icon-chevron-left"/>  
            <span/> 
          </a>  
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-sm btn-only-icon" icon="linear linear-fileadd"
            xid="button4" onClick="backBtnClick"> 
            <i class="linear linear-fileadd" xid="i5"/>  
            <span xid="span2"/>
          </a>
        </div>  
        <div class="x-titlebar-title">投票列表</div>  
        <div class="x-titlebar-right reverse"/> 
      </div> 
    </div>  
    <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C72511CFC4D00001843157096D3D1BCA"
      style="bottom: 0px;"> 
      <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
        xid="scrollView1"> 
        <div class="x-content-center x-pull-down container" xid="div1"> 
          <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i4"/>  
          <span class="x-pull-down-label" xid="span4">下拉刷新...</span> 
        </div>  
        <div class="x-scroll-content " xid="div2"> 
          <div component="$UI/system/components/justep/list/list" class="x-list"
            xid="list1" disableInfiniteLoad="true"> 
            <ul class="x-list-template x-min-height" xid="listTemplateUl1"
              componentname="$UI/system/components/justep/list/list#listTemplateUl"
              id="undefined_listTemplateUl1"> 
              <li xid="li1" class="list-group-item" componentname="li(html)"
                id="undefined_li1"> 
                <div class="media" xid="media2"> 
                  <div class="media-left media-middle" xid="mediaLeft2"> 
                    <a href="#" xid="a2"> 
                      <img class="media-object o-img" alt="" xid="image4" src="$UI/vote/process/vote/images/vote1.png"/> 
                    </a> 
                  </div>  
                  <div class="media-body " xid="mediaBody2"> 
                    <div xid="div9" class="media-heading"> 
                      <span xid="span29" class="text-block h4"/> 
                    </div>  
                    <div xid="div8"> 
                      <span xid="span26"/> 
                    </div>  
                    <div xid="div7"> 
                      <span xid="span25">失踪地点：</span>  
                      <span xid="span27">山西大同</span> 
                    </div>  
                    <div xid="div4"> 
                      <span xid="span30" style="width:100%;">失踪时间：</span>  
                      <span xid="span31" style="width:100%;">2007-09-04</span> 
                    </div> 
                  </div>  
                  <div class="media-right media-middle" xid="mediaRight"> 
                    <a href="#" xid="a3"/>  
                    <div xid="div12" class="o-box text-center"> 
                      <span>草稿</span> 
                    </div>  
                    <div xid="div14" class="o-text"> 
                      <span xid="span15"><![CDATA[10人投票]]></span> 
                    </div> 
                  </div> 
                </div> 
              </li> 
            </ul> 
          </div>  
          <div xid="div15" class="panel-body hide-or-show" style="display:none;"> 
            <div xid="div5" style="text-align:center; padding-top:20px;"> 
              <img src="$UI/vote/process/vote/images/vote.png" alt="" xid="image1"/> 
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row3"> 
              <div class="x-col x-col-20" xid="col7"/>  
              <div class="x-col x-col-fixed" xid="col8"> 
                <span xid="span17" style="text-align:center;" class="center-block"><![CDATA[您还没有发起投票活动]]></span> 
              </div>  
              <div class="x-col x-col-20" xid="col9"/> 
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row1" style="padding-top:20px;"> 
              <div class="x-col x-col-20" xid="col3"/>  
              <div class="x-col x-col-fixed" xid="col1"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-default btn-block o-start" label="发起投票" xid="showBtn"
                  style="height:100%;" onClick="showBtnClick"> 
                  <i xid="i2"/>  
                  <span xid="span3">发起投票</span> 
                </a> 
              </div>  
              <div class="x-col x-col-20" xid="col2"/> 
            </div>  
            
          </div> 
        <a class="btn btn-default btn-lg btn-only-icon" component="$UI/system/components/justep/button/button" icon="icon-android-add" style="position: absolute;bottom:20px;right:10px;border-radius: 48px;border:0px;background-color:#00C957;" xid="showPageBtn" onClick="showBtnClick"> 
              <i class="icon-android-add" xid="i1" />  
              <span xid="span1" />
            </a></div>  
        <div class="x-content-center x-pull-up" xid="div3"> 
          <span class="x-pull-up-label" xid="span5">加载更多...</span> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>
