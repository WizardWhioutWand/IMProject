<%--
  Created by IntelliJ IDEA.
  User: Albert
  Date: 2019/7/25
  Time: 20:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>后台管理</title>
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
    <script  type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.4.1.js"></script>
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
                        <a href="${pageContext.request.contextPath}/index.jsp" style="height:35px;display:block">管理首页</a>
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
                        <a href="#">所有借款</a>
                    </div>
                    <ul class="fr">
                        <li class="home">欢迎您，${manager.name}(${user.userType})  (分管分公司：
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
                    <li class="one">
                        <a id="borrow_all" href="${pageContext.request.contextPath}/loan/showLoansByPage">所有借款</a>
                    </li>
                    <li class="">
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

                    <div class="module_add">
                        <div class="module_title"><strong>所有借款<!--所有借款-->
                        </strong>
                            <div style="float:right">
                                <a href="?admin&amp;q=code/borrow&amp;type_e=excel&amp;page=1&amp;username=&amp;status=&amp;type=&amp;borrow_name=&amp;borrow_nid=&amp;realname=">导出当前</a>
                                <a href="?admin&amp;q=code/borrow&amp;type_e=excel&amp;username=&amp;status=&amp;type=&amp;borrow_name=&amp;borrow_nid=&amp;realname=">导出全部</a>&nbsp;&nbsp;&nbsp;</div>
                        </div>
                    </div>
                    <table border="0" cellspacing="1" bgcolor="#CCCCCC" width="100%">
                        <form action="" method="post"></form>
                        <tbody>
                        <tr>
                            <!--<td width="" class="main_td">  <input type="checkbox" name="check_all"  /></td>-->
                            <td width="" class="main_td">ID</td>
                            <td width="*" class="main_td">用户名称</td>
                            <td width="*" class="main_td">真实姓名</td>
                            <td width="*" class="main_td">所属分公司</td>
                            <td width="*" class="main_td">贷款号</td>
                            <td width="" class="main_td">借款标题</td>
                            <td width="" class="main_td">借款金额</td>
                            <td width="" class="main_td">利率</td>
                            <td width="" class="main_td">借款期限</td>
                            <td width="" class="main_td">还款方式</td>
                            <td width="" class="main_td">借款类型</td>
                            <!--<td width="" class="main_td">类型</td>-->
                            <td width="" class="main_td">状态</td>
                            <td width="" class="main_td">查看</td>
                            <c:forEach  items="${pb.list}" varStatus="s" var="i">
                            <tr>
                            <td>${i.userId}</td>
                            <td>${i.userName}</td>
                            <td>${i.realName}</td>
                            <td>${i.resCompany}</td>
                            <td>${i.loanId}</td>
                            <td>${i.title}</td>
                            <td>${i.amount}</td>
                            <td>${i.rate}</td>
                            <td>${i.deadline}</td>
                            <td>${i.modeOfRepayment}</td>
                            <td>${i.typeOfLoan}</td>
                            <td>${i.status}<span><a href="${pageContext.request.contextPath}/loan/updateStatus?loanId=${i.loanId}">点击通过审核</a></span></td>
                            <td style="text-align:left"><a href="#">查看</a>"
                            </td>
                            </tr>
                            </c:forEach>

                        <tr>
                            <td colspan="14" class="action">
                                <!--
<div class="floatl">
<input type="submit" value="确定提交" class="submit"/>
</div>
--><form action="${pageContext.request.contextPath}/loan/searchByCondition" method="post">
                                <div class="floatr">
                                    标题：<input type="text" name="title" id="borrow_name" value="" size="10"> 用户名：
                                        <input type="text" name="userName" id="userName" value="" size="10"> 真实名：
                                    <input type="text" name="realName" id="realName" value="" size="10"> 贷款号：
                                    <input type="text" name="loanId" id="borrow_nid" value="0" size="10">
                                    <select name="typeOfLoan" id="borrow_type">
                                        <option value="">借款类型</option>
                                        <option value="信用标">信用标</option>
                                        <option value="担保标">担保标</option>
                                        <option value="抵押标">抵押标</option>
                                        <!-- <option value="flow">流转标</option> -->
                                        <option value="净值标">净值标</option>
                                        <!-- <option value="1" >担保标</option>
     <option value="0" >普通标</option> -->
                                    </select>
                                    分公司：
                                    <select name="resCompany" id="assigned_branch_id_1">
                                        <option value="">全部</option>
                                        <option value="上海总公司">上海总公司</option>
                                        <option value="昌平分公司">昌平分公司</option>
                                    </select>
                                    <input type="submit" value="搜索" class="submit" >
                                    <!--  <input type="button" value="搜索111" class="submit" onclick="sousuo('?admin&q=code/borrow')"> -->
                                </div>
                            </form>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="14" class="page">
                                <div>
                                    <nav aria-label="Page navigation">
                                        <ul class="pagination">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/loan/showLoansByPage?currentPage=${(pb.currentPage-1)<=1?1:(pb.currentPage-1)}" aria-label="Previous">
                                                    <span aria-hidden="true">&laquo;</span>
                                                </a>
                                            </li>
                                            <c:forEach begin="1" end ="${pb.totalPage}" var="i">
                                                <li><a href="${pageContext.request.contextPath}/loan/showLoansByPage?currentPage=${i}">${i}</a></li>
                                            </c:forEach>
                                            <li>
                                                <a href="${pageContext.request.contextPath}/loan/showLoansByPage?currentPage=${(pb.currentPage+1)>=pb.totalPage?pb.totalPage:(pb.currentPage+1)}" aria-label="Next">
                                                    <span aria-hidden="true">&raquo;</span>
                                                </a>
                                            </li>
                                            <span style="font-size: 25px;margin-left: 5px;">共${pb.totalCount}条记录，共${pb.totalPage}页</span>
                                        </ul>
                                    </nav>
                                </div>
                            </td>
                        </tr>

                        </tbody>
                    </table>

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
