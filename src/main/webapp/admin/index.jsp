<%--
  Created by IntelliJ IDEA.
  User: Albert
  Date: 2019/7/25
  Time: 20:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>后台管理</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gbk">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <!--<script src="../plugins/editor/xheditor/xheditor-1.1.12-zh-cn.min.js"></script>-->
    <script src="../plugins/timepicker/WdatePicker.js"></script>
    <script src="../themes/youyidai_admin/images/common.js"></script>
    <script src="../themes/youyidai_admin/images/jquery.js"></script>
    <script src="../themes/youyidai_admin/js/base.js"></script>
    <script src="../themes/youyidai_admin/js/jquery.js"></script>
    <script src="../themes/youyidai_admin/js/select2.js"></script>
    <script src="../themes/youyidai_admin/js/tipswindown.js"></script>
    <link href="../plugins/timepicker/skin/WdatePicker.css" rel="stylesheet" type="text/css">
    <link href="../themes/youyidai_admin/css/select2.css" rel="stylesheet" type="text/css" />
    <link href="../themes/youyidai_admin/css/select2.css" rel="stylesheet" type="text/css">
    <link href="../themes/youyidai_admin/css/tipswindown.css" rel="stylesheet" type="text/css" />
    <link href="../themes/youyidai_admin/css/tipswindown.css" rel="stylesheet" type="text/css">
    <link rel="icon" href="../../afavico.GIF" type="image/gif">
    <link rel="shortcut icon" href="../../favicon.ico">
    <link rel="stylesheet" type="text/css" href="../themes/youyidai_admin/admin.css">
    <link rel="stylesheet" type="text/css" href="../themes/youyidai_admin/css/index.css" />
</head>

<body scroll="no">
<table width="100%" height="97%" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td colspan="2" height="80" valign="top">
            <div id="header">
                <div class="logo" style="float:left; width:150px">
                    <div class="png">
                        <a href="../#"><img src="../themes/youyidai_admin/images/logo.png" /></a>
                    </div>
                    <div class="lun">
                        <a href="${pageContext.request.contextPath}/index.jsp" target="_blank">网站首页</a>&nbsp;&#8211;&nbsp;
                        <a href="./">后台首页</a>
                    </div>
                </div>
                <!--重点导航-->
                <ul class="nav" style="float:right">
                    <li><img src="../themes/youyidai_admin/images/nav_03.jpg" /></li>
                    <li class="home">
                        <a href="${pageContext.request.contextPath}/index.jsp" style="height:35px;display:block">管理首页</a>
                    </li>
                    <li id="attestations">
                        <a style="cursor:pointer" href="attestations/index.html" style="height:35px;display:block">资料审核</a>
                    </li>
                    <li id="account">
                        <a style="cursor:pointer" href="account/index.html" style="height:35px;display:block">资金管理</a>
                    </li>
                    <li id="borrow">
                        <a style="cursor:pointer" href="${pageContext.request.contextPath}/admin/borrow/index.jsp" style="height:35px;display:block">借款管理</a>
                    </li>
                    <li id="approve">
                        <a style="cursor:pointer" href="approve/index.html" style="height:35px;display:block">认证管理</a>
                    </li>
                    <li id="scrollpic">
                        <a style="cursor:pointer" href="scrollpic/index.html" style="height:35px;display:block">flash大图管理</a>
                    </li>
                    <li id="payment">
                        <a style="cursor:pointer" href="payment/index.html" style="height:35px;display:block">支付管理</a>
                    </li>
                    <li id="system">
                        <a style="cursor:pointer" href="system/index.html" style="height:35px;display:block">系统管理</a>
                    </li>
                    <li id="site">
                        <a style="cursor:pointer" href="site/index.html" style="height:35px;display:block">站点管理</a>
                    </li>
                    <li id="users">
                        <a style="cursor:pointer" href="users/index.html" style="height:35px;display:block">用户管理</a>
                    </li>
                    <li id="articles">
                        <a style="cursor:pointer" href="articles/index.html" style="height:35px;display:block">文章管理</a>
                    </li>

                    <li id="other">
                        <a style="cursor:pointer" href="other/index.html" onClick="return initguide('other');" style="height:35px;display:block">其他功能</a>
                    </li>
                    <li><img src="../themes/youyidai_admin/images/nav_07.jpg" /></li>

                </ul>
                <!--头部信息导航-->
                <div id="guide">
                    <ul class="fr">
                        <li class="home">您好，${manager.name}(${user.userType}) (分管分公司：
                            <font style="color:red">未限制</font>)</li>
                        <li>
                            <a class="s0" style="cursor:pointer" onclick="document.location.reload();" title="刷新该页面">刷新</a>
                        </li>
                        <li>
                            <a class="s0" style="cursor:pointer" onclick="history.go(-1);" title="后退到前一页">后退</a>
                        </li>
                        <li>
                            <a href="login.html">退出</a>
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
                        <a id="common_users_password" href="index.html">密码设置</a>
                    </li>
                </ul>
            </div>

        </td>
        <td valign="top" id="mainright">
            <!--右边开始-->

            <div class="tt">

                <div class="admin_module">
                    <table border="0" cellspacing="1" bgcolor="#CCCCCC" width="100%">

                        <tbody>
                        <tr>
                            <td colspan="2" bgcolor="#ffffff" class="main_td2">
                                <div class="main_title">系统基本运行环境概括</div>
                            </td>
                        </tr>
                        <tr>
                            <td class="main_td1" align="right" width="15%">环境要求:</td>
                            <td class="main_td1" align="left">
                                <!-- jsp+jdk+Tomcat5.0以上-->Windows + IIS + Mysql + PHP</td>
                        </tr>
                        <tr>
                            <td class="main_td1" align="right" width="15%">PHP</td>
                            <td class="main_td1" align="left">PHP5.2及以上 </td>
                        </tr>
                        <tr>
                            <td class="main_td1" align="right" width="15%">服务器</td>
                            <td class="main_td1" align="left">IIS6.1及以上 </td>
                        </tr>
                        <tr>
                            <td class="main_td1" align="right" width="15%">硬盘数据:</td>
                            <td class="main_td1" align="left">50G及以上</td>
                        </tr>
                        <tr>
                            <td class="main_td1" align="right" width="15%">内存:</td>
                            <td class="main_td1" align="left">2G及以上</td>
                        </tr>
                        <tr>
                            <td colspan="2" bgcolor="#ffffff" class="main_td2">
                                <div class="main_title">网站系统信息</div>
                            </td>
                        </tr>
                        <tr>
                            <td class="main_td1" align="right" width="15%">是否安全模式:</td>
                            <td class="main_td1" align="left">
                                <font color="green">[√]Off</font>
                            </td>
                        </tr>
                        <tr>
                            <td class="main_td1" align="right" width="15%">服务器操作系统:</td>
                            <td class="main_td1" align="left">Windows Server 2008 R2 Standard
                                <!-- windows_nt-->
                            </td>
                        </tr>
                        <tr>
                            <td class="main_td1" align="right" width="15%">服务器IP:</td>
                            <td class="main_td1" align="left">
                                <a href="http://www.baidu.com/s?wd=121.199.39.69" target="_blank">121.199.39.69</a>
                                <!-- 115.171.61.160-->
                            </td>
                        </tr>
                        <tr>
                            <td class="main_td1" align="right">技术支持：</td>
                            <td class="main_td1" align="left"> QQ 2573012953
                            </td>
                        </tr>
                        <tr>
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
