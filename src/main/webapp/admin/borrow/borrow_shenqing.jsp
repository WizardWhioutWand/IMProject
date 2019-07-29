<%--
  Created by IntelliJ IDEA.
  User: Albert
  Date: 2019/7/26
  Time: 10:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>后台管理</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gbk">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <!--<script src="../../plugins/editor/xheditor/xheditor-1.1.12-zh-cn.min.js"></script>-->
    <script src="${pageContext.request.contextPath}/plugins/timepicker/WdatePicker.js"></script>
    <script src="${pageContext.request.contextPath}/themes/youyidai_admin/images/common.js"></script>
    <script src="${pageContext.request.contextPath}/themes/youyidai_admin/images/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/themes/youyidai_admin/js/base.js"></script>
    <script src="${pageContext.request.contextPath}/themes/youyidai_admin/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/themes/youyidai_admin/js/select2.js"></script>
    <script src="${pageContext.request.contextPath}/themes/youyidai_admin/js/tipswindown.js"></script>

    <link href="${pageContext.request.contextPath}/themes/youyidai_admin/css/select2.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/themes/youyidai_admin/css/tipswindown.css" rel="stylesheet" type="text/css">
    <link rel="icon" href="../../../afavico.GIF" type="image/gif">
    <link rel="shortcut icon" href="../../../favicon.ico">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/themes/youyidai_admin/css/index.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/themes/youyidai_admin/admin.css">
    <link href="${pageContext.request.contextPath}/plugins/timepicker/skin/WdatePicker.css" rel="stylesheet" type="text/css">
</head>

<body scroll="no">
<table width="100%" height="97%" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td colspan="2" height="80" valign="top">
            <div id="header">
                <div class="logo" style="float:left; width:150px">
                    <div class="png">
                        <a href="../../#"><img src="../../themes/youyidai_admin/images/logo.png" /></a>
                    </div>
                    <div class="lun">
                        <a href="../../index.html" target="_blank">网站首页</a>&nbsp;&#8211;&nbsp;
                        <a href="../index.html">后台首页</a>
                    </div>
                </div>
                <!--重点导航-->
                <ul class="nav" style="float:right">
                    <li><img src="../../themes/youyidai_admin/images/nav_03.jpg" /></li>
                    <li class="home">
                        <a href="../index.html" style="height:35px;display:block">管理首页</a>
                    </li>
                    <li id="attestations">
                        <a style="cursor:pointer" href="../attestations/index.html" style="height:35px;display:block">资料审核</a>
                    </li>
                    <li id="account">
                        <a style="cursor:pointer" href="../account/index.html" style="height:35px;display:block">资金管理</a>
                    </li>
                    <li id="borrow">
                        <a style="cursor:pointer" href="${pageContext.request.contextPath}/loan/showLoansByPage" style="height:35px;display:block">借款管理</a>
                    </li>
                    <li id="approve">
                        <a style="cursor:pointer" href="../approve/index.html" style="height:35px;display:block">认证管理</a>
                    </li>
                    <li id="scrollpic">
                        <a style="cursor:pointer" href="../scrollpic/index.html" style="height:35px;display:block">flash大图管理</a>
                    </li>
                    <li id="payment">
                        <a style="cursor:pointer" href="../payment/index.html" style="height:35px;display:block">支付管理</a>
                    </li>
                    <li id="system">
                        <a style="cursor:pointer" href="../system/index.html" style="height:35px;display:block">系统管理</a>
                    </li>
                    <li id="site">
                        <a style="cursor:pointer" href="../site/index.html" style="height:35px;display:block">站点管理</a>
                    </li>
                    <li id="users">
                        <a style="cursor:pointer" href="../users/index.html" style="height:35px;display:block">用户管理</a>
                    </li>
                    <li id="articles">
                        <a style="cursor:pointer" href="../articles/index.html" style="height:35px;display:block">文章管理</a>
                    </li>
                    <li id="other">
                        <a style="cursor:pointer" href="../other/index.html" onClick="return initguide('other');" style="height:35px;display:block">其他功能</a>
                    </li>
                    <li><img src="../../themes/youyidai_admin/images/nav_07.jpg" /></li>

                </ul>
                <!--头部信息导航-->
                <div id="guide">
                    <div class="wei fl">
                        <a href="../index.html">首页</a>&nbsp;&gt;&nbsp;
                        <a href="index.html">借款管理</a>&nbsp;&gt;&nbsp;
                        <a href="#">添加借款</a>
                    </div>
                    <ul class="fr">
                        <li class="home">欢迎您，${manager.name}(管理员)  (分管分公司：
                            <font style="color:red">未限制</font>)</li>
                        <li>
                            <a class="s0" style="cursor:pointer" onclick="document.location.reload();" title="刷新该页面">刷新</a>
                        </li>
                        <li>
                            <a class="s0" style="cursor:pointer" onclick="history.go(-1);" title="后退到前一页">后退</a>
                        </li>
                        <li>
                            <a href="../login.html">退出</a>
                        </li>

                    </ul>
                </div>
                <!--头部信息导航结束-->
            </div>
        </td>
    </tr>
    <tr>
        <td valign="top" id="main-fl">
            <div id="left" style="overflow:auto">
                <h1>首页</h1>
                <div class="cc"></div>
                <ul>
                    <li class="">
                        <a id="borrow_all" href="${pageContext.request.contextPath}/loan/showLoansByPage">所有借款</a>
                    </li>
                    <li class="one">
                        <a id="borrow_shenqing" href="${pageContext.request.contextPath}/admin/borrow/borrow_shenqing.jsp">添加借款</a>
                    </li>
                    <li class="">
                        <a id="borrow_first" href="borrow_first.html">初审借款</a>
                    </li>
                    <li class="">
                        <a id="borrow_full" href="borrow_full.html">满标借款</a>
                    </li>
                    <li class="">
                        <a id="borrow_repay" href="borrow_repay.html">逾期垫付</a>
                    </li>
                    <li class="">
                        <a id="borrow_amount" href="borrow_amount.html">借款额度</a>
                    </li>
                    <li class="">
                        <a id="borrow_change" href="borrow_change.html">风险池</a>
                    </li>
                </ul>
            </div>

        </td>
        <td valign="top" id="mainright">
            <!--右边开始-->
            <div class="tt">

                <!--
<div style="background-color:#ffffff; line-height:30px; border-bottom:1px solid #2364a4; border-top:1px solid #2364a4; margin-bottom:10px;">
<span style="margin:5px"><a href="?admin&q=code/borrow">所有借款</a></span>
<span style="margin:5px"><a href="?admin&q=code/borrow/shenqing">添加借款</a></span>
<span style="margin:5px"><a href="?admin&q=code/borrow/first">初审借款</a></span>
<span style="margin:5px"><a href="?admin&q=code/borrow/full">满标借款</a></span>
<span style="margin:5px"><a href="?admin&q=code/borrow/repay">逾期垫付</a></span>
<span style="margin:5px"><a href="?admin&q=code/borrow/amount">借款额度</a></span>
<span style="margin:5px"><a href="?admin&q=code/borrow/fengxianchi">风险池</a></span>
<span style="margin:5px"><a href="?admin&q=code/borrow/tool">检测工具</a></span>
</div>
-->
                <div class="admin_module">

                    <!-- 20160513 卿山 -->
                    <div class="module_add">
                        <!-- onsubmit 事件会在表单中的确认按钮被点击时发生 -->
                        <form name="form1" method="post" action="${pageContext.request.contextPath}/loan/addLoan" onsubmit="return check_form();" enctype="multipart/form-data">
                            <div class="module_title"><strong>添加借款</strong> 请按照要求认真填写</div>

                            <!-- 用户名：user_name->user_id 插入-->
                            <!-- 在已有用户名中 select出来-->
                            <div class="module_border">
                                <div class="l">用户名：</div>
                                <div class="c" style="max-height:50px; overflow:auto;">
											<span style="display:block;" id="thespan">

        <select id="userName" name="userId">
            <c:forEach items="${users}" var="user">
                <option value=${user.userId}>${user.userName}</option>
            </c:forEach>

		        </select>无选项请直接输入 <a href="${pageContext.request.contextPath}/loan/showAllUsers" id="selectlink">显示用户名</a>
        </span>


                                </div>
                            </div>

                            <script>
                                function Show_Hidden(obj) {
                                    if(obj.style.display == "block") {
                                        obj.style.display = 'none';
                                    } else {
                                        obj.style.display = 'block';
                                    }
                                }
                                window.onload = function() {
                                    var olink = document.getElementById("selectlink");
                                    var olink1 = document.getElementById("selectlink1");
                                    var odiv = document.getElementById("thespan");
                                    var odiv1 = document.getElementById("thespan1");
                                    olink.onclick = function() {
                                        Show_Hidden(odiv);
                                        Show_Hidden(odiv1);
                                        document.getElementById("usernamedatalist").value = "";
                                        document.getElementById("username1").value = "";
                                        return false;
                                    }
                                    olink1.onclick = function() {
                                        Show_Hidden(odiv);
                                        Show_Hidden(odiv1);
                                        document.getElementById("usernamedatalist").value = "";
                                        document.getElementById("username1").value = "";
                                        return false;
                                    }
                                }
                            </script>

                            <!-- 借款对象：borrow_object-->
                            <div class="module_border">
                                <div class="l">借款对象：</div>
                                <div class="c">
                                    <select name="borrower" id="borrow_object" style="width:171px;">
                                        <option value="公司借款">公司借款</option>
                                        <option value="个人借款">个人借款</option>
                                    </select> 请选择
                                </div>
                            </div>

                            <!-- 借款用途：borrow_use-->
                            <div class="module_border">
                                <div class="l">借款用途：</div>
                                <div class="c">
                                    <select name="purpose" id="borrow_use" style="width:171px;">
                                        <option value="生意周转">生意周转</option>
                                        <option value="短期周转">短期周转</option>
                                        <option value="生活周转">生活周转</option>
                                        <option value="购物消费">购物消费</option>
                                        <option value="创业借款">创业借款</option>
                                        <option value="其他借款">其他借款</option>
                                    </select> 请选择
                                </div>
                            </div>

                            <!-- 借款类型：
table:`yyd_borrow` borrow_type
table:`yyd_linkages` 五项的type_id=6
id=16,value=credit,name=信用标
id=17,value=vouch,name=担保标
id=18,value=fast,name=抵押标
id=352,value=flow,name=流转标
id=359,value=jin,name=净值标
-->
                            <div class="module_border">
                                <div class="l">借款类型：</div>
                                <div class="c">
                                    <select style="width:171px;" name="typeOfLoan">
                                        <option value="信用标">信用标</option>
                                        <option value="担保标">担保标</option>
                                        <option value="抵押标">抵押标</option>
                                        <!-- <option value="flow">流转标</option> -->
                                        <option value="净值标">净值标</option>
                                    </select> 请选择
                                </div>
                            </div>

                            <!--投标最高限额 second_limit_money-->
                            <div class="module_border">
                                <div class="l">投标最高限额：</div>
                                <div class="c">
                                    <select style="width:171px;" name="bid_limit">
                                        <option value="0">不限制</option>
                                        <option value="50">50元</option>
                                        <option value="100">100元</option>
                                        <option value="500">500元</option>
                                        <option value="1000">1000元</option>
                                        <option value="1500">1500元</option>
                                        <option value="2000">2000元</option>
                                        <option value="3000">3000元</option>
                                        <option value="4000">4000元</option>
                                        <option value="5000">5000元</option>
                                        <option value="6000">6000元</option>
                                        <option value="7000">7000元</option>
                                        <option value="8000">8000元</option>
                                        <option value="9000">9000元</option>
                                        <option value="10000">10000元</option>
                                        <option value="20000">20000元</option>
                                    </select> 请选择
                                </div>
                            </div>

                            <!-- 借款标题：name 插入-->
                            <div class="module_border">
                                <div class="l">借款标题：</div>
                                <div class="c">
                                    <input type="text" name="title" style="width:326px;padding-left:4px;" maxlength="40"> 请输入
                                </div>
                            </div>

                            <!-- 借款金额：account 插入-->
                            <div class="module_border">
                                <div class="l">借款金额(元人民币)：</div>
                                <div class="c">
                                    <input type="text" name="amount" style="width:163px;padding-left:4px;" maxlength="8"> 请填写100的倍数
                                </div>
                            </div>

                            <!-- 利率：borrow_apr 插入-->
                            <!-- 利率：select 0-60 -->
                            <div class="module_border">
                                <div class="l">年化利率：</div>
                                <div class="c">
                                    <!--  <input type="text" name="borrow_apr" style="width:167px"/> 范围0~60，精确到小数点后一位，不需要输入“%”。-->
                                    <select name="rate" id="borrow_apr" style="width:171px">
                                        <option value="0"> 0% </option>
                                        <option value="0.1"> 0.1% </option>
                                        <option value="0.2"> 0.2% </option>
                                        <option value="0.3"> 0.3% </option>
                                        <option value="0.4"> 0.4% </option>
                                        <option value="0.5"> 0.5% </option>
                                        <option value="0.6"> 0.6% </option>
                                        <option value="0.7"> 0.7% </option>
                                        <option value="0.8"> 0.8% </option>
                                        <option value="0.9"> 0.9% </option>
                                        <option value="1"> 1% </option>
                                        <option value="1.1"> 1.1% </option>
                                        <option value="1.2"> 1.2% </option>
                                        <option value="1.3"> 1.3% </option>
                                        <option value="1.4"> 1.4% </option>
                                        <option value="1.5"> 1.5% </option>
                                        <option value="1.6"> 1.6% </option>
                                        <option value="1.7"> 1.7% </option>
                                        <option value="1.8"> 1.8% </option>
                                        <option value="1.9"> 1.9% </option>
                                        <option value="2"> 2% </option>
                                        <option value="2.1"> 2.1% </option>
                                        <option value="2.2"> 2.2% </option>
                                        <option value="2.3"> 2.3% </option>
                                        <option value="2.4"> 2.4% </option>
                                        <option value="2.5"> 2.5% </option>
                                        <option value="2.6"> 2.6% </option>
                                        <option value="2.7"> 2.7% </option>
                                        <option value="2.8"> 2.8% </option>
                                        <option value="2.9"> 2.9% </option>
                                        <option value="3"> 3% </option>
                                        <option value="3.1"> 3.1% </option>
                                        <option value="3.2"> 3.2% </option>
                                        <option value="3.3"> 3.3% </option>
                                        <option value="3.4"> 3.4% </option>
                                        <option value="3.5"> 3.5% </option>
                                        <option value="3.6"> 3.6% </option>
                                        <option value="3.7"> 3.7% </option>
                                        <option value="3.8"> 3.8% </option>
                                        <option value="3.9"> 3.9% </option>
                                        <option value="4"> 4% </option>
                                        <option value="4.1"> 4.1% </option>
                                        <option value="4.2"> 4.2% </option>
                                        <option value="4.3"> 4.3% </option>
                                        <option value="4.4"> 4.4% </option>
                                        <option value="4.5"> 4.5% </option>
                                        <option value="4.6"> 4.6% </option>
                                        <option value="4.7"> 4.7% </option>
                                        <option value="4.8"> 4.8% </option>
                                        <option value="4.9"> 4.9% </option>
                                        <option value="5"> 5% </option>
                                        <option value="5.1"> 5.1% </option>
                                        <option value="5.2"> 5.2% </option>
                                        <option value="5.3"> 5.3% </option>
                                        <option value="5.4"> 5.4% </option>
                                        <option value="5.5"> 5.5% </option>
                                        <option value="5.6"> 5.6% </option>
                                        <option value="5.7"> 5.7% </option>
                                        <option value="5.8"> 5.8% </option>
                                        <option value="5.9"> 5.9% </option>
                                        <option value="6"> 6% </option>
                                        <option value="6.1"> 6.1% </option>
                                        <option value="6.2"> 6.2% </option>
                                        <option value="6.3"> 6.3% </option>
                                        <option value="6.4"> 6.4% </option>
                                        <option value="6.5"> 6.5% </option>
                                        <option value="6.6"> 6.6% </option>
                                        <option value="6.7"> 6.7% </option>
                                        <option value="6.8"> 6.8% </option>
                                        <option value="6.9"> 6.9% </option>
                                        <option value="7"> 7% </option>
                                        <option value="7.1"> 7.1% </option>
                                        <option value="7.2"> 7.2% </option>
                                        <option value="7.3"> 7.3% </option>
                                        <option value="7.4"> 7.4% </option>
                                        <option value="7.5"> 7.5% </option>
                                        <option value="7.6"> 7.6% </option>
                                        <option value="7.7"> 7.7% </option>
                                        <option value="7.8"> 7.8% </option>
                                        <option value="7.9"> 7.9% </option>
                                        <option value="8"> 8% </option>
                                        <option value="8.1"> 8.1% </option>
                                        <option value="8.2"> 8.2% </option>
                                        <option value="8.3"> 8.3% </option>
                                        <option value="8.4"> 8.4% </option>
                                        <option value="8.5"> 8.5% </option>
                                        <option value="8.6"> 8.6% </option>
                                        <option value="8.7"> 8.7% </option>
                                        <option value="8.8"> 8.8% </option>
                                        <option value="8.9"> 8.9% </option>
                                        <option value="9"> 9% </option>
                                        <option value="9.1"> 9.1% </option>
                                        <option value="9.2"> 9.2% </option>
                                        <option value="9.3"> 9.3% </option>
                                        <option value="9.4"> 9.4% </option>
                                        <option value="9.5"> 9.5% </option>
                                        <option value="9.6"> 9.6% </option>
                                        <option value="9.7"> 9.7% </option>
                                        <option value="9.8"> 9.8% </option>
                                        <option value="9.9"> 9.9% </option>
                                        <option value="10"> 10% </option>
                                        <option value="10.1"> 10.1% </option>
                                        <option value="10.2"> 10.2% </option>
                                        <option value="10.3"> 10.3% </option>
                                        <option value="10.4"> 10.4% </option>
                                        <option value="10.5"> 10.5% </option>
                                        <option value="10.6"> 10.6% </option>
                                        <option value="10.7"> 10.7% </option>
                                        <option value="10.8"> 10.8% </option>
                                        <option value="10.9"> 10.9% </option>
                                        <option value="11"> 11% </option>
                                        <option value="11.1"> 11.1% </option>
                                        <option value="11.2"> 11.2% </option>
                                        <option value="11.3"> 11.3% </option>
                                        <option value="11.4"> 11.4% </option>
                                        <option value="11.5"> 11.5% </option>
                                        <option value="11.6"> 11.6% </option>
                                        <option value="11.7"> 11.7% </option>
                                        <option value="11.8"> 11.8% </option>
                                        <option value="11.9"> 11.9% </option>
                                        <option value="12"> 12% </option>
                                        <option value="12.1"> 12.1% </option>
                                        <option value="12.2"> 12.2% </option>
                                        <option value="12.3"> 12.3% </option>
                                        <option value="12.4"> 12.4% </option>
                                        <option value="12.5"> 12.5% </option>
                                        <option value="12.6"> 12.6% </option>
                                        <option value="12.7"> 12.7% </option>
                                        <option value="12.8"> 12.8% </option>
                                        <option value="12.9"> 12.9% </option>
                                        <option value="13"> 13% </option>
                                        <option value="13.1"> 13.1% </option>
                                        <option value="13.2"> 13.2% </option>
                                        <option value="13.3"> 13.3% </option>
                                        <option value="13.4"> 13.4% </option>
                                        <option value="13.5"> 13.5% </option>
                                        <option value="13.6"> 13.6% </option>
                                        <option value="13.7"> 13.7% </option>
                                        <option value="13.8"> 13.8% </option>
                                        <option value="13.9"> 13.9% </option>
                                        <option value="14"> 14% </option>
                                        <option value="14.1"> 14.1% </option>
                                        <option value="14.2"> 14.2% </option>
                                        <option value="14.3"> 14.3% </option>
                                        <option value="14.4"> 14.4% </option>
                                        <option value="14.5"> 14.5% </option>
                                        <option value="14.6"> 14.6% </option>
                                        <option value="14.7"> 14.7% </option>
                                        <option value="14.8"> 14.8% </option>
                                        <option value="14.9"> 14.9% </option>
                                        <option value="15"> 15% </option>
                                        <option value="15.1"> 15.1% </option>
                                        <option value="15.2"> 15.2% </option>
                                        <option value="15.3"> 15.3% </option>
                                        <option value="15.4"> 15.4% </option>
                                        <option value="15.5"> 15.5% </option>
                                        <option value="15.6"> 15.6% </option>
                                        <option value="15.7"> 15.7% </option>
                                        <option value="15.8"> 15.8% </option>
                                        <option value="15.9"> 15.9% </option>
                                        <option value="16"> 16% </option>
                                        <option value="16.1"> 16.1% </option>
                                        <option value="16.2"> 16.2% </option>
                                        <option value="16.3"> 16.3% </option>
                                        <option value="16.4"> 16.4% </option>
                                        <option value="16.5"> 16.5% </option>
                                        <option value="16.6"> 16.6% </option>
                                        <option value="16.7"> 16.7% </option>
                                        <option value="16.8"> 16.8% </option>
                                        <option value="16.9"> 16.9% </option>
                                        <option value="17"> 17% </option>
                                        <option value="17.1"> 17.1% </option>
                                        <option value="17.2"> 17.2% </option>
                                        <option value="17.3"> 17.3% </option>
                                        <option value="17.4"> 17.4% </option>
                                        <option value="17.5"> 17.5% </option>
                                        <option value="17.6"> 17.6% </option>
                                        <option value="17.7"> 17.7% </option>
                                        <option value="17.8"> 17.8% </option>
                                        <option value="17.9"> 17.9% </option>
                                        <option value="18"> 18% </option>
                                        <option value="18.1"> 18.1% </option>
                                        <option value="18.2"> 18.2% </option>
                                        <option value="18.3"> 18.3% </option>
                                        <option value="18.4"> 18.4% </option>
                                        <option value="18.5"> 18.5% </option>
                                        <option value="18.6"> 18.6% </option>
                                        <option value="18.7"> 18.7% </option>
                                        <option value="18.8"> 18.8% </option>
                                        <option value="18.9"> 18.9% </option>
                                        <option value="19"> 19% </option>
                                        <option value="19.1"> 19.1% </option>
                                        <option value="19.2"> 19.2% </option>
                                        <option value="19.3"> 19.3% </option>
                                        <option value="19.4"> 19.4% </option>
                                        <option value="19.5"> 19.5% </option>
                                        <option value="19.6"> 19.6% </option>
                                        <option value="19.7"> 19.7% </option>
                                        <option value="19.8"> 19.8% </option>
                                        <option value="19.9"> 19.9% </option>
                                        <option value="20"> 20% </option>
                                        <option value="20.1"> 20.1% </option>
                                        <option value="20.2"> 20.2% </option>
                                        <option value="20.3"> 20.3% </option>
                                        <option value="20.4"> 20.4% </option>
                                        <option value="20.5"> 20.5% </option>
                                        <option value="20.6"> 20.6% </option>
                                        <option value="20.7"> 20.7% </option>
                                        <option value="20.8"> 20.8% </option>
                                        <option value="20.9"> 20.9% </option>
                                        <option value="21"> 21% </option>
                                        <option value="21.1"> 21.1% </option>
                                        <option value="21.2"> 21.2% </option>
                                        <option value="21.3"> 21.3% </option>
                                        <option value="21.4"> 21.4% </option>
                                        <option value="21.5"> 21.5% </option>
                                        <option value="21.6"> 21.6% </option>
                                        <option value="21.7"> 21.7% </option>
                                        <option value="21.8"> 21.8% </option>
                                        <option value="21.9"> 21.9% </option>
                                        <option value="22"> 22% </option>
                                        <option value="22.1"> 22.1% </option>
                                        <option value="22.2"> 22.2% </option>
                                        <option value="22.3"> 22.3% </option>
                                        <option value="22.4"> 22.4% </option>
                                        <option value="22.5"> 22.5% </option>
                                        <option value="22.6"> 22.6% </option>
                                        <option value="22.7"> 22.7% </option>
                                        <option value="22.8"> 22.8% </option>
                                        <option value="22.9"> 22.9% </option>
                                        <option value="23"> 23% </option>
                                        <option value="23.1"> 23.1% </option>
                                        <option value="23.2"> 23.2% </option>
                                        <option value="23.3"> 23.3% </option>
                                        <option value="23.4"> 23.4% </option>
                                        <option value="23.5"> 23.5% </option>
                                        <option value="23.6"> 23.6% </option>
                                        <option value="23.7"> 23.7% </option>
                                        <option value="23.8"> 23.8% </option>
                                        <option value="23.9"> 23.9% </option>
                                        <option value="24"> 24% </option>
                                        <option value="24.1"> 24.1% </option>
                                        <option value="24.2"> 24.2% </option>
                                        <option value="24.3"> 24.3% </option>
                                        <option value="24.4"> 24.4% </option>
                                        <option value="24.5"> 24.5% </option>
                                        <option value="24.6"> 24.6% </option>
                                        <option value="24.7"> 24.7% </option>
                                        <option value="24.8"> 24.8% </option>
                                        <option value="24.9"> 24.9% </option>
                                        <option value="25"> 25% </option>
                                        <option value="25.1"> 25.1% </option>
                                        <option value="25.2"> 25.2% </option>
                                        <option value="25.3"> 25.3% </option>
                                        <option value="25.4"> 25.4% </option>
                                        <option value="25.5"> 25.5% </option>
                                        <option value="25.6"> 25.6% </option>
                                        <option value="25.7"> 25.7% </option>
                                        <option value="25.8"> 25.8% </option>
                                        <option value="25.9"> 25.9% </option>
                                        <option value="26"> 26% </option>
                                        <option value="26.1"> 26.1% </option>
                                        <option value="26.2"> 26.2% </option>
                                        <option value="26.3"> 26.3% </option>
                                        <option value="26.4"> 26.4% </option>
                                        <option value="26.5"> 26.5% </option>
                                        <option value="26.6"> 26.6% </option>
                                        <option value="26.7"> 26.7% </option>
                                        <option value="26.8"> 26.8% </option>
                                        <option value="26.9"> 26.9% </option>
                                        <option value="27"> 27% </option>
                                        <option value="27.1"> 27.1% </option>
                                        <option value="27.2"> 27.2% </option>
                                        <option value="27.3"> 27.3% </option>
                                        <option value="27.4"> 27.4% </option>
                                        <option value="27.5"> 27.5% </option>
                                        <option value="27.6"> 27.6% </option>
                                        <option value="27.7"> 27.7% </option>
                                        <option value="27.8"> 27.8% </option>
                                        <option value="27.9"> 27.9% </option>
                                        <option value="28"> 28% </option>
                                        <option value="28.1"> 28.1% </option>
                                        <option value="28.2"> 28.2% </option>
                                        <option value="28.3"> 28.3% </option>
                                        <option value="28.4"> 28.4% </option>
                                        <option value="28.5"> 28.5% </option>
                                        <option value="28.6"> 28.6% </option>
                                        <option value="28.7"> 28.7% </option>
                                        <option value="28.8"> 28.8% </option>
                                        <option value="28.9"> 28.9% </option>
                                        <option value="29"> 29% </option>
                                        <option value="29.1"> 29.1% </option>
                                        <option value="29.2"> 29.2% </option>
                                        <option value="29.3"> 29.3% </option>
                                        <option value="29.4"> 29.4% </option>
                                        <option value="29.5"> 29.5% </option>
                                        <option value="29.6"> 29.6% </option>
                                        <option value="29.7"> 29.7% </option>
                                        <option value="29.8"> 29.8% </option>
                                        <option value="29.9"> 29.9% </option>
                                        <option value="30"> 30% </option>
                                        <option value="30.1"> 30.1% </option>
                                        <option value="30.2"> 30.2% </option>
                                        <option value="30.3"> 30.3% </option>
                                        <option value="30.4"> 30.4% </option>
                                        <option value="30.5"> 30.5% </option>
                                        <option value="30.6"> 30.6% </option>
                                        <option value="30.7"> 30.7% </option>
                                        <option value="30.8"> 30.8% </option>
                                        <option value="30.9"> 30.9% </option>
                                        <option value="31"> 31% </option>
                                        <option value="31.1"> 31.1% </option>
                                        <option value="31.2"> 31.2% </option>
                                        <option value="31.3"> 31.3% </option>
                                        <option value="31.4"> 31.4% </option>
                                        <option value="31.5"> 31.5% </option>
                                        <option value="31.6"> 31.6% </option>
                                        <option value="31.7"> 31.7% </option>
                                        <option value="31.8"> 31.8% </option>
                                        <option value="31.9"> 31.9% </option>
                                        <option value="32"> 32% </option>
                                        <option value="32.1"> 32.1% </option>
                                        <option value="32.2"> 32.2% </option>
                                        <option value="32.3"> 32.3% </option>
                                        <option value="32.4"> 32.4% </option>
                                        <option value="32.5"> 32.5% </option>
                                        <option value="32.6"> 32.6% </option>
                                        <option value="32.7"> 32.7% </option>
                                        <option value="32.8"> 32.8% </option>
                                        <option value="32.9"> 32.9% </option>
                                        <option value="33"> 33% </option>
                                        <option value="33.1"> 33.1% </option>
                                        <option value="33.2"> 33.2% </option>
                                        <option value="33.3"> 33.3% </option>
                                        <option value="33.4"> 33.4% </option>
                                        <option value="33.5"> 33.5% </option>
                                        <option value="33.6"> 33.6% </option>
                                        <option value="33.7"> 33.7% </option>
                                        <option value="33.8"> 33.8% </option>
                                        <option value="33.9"> 33.9% </option>
                                        <option value="34"> 34% </option>
                                        <option value="34.1"> 34.1% </option>
                                        <option value="34.2"> 34.2% </option>
                                        <option value="34.3"> 34.3% </option>
                                        <option value="34.4"> 34.4% </option>
                                        <option value="34.5"> 34.5% </option>
                                        <option value="34.6"> 34.6% </option>
                                        <option value="34.7"> 34.7% </option>
                                        <option value="34.8"> 34.8% </option>
                                        <option value="34.9"> 34.9% </option>
                                        <option value="35"> 35% </option>
                                        <option value="35.1"> 35.1% </option>
                                        <option value="35.2"> 35.2% </option>
                                        <option value="35.3"> 35.3% </option>
                                        <option value="35.4"> 35.4% </option>
                                        <option value="35.5"> 35.5% </option>
                                        <option value="35.6"> 35.6% </option>
                                        <option value="35.7"> 35.7% </option>
                                        <option value="35.8"> 35.8% </option>
                                        <option value="35.9"> 35.9% </option>
                                        <option value="36"> 36% </option>
                                        <option value="36.1"> 36.1% </option>
                                        <option value="36.2"> 36.2% </option>
                                        <option value="36.3"> 36.3% </option>
                                        <option value="36.4"> 36.4% </option>
                                        <option value="36.5"> 36.5% </option>
                                        <option value="36.6"> 36.6% </option>
                                        <option value="36.7"> 36.7% </option>
                                        <option value="36.8"> 36.8% </option>
                                        <option value="36.9"> 36.9% </option>
                                        <option value="37"> 37% </option>
                                        <option value="37.1"> 37.1% </option>
                                        <option value="37.2"> 37.2% </option>
                                        <option value="37.3"> 37.3% </option>
                                        <option value="37.4"> 37.4% </option>
                                        <option value="37.5"> 37.5% </option>
                                        <option value="37.6"> 37.6% </option>
                                        <option value="37.7"> 37.7% </option>
                                        <option value="37.8"> 37.8% </option>
                                        <option value="37.9"> 37.9% </option>
                                        <option value="38"> 38% </option>
                                        <option value="38.1"> 38.1% </option>
                                        <option value="38.2"> 38.2% </option>
                                        <option value="38.3"> 38.3% </option>
                                        <option value="38.4"> 38.4% </option>
                                        <option value="38.5"> 38.5% </option>
                                        <option value="38.6"> 38.6% </option>
                                        <option value="38.7"> 38.7% </option>
                                        <option value="38.8"> 38.8% </option>
                                        <option value="38.9"> 38.9% </option>
                                        <option value="39"> 39% </option>
                                        <option value="39.1"> 39.1% </option>
                                        <option value="39.2"> 39.2% </option>
                                        <option value="39.3"> 39.3% </option>
                                        <option value="39.4"> 39.4% </option>
                                        <option value="39.5"> 39.5% </option>
                                        <option value="39.6"> 39.6% </option>
                                        <option value="39.7"> 39.7% </option>
                                        <option value="39.8"> 39.8% </option>
                                        <option value="39.9"> 39.9% </option>
                                        <option value="40"> 40% </option>
                                        <option value="40.1"> 40.1% </option>
                                        <option value="40.2"> 40.2% </option>
                                        <option value="40.3"> 40.3% </option>
                                        <option value="40.4"> 40.4% </option>
                                        <option value="40.5"> 40.5% </option>
                                        <option value="40.6"> 40.6% </option>
                                        <option value="40.7"> 40.7% </option>
                                        <option value="40.8"> 40.8% </option>
                                        <option value="40.9"> 40.9% </option>
                                        <option value="41"> 41% </option>
                                        <option value="41.1"> 41.1% </option>
                                        <option value="41.2"> 41.2% </option>
                                        <option value="41.3"> 41.3% </option>
                                        <option value="41.4"> 41.4% </option>
                                        <option value="41.5"> 41.5% </option>
                                        <option value="41.6"> 41.6% </option>
                                        <option value="41.7"> 41.7% </option>
                                        <option value="41.8"> 41.8% </option>
                                        <option value="41.9"> 41.9% </option>
                                        <option value="42"> 42% </option>
                                        <option value="42.1"> 42.1% </option>
                                        <option value="42.2"> 42.2% </option>
                                        <option value="42.3"> 42.3% </option>
                                        <option value="42.4"> 42.4% </option>
                                        <option value="42.5"> 42.5% </option>
                                        <option value="42.6"> 42.6% </option>
                                        <option value="42.7"> 42.7% </option>
                                        <option value="42.8"> 42.8% </option>
                                        <option value="42.9"> 42.9% </option>
                                        <option value="43"> 43% </option>
                                        <option value="43.1"> 43.1% </option>
                                        <option value="43.2"> 43.2% </option>
                                        <option value="43.3"> 43.3% </option>
                                        <option value="43.4"> 43.4% </option>
                                        <option value="43.5"> 43.5% </option>
                                        <option value="43.6"> 43.6% </option>
                                        <option value="43.7"> 43.7% </option>
                                        <option value="43.8"> 43.8% </option>
                                        <option value="43.9"> 43.9% </option>
                                        <option value="44"> 44% </option>
                                        <option value="44.1"> 44.1% </option>
                                        <option value="44.2"> 44.2% </option>
                                        <option value="44.3"> 44.3% </option>
                                        <option value="44.4"> 44.4% </option>
                                        <option value="44.5"> 44.5% </option>
                                        <option value="44.6"> 44.6% </option>
                                        <option value="44.7"> 44.7% </option>
                                        <option value="44.8"> 44.8% </option>
                                        <option value="44.9"> 44.9% </option>
                                        <option value="45"> 45% </option>
                                        <option value="45.1"> 45.1% </option>
                                        <option value="45.2"> 45.2% </option>
                                        <option value="45.3"> 45.3% </option>
                                        <option value="45.4"> 45.4% </option>
                                        <option value="45.5"> 45.5% </option>
                                        <option value="45.6"> 45.6% </option>
                                        <option value="45.7"> 45.7% </option>
                                        <option value="45.8"> 45.8% </option>
                                        <option value="45.9"> 45.9% </option>
                                        <option value="46"> 46% </option>
                                        <option value="46.1"> 46.1% </option>
                                        <option value="46.2"> 46.2% </option>
                                        <option value="46.3"> 46.3% </option>
                                        <option value="46.4"> 46.4% </option>
                                        <option value="46.5"> 46.5% </option>
                                        <option value="46.6"> 46.6% </option>
                                        <option value="46.7"> 46.7% </option>
                                        <option value="46.8"> 46.8% </option>
                                        <option value="46.9"> 46.9% </option>
                                        <option value="47"> 47% </option>
                                        <option value="47.1"> 47.1% </option>
                                        <option value="47.2"> 47.2% </option>
                                        <option value="47.3"> 47.3% </option>
                                        <option value="47.4"> 47.4% </option>
                                        <option value="47.5"> 47.5% </option>
                                        <option value="47.6"> 47.6% </option>
                                        <option value="47.7"> 47.7% </option>
                                        <option value="47.8"> 47.8% </option>
                                        <option value="47.9"> 47.9% </option>
                                        <option value="48"> 48% </option>
                                        <option value="48.1"> 48.1% </option>
                                        <option value="48.2"> 48.2% </option>
                                        <option value="48.3"> 48.3% </option>
                                        <option value="48.4"> 48.4% </option>
                                        <option value="48.5"> 48.5% </option>
                                        <option value="48.6"> 48.6% </option>
                                        <option value="48.7"> 48.7% </option>
                                        <option value="48.8"> 48.8% </option>
                                        <option value="48.9"> 48.9% </option>
                                        <option value="49"> 49% </option>
                                        <option value="49.1"> 49.1% </option>
                                        <option value="49.2"> 49.2% </option>
                                        <option value="49.3"> 49.3% </option>
                                        <option value="49.4"> 49.4% </option>
                                        <option value="49.5"> 49.5% </option>
                                        <option value="49.6"> 49.6% </option>
                                        <option value="49.7"> 49.7% </option>
                                        <option value="49.8"> 49.8% </option>
                                        <option value="49.9"> 49.9% </option>
                                        <option value="50"> 50% </option>
                                        <option value="50.1"> 50.1% </option>
                                        <option value="50.2"> 50.2% </option>
                                        <option value="50.3"> 50.3% </option>
                                        <option value="50.4"> 50.4% </option>
                                        <option value="50.5"> 50.5% </option>
                                        <option value="50.6"> 50.6% </option>
                                        <option value="50.7"> 50.7% </option>
                                        <option value="50.8"> 50.8% </option>
                                        <option value="50.9"> 50.9% </option>
                                        <option value="51"> 51% </option>
                                        <option value="51.1"> 51.1% </option>
                                        <option value="51.2"> 51.2% </option>
                                        <option value="51.3"> 51.3% </option>
                                        <option value="51.4"> 51.4% </option>
                                        <option value="51.5"> 51.5% </option>
                                        <option value="51.6"> 51.6% </option>
                                        <option value="51.7"> 51.7% </option>
                                        <option value="51.8"> 51.8% </option>
                                        <option value="51.9"> 51.9% </option>
                                        <option value="52"> 52% </option>
                                        <option value="52.1"> 52.1% </option>
                                        <option value="52.2"> 52.2% </option>
                                        <option value="52.3"> 52.3% </option>
                                        <option value="52.4"> 52.4% </option>
                                        <option value="52.5"> 52.5% </option>
                                        <option value="52.6"> 52.6% </option>
                                        <option value="52.7"> 52.7% </option>
                                        <option value="52.8"> 52.8% </option>
                                        <option value="52.9"> 52.9% </option>
                                        <option value="53"> 53% </option>
                                        <option value="53.1"> 53.1% </option>
                                        <option value="53.2"> 53.2% </option>
                                        <option value="53.3"> 53.3% </option>
                                        <option value="53.4"> 53.4% </option>
                                        <option value="53.5"> 53.5% </option>
                                        <option value="53.6"> 53.6% </option>
                                        <option value="53.7"> 53.7% </option>
                                        <option value="53.8"> 53.8% </option>
                                        <option value="53.9"> 53.9% </option>
                                        <option value="54"> 54% </option>
                                        <option value="54.1"> 54.1% </option>
                                        <option value="54.2"> 54.2% </option>
                                        <option value="54.3"> 54.3% </option>
                                        <option value="54.4"> 54.4% </option>
                                        <option value="54.5"> 54.5% </option>
                                        <option value="54.6"> 54.6% </option>
                                        <option value="54.7"> 54.7% </option>
                                        <option value="54.8"> 54.8% </option>
                                        <option value="54.9"> 54.9% </option>
                                        <option value="55"> 55% </option>
                                        <option value="55.1"> 55.1% </option>
                                        <option value="55.2"> 55.2% </option>
                                        <option value="55.3"> 55.3% </option>
                                        <option value="55.4"> 55.4% </option>
                                        <option value="55.5"> 55.5% </option>
                                        <option value="55.6"> 55.6% </option>
                                        <option value="55.7"> 55.7% </option>
                                        <option value="55.8"> 55.8% </option>
                                        <option value="55.9"> 55.9% </option>
                                        <option value="56"> 56% </option>
                                        <option value="56.1"> 56.1% </option>
                                        <option value="56.2"> 56.2% </option>
                                        <option value="56.3"> 56.3% </option>
                                        <option value="56.4"> 56.4% </option>
                                        <option value="56.5"> 56.5% </option>
                                        <option value="56.6"> 56.6% </option>
                                        <option value="56.7"> 56.7% </option>
                                        <option value="56.8"> 56.8% </option>
                                        <option value="56.9"> 56.9% </option>
                                        <option value="57"> 57% </option>
                                        <option value="57.1"> 57.1% </option>
                                        <option value="57.2"> 57.2% </option>
                                        <option value="57.3"> 57.3% </option>
                                        <option value="57.4"> 57.4% </option>
                                        <option value="57.5"> 57.5% </option>
                                        <option value="57.6"> 57.6% </option>
                                        <option value="57.7"> 57.7% </option>
                                        <option value="57.8"> 57.8% </option>
                                        <option value="57.9"> 57.9% </option>
                                        <option value="58"> 58% </option>
                                        <option value="58.1"> 58.1% </option>
                                        <option value="58.2"> 58.2% </option>
                                        <option value="58.3"> 58.3% </option>
                                        <option value="58.4"> 58.4% </option>
                                        <option value="58.5"> 58.5% </option>
                                        <option value="58.6"> 58.6% </option>
                                        <option value="58.7"> 58.7% </option>
                                        <option value="58.8"> 58.8% </option>
                                        <option value="58.9"> 58.9% </option>
                                        <option value="59"> 59% </option>
                                        <option value="59.1"> 59.1% </option>
                                        <option value="59.2"> 59.2% </option>
                                        <option value="59.3"> 59.3% </option>
                                        <option value="59.4"> 59.4% </option>
                                        <option value="59.5"> 59.5% </option>
                                        <option value="59.6"> 59.6% </option>
                                        <option value="59.7"> 59.7% </option>
                                        <option value="59.8"> 59.8% </option>
                                        <option value="59.9"> 59.9% </option>
                                        <option value="60"> 60% </option>
                                    </select> 请选择
                                </div>
                            </div>

                            <!-- 有效时间：borrow_valid_time -->
                            <div class="module_border">
                                <div class="l">有效时间：</div>
                                <div class="c">
                                    <select name="borrow_valid_time" id="borrow_valid_time" style="width:171px;">
                                        <option value="1">1天</option>
                                        <option value="2">2天</option>
                                        <option value="3">3天</option>
                                        <option value="4">4天</option>
                                        <option value="5">5天</option>
                                        <option value="6">6天</option>
                                        <option value="7">7天</option>
                                        <option value="8">8天</option>
                                        <option value="9">9天</option>
                                        <option value="10">10天</option>
                                    </select> 请选择
                                </div>
                            </div>

                            <!-- 借款期限：borrow_period 插入-->
                            <div class="module_border" id="lend_time">
                                <div class="l">借款期限：</div>
                                <div class="c">
                                    <select name="deadline" id="borrow_period" style="width:171px;">
                                        <option value="0.03" selected="selected">1天</option>
                                        <option value="0.06">2天</option>
                                        <option value="0.1">3天</option>
                                        <option value="0.13">4天</option>
                                        <option value="0.16">5天</option>
                                        <option value="0.2">6天</option>
                                        <option value="0.23">7天</option>
                                        <option value="0.26">8天</option>
                                        <option value="0.3">9天</option>
                                        <option value="0.33">10天</option>
                                        <option value="0.36">11天</option>
                                        <option value="0.4">12天</option>
                                        <option value="0.43">13天</option>
                                        <option value="0.46">14天</option>
                                        <option value="0.5">15天</option>
                                        <option value="0.53">16天</option>
                                        <option value="0.56">17天</option>
                                        <option value="0.6">18天</option>
                                        <option value="0.63">19天</option>
                                        <option value="0.66">20天</option>
                                        <option value="0.7">21天</option>
                                        <option value="0.73">22天</option>
                                        <option value="0.76">23天</option>
                                        <option value="0.8">24天</option>
                                        <option value="0.83">25天</option>
                                        <option value="0.86">26天</option>
                                        <option value="0.9">27天</option>
                                        <option value="0.93">28天</option>
                                        <option value="0.96">29天</option>
                                        <option value="1.00">1个月</option>
                                        <option value="2.00">2个月</option>
                                        <option value="3.00">3个月</option>
                                        <option value="4.00">4个月</option>
                                        <option value="5.00">5个月</option>
                                        <option value="6.00">6个月</option>
                                        <option value="7.00">7个月</option>
                                        <option value="8.00">8个月</option>
                                        <option value="9.00">9个月</option>
                                        <option value="10.00">10个月</option>
                                        <option value="11.00">11个月</option>
                                        <option value="12.00">12个月</option>
                                        <option value="13.00">13个月</option>
                                        <option value="14.00">14个月</option>
                                        <option value="15.00">15个月</option>
                                        <option value="16.00">16个月</option>
                                        <option value="17.00">17个月</option>
                                        <option value="18.00">18个月</option>
                                    </select>
                                    <!-- <input type="text" name="borrow_period" /> 可以输入小数，如0.03月是一天  -->
                                    <!-- <select name='borrow_period' id=borrow_period  style='width:171px;'><option value='0.03' >1天</option><option value='0.06' >2天</option><option value='0.1' >3天</option><option value='0.13' >4天</option><option value='0.16' >5天</option><option value='0.2' >6天</option><option value='0.23' >7天</option><option value='0.26' >8天</option><option value='0.3' >9天</option><option value='0.33' >10天</option><option value='0.36' >11天</option><option value='0.4' >12天</option><option value='0.43' >13天</option><option value='0.46' >14天</option><option value='0.5' >15天</option><option value='0.53' >16天</option><option value='0.56' >17天</option><option value='0.6' >18天</option><option value='0.63' >19天</option><option value='0.66' >20天</option><option value='0.7' >21天</option><option value='0.73' >22天</option><option value='0.76' >23天</option><option value='0.8' >24天</option><option value='0.83' >25天</option><option value='0.86' >26天</option><option value='0.9' >27天</option><option value='0.93' >28天</option><option value='0.96' >29天</option><option value='1.00' >1个月</option><option value='2.00' >2个月</option><option value='3.00' >3个月</option><option value='4.00' >4个月</option><option value='5.00' >5个月</option><option value='6.00' >6个月</option><option value='7.00' >7个月</option><option value='8.00' >8个月</option><option value='9.00' >9个月</option><option value='10.00' >10个月</option><option value='11.00' >11个月</option><option value='12.00' >12个月</option><option value='13.00' >13个月</option><option value='14.00' >14个月</option><option value='15.00' >15个月</option><option value='16.00' >16个月</option><option value='17.00' >17个月</option><option value='18.00' >18个月</option></select> -->请选择
                                </div>
                            </div>

                            <!-- 还款方式： borrow_style
table:`yyd_linkages` 四项的type_id=9
id=29,value=0,name=按月等额
id=226,value=1,name=按季还款
id=314,value=2,name=到期还本还息
id=227,value=3,name=按月还息到期还本
-->
                            <div class="module_border" id="rertunType">
                                <div class="l">还款方式：</div>
                                <div class="c">
                                    <select style="width:171px" type="text" name="modeOfRepayment">
                                        <option value="2">到期还本还息</option>
                                        <option value="0">按月等额</option>
                                        <!--<option value="1">按季还款</option>  -->
                                        <option value="3">按月还息到期还本</option>
                                    </select> 如果借款期限小于一个月，请选择到期还本还息。
                                </div>
                            </div>

                            <div class="module_border">
                                <div style="background-color: white;width:912px;"><strong>借款描述</strong></div>
                                <div>
                                    <textarea id="borrow_contents" name="borrow_contents" style="width:892px; height:180px;padding:10px;border:1px solid #ADC6DE">借款描述:</textarea>
                                </div>
                            </div>

                            <div class="module_submit" style="margin-top:30px">
                                <!-- <input type="submit"  name="reset" value="确认添加借款" style="font-size:16px;padding:5px"/> -->
                                <input type="submit" name="reset" value="确认添加借款">
                            </div>

                        </form>

                    </div>

                    <script>
                        $(document).ready(function() {
                            $("#lend_time").css('display', '');
                            $("#rertunType").css('display', '');
                            $("[name='is_Seconds']").change(function() {
                                var selectedvalue = $("[name='is_Seconds']:checked").val();
                                if(selectedvalue == "1") {
                                    $("#lend_time").css('display', 'none');
                                    $("#rertunType").css('display', 'none');
                                    $("#borrow_periodh").attr("value", 1);
                                    $("#borrow_style").attr("value", 0);
                                    $("#rel_borrow_style").val("0");
                                } else {
                                    $("#lend_time").css('display', '');
                                    $("#rertunType").css('display', '');
                                    $("#borrow_style").attr("disabled", false);
                                }
                            });
                        });

                        function check_form() {
                            var frm = document.forms['form1'];
                            var username = frm.elements['username'].value;
                            var username1 = frm.elements['username1'].value;
                            var name = frm.elements['name'].value;
                            var account = frm.elements['account'].value;
                            var borrow_apr = frm.elements['borrow_apr'].value;
                            var borrow_period = frm.elements['borrow_period'].value;
                            var borrow_type = frm.elements['borrow_type'].value;
                            var second_limit_money = frm.elements['second_limit_money'].value;
                            var borrow_object = frm.elements['borrow_object'].value;
                            var borrow_use = frm.elements['borrow_use'].value;
                            var borrow_valid_time = frm.elements['borrow_valid_time'].value;
                            var borrow_style = frm.elements['borrow_style'].value;
                            var wind_control = frm.elements['wind_control'].value;
                            var is_Seconds = frm.elements['is_Seconds'].value;
                            var errorMsg = '';
                            /*while(username.lastIndexOf(" ")>=0){
                                username = username.replace(" ","");
                            }
                            while(username.lastIndexOf("　")>=0){
                                username = username.replace("　","");
                            }
                            if (username.length == 0) {
                                errorMsg += '用户名不能为空，请输入用户名 \n';
                            }
                            if (username.length != 0 && username.length < 2) {
                                errorMsg += '正确的用户名长度应大于2位 \n';
                            }
                            if (username.length != 0 && username.length > 15) {
                                errorMsg += '正确的用户名长度应小于15位 \n';
                            }*/
                            if(username.length == 0 && username1.length == 0) {
                                errorMsg += '用户名不能为空，请选择用户名 \n';
                            }
                            if(username.length > 0 && username1.length > 0 && username != username1) {
                                errorMsg += '请不要既输入用户名，又选择用户名 \n';
                            }
                            if(borrow_type.length == 0) {
                                errorMsg += '借款类型不能为空，请选择借款类型 \n';
                            }
                            if(second_limit_money.length == 0) {
                                errorMsg += '最高投标限额不能为空，请选择最高投标限额 \n';
                            }
                            while(name.lastIndexOf(" ") >= 0) {
                                name = name.replace(" ", "");
                            }
                            while(name.lastIndexOf("　") >= 0) {
                                name = name.replace("　", "");
                            }
                            if(name.length == 0) {
                                errorMsg += '借款标题不能为空，请输入借款标题 \n';
                            }
                            if(name.length > 50) {
                                errorMsg += '输入的借款标题太长 \n';
                            }
                            if(borrow_object.length == 0) {
                                errorMsg += '借款对象不能为空，请选择借款对象 \n';
                            }
                            if(borrow_use.length == 0) {
                                errorMsg += '借款用途不能为空，请选择借款用途 \n';
                            }
                            while(account.lastIndexOf(" ") >= 0) {
                                account = account.replace(" ", "");
                            }
                            while(account.lastIndexOf("　") >= 0) {
                                account = account.replace("　", "");
                            }
                            if(isNaN(account)) {
                                errorMsg += '借款金额请输入数字 \n';
                            }
                            if(!isNaN(account) && account.length == 0) {
                                errorMsg += '借款金额不能为空，请输入借款金额 \n';
                            }
                            if(!isNaN(account) && account % 100 != 0) {
                                errorMsg += '借款金额应输入100的倍数 \n';
                            }
                            if(!isNaN(account) && account < 0) {
                                errorMsg += '借款金额应输入正数 \n';
                            }
                            while(borrow_apr.lastIndexOf(" ") >= 0) {
                                borrow_apr = borrow_apr.replace(" ", "");
                            }
                            while(borrow_apr.lastIndexOf("　") >= 0) {
                                borrow_apr = borrow_apr.replace("　", "");
                            }
                            if(isNaN(borrow_apr)) {
                                errorMsg += '利率请输入数字 \n';
                            }
                            if(!isNaN(borrow_apr) && borrow_apr.length == 0) {
                                errorMsg += '利率不能为空，请输入利率 \n';
                            }
                            if(!isNaN(borrow_apr) && borrow_apr < 0) {
                                errorMsg += '请输入大于0的利率 \n';
                            }
                            if(!isNaN(borrow_apr) && borrow_apr >= 60) {
                                errorMsg += '请输入不大于60%的利率 \n';
                            }
                            if(!isNaN(borrow_apr) && (borrow_apr * 10) % 1 != 0) {
                                errorMsg += '利率最多只能精确到小数点后一位 \n';
                            }
                            if(borrow_valid_time.length == 0) {
                                errorMsg += '借款有效时间不能为空，请选择借款有效时间 \n';
                            }
                            if(borrow_period.length == 0 && is_Seconds == 1) {
                                errorMsg += '非秒标，借款期限不能为空，请选择借款期限 \n';
                            }
                            if(borrow_period < 1 && borrow_style != 2) {
                                errorMsg += '借款期限小于一个月，还款方式只能选择到期还本还息 \n';
                            }
                            if(borrow_style.length == 0 && is_Seconds == 1) {
                                errorMsg += '非秒标，还款方式不能为空，请选择还款方式 \n';
                            }
                            if(wind_control.length == 0) {
                                errorMsg += '风控介绍不能为空，请输入风控介绍 \n';
                            }

                            if(errorMsg.length > 0) {
                                alert(errorMsg);
                                return false;
                            } else {
                                return true;
                            }
                        }
                    </script>

                </div>
            </div>
        </td>
    </tr>
</table>
<iframe name="notice" frameborder="0" style="height:0;width:0;"></iframe>
<div id="menu" style="display:none"></div>
<div id="showmenu" style="display:none"></div>
</body>

</html>
