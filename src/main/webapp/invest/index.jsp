
<%--
  Created by IntelliJ IDEA.
  User: Albert
  Date: 2019/7/26
  Time: 19:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bootstrap HelloWorld</title>

    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">


    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="${pageContext.request.contextPath}/js/jquery-3.4.1.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

    <title>我要投资 | 苏元投资</title>
    <meta name="description" content="苏元投资" />
    <meta name="keywords" content="苏元投资" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/themes/rongzi/longbao/style.css" type="text/css" media="screen, projection" />
    <link rel="shortcut icon" type="image/x-icon" href="syico.ico" />
    <link href="${pageContext.request.contextPath}/themes/rongzi/css/common.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/themes/rongzi/css/css.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/themes/rongzi/css/user.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/themes/rongzi/css/new.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/themes/rongzi/css/shop.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/themes/rongzi/css/tipswindown.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/themes/rongzi/css/myinfo.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/themes/rongzi/css/css_inpage.css" rel="stylesheet" type="text/css" />
    <script src="${pageContext.request.contextPath}/themes/rongzi/longbao/js/jquery-1.4.2.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/themes/rongzi/js/sub.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/themes/rongzi/js/yu.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/themes/rongzi/js/tb.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/themes/rongzi/js/tipswindown.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/themes/rongzi/js/lhgdialog.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/plugins/timepicker/WdatePicker.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/themes/rongzi/js/base.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/plugins/editor/xheditor/xheditor-1.1.12-zh-cn.min.js" type="text/javascript"></script>

</head>

<body>

<div class="header clearfix">
    <div class="top">
        <div class="box980">
            <a href="${pageContext.request.contextPath}/tool_lixi/index.html"><img src="${pageContext.request.contextPath}/themes/rongzi/longbao/images/jsq.jpg" width="8" height="11" /> 利息计算器</a>
            <a href="${pageContext.request.contextPath}/index.jsp">帮助中心</a>
            <a href="${pageContext.request.contextPath}/login.jsp">退出</a>
            <a href="../code/message/index.html">站内信(14)</a>
            <a href="${pageContext.request.contextPath}/user/index.html">您好，${user.userName}</a>
            <div style="position: absolute;">
                <div style="color:white">客服电话：010-57480310　　关注我们：
                    <img src="${pageContext.request.contextPath}/themes/rongzi/longbao/images/wb.png" style="width:16px;height:16px;border:1px solid #E7E7EF; border-radius:8px;" />
                    <img src="${pageContext.request.contextPath}/themes/rongzi/longbao/images/wx.png" style="width:16px;height:16px;border:1px solid #E7E7EF; border-radius:8px;" />
                </div>
            </div>

        </div>
    </div>
    <div class="head">
        <div class="box980">
            <!--
<div class="logo"><a href="../"><img src="../themes/rongzi/longbao/images/logo.jpg" width="219" height="64" /></a></div>-->
            <!--  -->
            <a href="../"><img src="${pageContext.request.contextPath}/themes/rongzi/longbao/images/sylogo.png" style="position: absolute;width:251px;height:75px;margin-top: 8px;"></img>
            </a>
            <!-- <div style="position: absolute;font-size:45px;margin-top: 13px;margin-left: 110px;font-family:KaiTi;color:#847B7B;padding-right:5px">苏元投资</div> -->

            <!-- <div style="position: absolute;font-size:30px;margin-top: 15px;margin-left:170px;font-family:KaiTi;color:#847B7B">上海百封</div>
<div style="position: absolute;font-size:12px;margin-top: 55px;margin-left: 170px;">战　略　合　作　伙　伴</div>-->
            <div class="nav" style="width: 540px;">
                <ul>
                    <li id="cm1">
                        <a onclick="login_check22()">首页</a>
                    </li>
                    <li id="cm2">
                        <a  class="on">我要投资</a>
                    </li>
                    <li id="cm3">
                        <a href="../borrow/index.html">我要借款</a>
                    </li>
                    <li id="cm4">
                        <a href="../user/index.html">我的账户</a>
                    </li>
                    <!--<li><a href="../aqbz/index.html">安全保障</a></li>-->
                    <li>
                        <a href="../gsjj/index.html">帮助中心</a>
                    </li>
                </ul>
            </div>
        </div>

        <script type="text/javascript">
            $(document).ready(function() {
                $(".nav li").mouseover(function() {
                    $(".nav-list div").css("display", "none");
                    var x = $(this).attr("id");
                    $("." + x).css("display", "block");
                });

                var _curclassname = "cm1";
                $(".nav-list div").each(function() {
                    if($(this).css("display") == "block") {
                        _curclassname = $(this).attr("class");
                    }
                });

            });
        </script>

        <div class="nav-list">
            <div class="box980 cm1" style="display:none;">
                <a href="../how_it_works/index.html">・ 新手上路</a>
                <a href="../fxgk/index.html">・ 风险管控</a>
                <a href="../fees/index.html">・ 费用说明</a>
                <a href="../hetong/index.html">・ 法律文本</a>
            </div>

            <div class="box980 cm2" style="">
                <a href="../full_check/index.html">・ 复审中的借款</a>
                <a href="../full_success/index.html">・ 成功的借款</a>
                <a href="../invest/index.html">・ 进行中的借款</a>
            </div>

            <div class="box980 cm3" style="display:none;">
                <a href="../borrow/index.html">・ 申请借款</a>
                <a href="../att_center/index.html">・ 借款认证</a>
            </div>

            <div class="box980 cm4" style="display:none;">
                <a href="../user/index.html">・ 账户中心</a>
                <a href="../code/borrow/bid.html">・ 借出管理</a>
                <a href="../code/borrow/publish.html">・ 借入管理</a>
                <a href="../code/rating/basic.html">・ 个人设置</a>
            </div>

        </div>
    </div>
</div>
<!--

<script>alert("您还没有激活邮箱，不能进行投资！");location.href='/index.php/user/index.html&q=code/approve/email_status';</script>

-->

<div class="bodyer clearfix">
    <div class="form-container box980 info-list">
        <div class="ui-filter">
            <div class="ui-filter-header clearfix">
                <h4>筛选投资项目</h4>
                <div class="clear"></div>
            </div>

            <script type="text/javascript">
                function login(userName,pagePath,loanId){

                    if (userName==''){
                        alert("请先登录。");
                        return false;
                    }else{
                        document.getElementById(loanId).href=pagePath+"/loan/goToBid?loanId="+loanId+"&userName="+userName;
                        return true;
                    }

                }
                						function seachform_submit(borrowtype, borrowperiod, accountstatus, borrowstyle) {
                							document.getElementById('borrowtype').value = borrowtype;
                							document.getElementById('borrowperiod').value = borrowperiod;
                							document.getElementById('accountstatus').value = accountstatus;
                							document.getElementById('borrowstyle').value = borrowstyle;
                							document.forms.seachform.submit();
                						}
                						function form_fenye_commit(currentPage){
                                            document.getElementById('currentPage').value = currentPage;
                                            document.forms.seachform.submit();
                                        }
            </script>
<form action="${pageContext.request.contextPath}/loan/goToBid" name="bid_form">
    <input name="borrow_type" id="userName" value="${borrow_type}" type="hidden" />

</form>
            <form action="${pageContext.request.contextPath}/loan/searchLoansByCondition" method="post" name="seachform">
                <input name="borrow_type" id="borrowtype" value="${borrow_type}" type="hidden" />
                <input name="borrow_period" id="borrowperiod" value="${borrow_period==""?0:borrow_period}" type="hidden" />
                <input name="account_status" id="accountstatus" value="${account_status==""?0:account_status}" type="hidden" />
                <input name="borrow_style" id="borrowstyle" value="${borrow_style}" type="hidden" />
                <input name="currentPage" id="currentPage" value="" type="hidden" />
                <ul>
                    <li>
                        <ul class="fn-clear">
                            <li class="ui-filter-title">
                                标的类型
                            </li>
                            <li class="ui-filter-tag active">
                                <span onclick="seachform_submit('',0,0,'');">不限</span>
                            </li>
                            <li class="ui-filter-tag ">
                                <span onclick="seachform_submit('信用标',0,0,'');">信用标</span>
                            </li>
                            <li class="ui-filter-tag ">
                                <span onclick="seachform_submit('抵押标',0,0,'');">抵押标</span>
                            </li>
                            <li class="ui-filter-tag ">
                                <span onclick="seachform_submit('担保标',0,0,'');">担保标</span>
                            </li>
                            <!-- <li class="ui-filter-tag ">
  <span onclick="seachform_submit('flow','','','');">流转标</span>
</li> -->
                            <li class="ui-filter-tag ">
                                <span onclick="seachform_submit('净值标',0,0,'');">净值标</span>
                            </li>
                        </ul>
                        <div class="clear"></div>
                    </li>
                    <li>
                        <ul class="fn-clear">
                            <li class="ui-filter-title">
                                借款期限
                            </li>
                            <li class="ui-filter-tag active">
                                <span onclick="seachform_submit('',0,0,'');">不限</span>
                            </li>
                            <li class="ui-filter-tag ">
                                <span onclick="seachform_submit('',1,0,'');">3个月以下</span>
                            </li>
                            <li class="ui-filter-tag ">
                                <span onclick="seachform_submit('',2,0,'');">3-6个月</span>
                            </li>
                            <li class="ui-filter-tag ">
                                <span onclick="seachform_submit('',3,0,'');">6-12个月</span>
                            </li>
                            <li class="ui-filter-tag ">
                                <span onclick="seachform_submit('',4,0,'');">12个月以上</span>
                            </li>
                        </ul>
                        <div class="clear"></div>
                    </li>
                    <li>
                        <ul class="fn-clear">
                            <li class="ui-filter-title">
                                借款金额
                            </li>
                            <li class="ui-filter-tag active">
                                <span onclick="seachform_submit('',0,0,'');">不限</span>
                            </li>
                            <li class="ui-filter-tag  ">
                                <span onclick="seachform_submit('',0,1,'');">5万元以下</span>
                            </li>
                            <li class="ui-filter-tag ">

                                <span onclick="seachform_submit('',0,2,'');">5-10万元</span>
                            </li>
                            <li class="ui-filter-tag ">

                                <span onclick="seachform_submit('',0,3,'');">10-50万元</span>
                            </li>
                            <li class="ui-filter-tag ">

                                <span onclick="seachform_submit('',0,4,'');">50万元以上</span>
                            </li>

                        </ul>
                        <div class="clear"></div>
                    </li>
                    <li>
                        <ul class="fn-clear">
                            <li class="ui-filter-title">
                                还款方式
                            </li>
                            <li class="ui-filter-tag active">
                                <span onclick="seachform_submit('',0,0,'');">不限</span>
                            </li>
                            <li class="ui-filter-tag ">
                                <span onclick="seachform_submit('',0,0,'0');">按月等额</span>
                            </li>
                            <!-- <li class="ui-filter-tag ">
  <span onclick="seachform_submit('','','','1');">按季还款</span>
</li> -->
                            <li class="ui-filter-tag ">
                                <span onclick="seachform_submit('',0,0,'2');">到期还本还息</span>
                            </li>
                            <li class="ui-filter-tag ">
                                <span onclick="seachform_submit('',0,0,'3');">月还息到期还本</span>
                            </li>

                        </ul>
                        <div class="clear"></div>
                    </li>
                </ul>
            </form>
        </div>
        <div class="guide-box">
            <h4>新手引导</h4>
            <ul>

            </ul>
        </div>

    </div>
    <dl class="index-title" id="index-title">
        <a href="../invest/index.html" class="hover">
            <dt class="index-titleBgf" style="background:url(../themes/rongzi/longbao/images/title_tabBg2.jpg) no-repeat;">
                进行中的借款</dt></a>
        <!-- <dt class="index-titleBgf" style="margin-left:20px;display:none"><a href="../flow/index.html" >流转借款标</a></dt> -->
        <a href="../full_check/index.html">
            <dt class="index-titleBgf" style="margin-left:20px;">
                复审中的借款</dt></a>
        <a href="../full_success/index.html">
            <dt class="index-titleBgf" style="margin-left:20px;">
                成功的借款</dt></a>
        <a href="../watchlist/index.html">

            <dt class="index-titleBgf" style="margin-left:20px;">我关注的标</dt>
        </a>
    </dl>
    <ul class="invest_title">
        <li style="width:100px;" class="title_line">图片</li>
        <li style="width:210px;" class="title_line">标题/借款者/等级</li>
        <li style="width:160px;" class="title_line">借款金额/年利率</li>
        <li style="width:174px;" class="title_line">进度/剩余时间</li>
        <li style="width:174px;" class="title_line">期限/还款方式</li>
        <li style="width:160px;">状态</li>
    </ul>
    <div class="invest_list">

        <ul>
            <c:forEach  items="${pb.list}" varStatus="s" var="i">
            <li>

                <table width="100%" border="0">
                    <tr>
                        <td rowspan="3" width="100">
                            <div class="Recommend_mg2"><img src="${pageContext.request.contextPath}/data/images/avatar/noavatar_middle.gif" width="75" height="75" /></div>
                        </td>
                        <td colspan="3">
                            <h5><a href="../invest/full_success/a20171115707.html" title="测试">测试</a> <img src="../themes/rongzi/images/xin.jpg"   /></h5></td>
                    </tr>
                    <tr>
                        <td width="210">发布者：<strong>${i.userName}</strong></td>
                        <td width="180">借款金额：<strong>${i.amount}</strong>元</td>
                        <td width="190">剩余时间： <span name="endtime">8183829</span> </td>
                        <td width="190">借款期限：${i.deadline}
                        </td>
                        <td rowspan="2">


                            <a id="${i.loanId}"  onclick="login('${user.userName}','${pageContext.request.contextPath}',${i.loanId});">
                                <img src="${pageContext.request.contextPath}/themes/rongzi/images/list_091.jpg" width="78" height="33" />
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td width="200">信用等级：<img src='${pageContext.request.contextPath}/data/images/credit/credit_hr.gif' title='14分'></td>
                        <td>年利率：<strong>${i.rate}%</strong></td>
                        <td><span class="jdt"><i  style="width: 0%;"></i></span> 0%</td>
                        <td>赎回方式：${i.modeOfRepayment}</td>
                    </tr>
                </table>
            </li>
            </c:forEach>

            <li>    <div>
                <nav aria-label="Page navigation">
                    <ul class="pagination">
                        <li>
                            <a onclick="form_fenye_commit(${(pb.currentPage-1)<=1?1:(pb.currentPage-1)})"  aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>

                        <c:forEach begin="1" end ="${pb.totalPage}" var="i">
                            <li><a onclick="form_fenye_commit(${i})" >${i}</a></li>
                        </c:forEach>
                        <li>
                            <a onclick="form_fenye_commit(${(pb.currentPage+1)>=pb.totalPage?pb.totalPage:(pb.currentPage+1)})"  aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                        <span style="font-size: 25px;margin-left: 5px;">共${pb.totalCount}条记录，共${pb.totalPage}页</span>
                    </ul>
                </nav>
            </div></li>
        </ul>

    </div>
</div>
<div class="footer clearfix">
    <div class="bottom">
        <dl class="box980 bottomNav">
            <dt><span><a href="#"><img src="../themes/rongzi/longbao/images/icon_top.jpg" width="18" height="18" /> 返回顶部</a></span><a href="../gsjj/index.html">关于我们</a>
                <a href="../hetong/index.html">政策法规</a> <a href="../contact/index.html">联系我们</a>
                <a href="../gsjj/index.html">帮助中心</a><a href="../tool_lixi/index.html">利息计算</a>

                <a href="${pageContext.request.contextPath}/admin/login.jsp" target="_blank">后台管理</a></dt>
            <dd>
                <div class="zxkf"> <span><a href="../gsjj/index.html"><img src="../themes/rongzi/longbao/images/index_37.jpg" width="113" height="28" /></a></span><br><br> <span style="font-family:'微软雅黑';font-size:20px; font-weight:bold; color:#fff"></span> <span>服务时间：9:00 - 17:00 （周一至周五）</span> </div>
                <div class="fright">
                    <!--  <img src="../themes/rongzi/longbao/images/bottom_pic1.jpg" width="114" height="41">&nbsp;&nbsp; <img src="../themes/rongzi/longbao/images/bottom_pic2.jpg" width="102" height="38">&nbsp;&nbsp; <img src="../themes/rongzi/longbao/images/bottom_pic3.jpg" width="97" height="53">&nbsp;&nbsp;--></div>
            </dd>
        </dl>
    </div>
    <div class="copyright">
        <div class="box980" style="color:white">
            <a href="http://icp.chinaz.com/info?q=sytouzi.com" style="color:white" target=" _blank">@2014-
                <script>
                    var d = new Date();
                    document.write(d.getFullYear());
                </script>
                上海苏元投资管理有限公司版权所有 | <img src="../themes/rongzi/longbao/images/beianbgs.png"> 沪ICP备16025989号-1</a>
        </div>
    </div>
</div>

<LINK rel=stylesheet type=text/css href="../themes/rongzi/kefu/css/common.css">
<SCRIPT type=text/javascript src="../themes/rongzi/kefu/js/kefu.js"></SCRIPT>

<DIV id=floatTools class=float0831>

    <DIV class=floatL>
        <A style="DISPLAY: none" id=aFloatTools_Show class=btnOpen title=查看在线客服 onclick="javascript:$('#divFloatToolsView').animate({width: 'show', opacity: 'show'}, 'normal',function(){ $('#divFloatToolsView').show();kf_setCookie('RightFloatShown', 0, '', '/', 'www.sytouzi.com'); });$('#aFloatTools_Show').attr('style','display:none');$('#aFloatTools_Hide').attr('style','display:block');" href="javascript:void(0);">展开</A>
        <A id=aFloatTools_Hide class=btnCtn title=关闭在线客服 onclick="javascript:$('#divFloatToolsView').animate({width: 'hide', opacity: 'hide'}, 'normal',function(){ $('#divFloatToolsView').hide();kf_setCookie('RightFloatShown', 1, '', '/', 'www.sytouzi.com'); });$('#aFloatTools_Show').attr('style','display:block');$('#aFloatTools_Hide').attr('style','display:none');" href="javascript:void(0);">收缩</A>
    </DIV>

    <DIV id=divFloatToolsView class=floatR>
        <DIV class=tp></DIV>
        <DIV class=cn>
            <UL>
                <LI class=topkefu>
                    <H3 class=titZx>QQ咨询</H3>
                </LI>
                <LI>
                    <SPAN class=icoZx>在线咨询</SPAN> </LI>
                <LI>
                    <A class=icoTc href="http://wpa.qq.com/msgrd?v=3&uin=1553737880&site=qq&menu=yes" target="_blank" src="http://wpa.qq.com/pa?p=2:1553737880:52" alt="您好，客服001很高兴为您服务，请问有什么可以帮助您？" title="您好，客服001很高兴为您服务，请问有什么可以帮助您？">客服001</A>
                </LI>
            </UL>
            <UL class=webZx>
                <LI class=webZx-in>
                    <A href="../gsjj/index.html" style="FLOAT: left">
                        <IMG src="../themes/rongzi/kefu/images/right_float_web.png" border="0px">
                    </A>
                </LI>
            </UL>
            <UL>
                <LI>
                    <H3 class=titDh>电话咨询</H3>
                </LI>
                <LI class=bot>
                    <SPAN>010-57480310</SPAN> </LI>
            </UL>
        </DIV>
    </DIV>
</DIV>
</body>

</html>
