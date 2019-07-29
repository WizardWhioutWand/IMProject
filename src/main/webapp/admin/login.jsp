<%--
  Created by IntelliJ IDEA.
  User: Albert
  Date: 2019/7/25
  Time: 19:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page buffer="16kb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>系统管理</title>
    <link href="../themes/youyidai_admin/css/css.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />
    <link rel="icon" href="../../afavico.gif" type="image/gif" />
    <script type="text/javascript">
        function CheckUser() {
            var result =document.getElementById("userName").value;
            var passwd =document.getElementById("passWord").value;
            if (result==""){
                alert("用户名不能为空。")
                return false;
            }
            if (passwd==""){
                alert("密码不能为空。")
                return false;
            }
       document.getElementById("fId").submit();
        }
    </script>
</head>

<body>

<div class="top">
    <div class="top_logo">
        <div class="logo"></div>
    </div>
</div>
<div style="float:right;margin:10px 10px 10px 10px;">
    <a href="../index.html" style="color:#52D6F7;text-decoration:none;font-size:10px" target="_balnk">前台首页</a>
</div>
<div class="menu">
    <div class="login">
        <div class="txt">
<form action="${pageContext.request.contextPath}/user/managerLogin" method="post" id="fId">
            <table width="255" height="187" border="0" align="center" cellspacing="0">
                <tr>
                    <!-- <td colspan="2"><font color="#3399CC" size="2">后台系统管理</font>
    </td> -->
                </tr>
                <tr>
                    <td width="54" height="40">用户名:</td>
                    <td><input name="userName" id="userName" type="text" size="20" maxlength="20" tabindex="1" style="width:145px;" autocomplete="off" value="zuike"/></td>
                </tr>
                <tr>
                    <td height="40">密　码:</td>
                    <td><input name="passWord" id="passWord" type="password" size="21" maxlength="20" tabindex="2" style="width:145px;" autocomplete="off" value="1234"/></td>
                </tr>
                <tr>
                    <td height="40">验证码:</td>
                    <td><input name="valicode" type="text" size="11" maxlength="4" tabindex="3" data-novalid="no" value="0000" onClick="<!--$('#valicode').attr('src','?plugins&q=imgcode&t=' + Math.random())-->" autocomplete="off" style="width:87px" /> <img src="?plugins&q=imgcode" alt="点击刷新" title="点击刷新" onClick="this.src='?plugins&q=imgcode&t=' + Math.random();" id="valicode" align="absmiddle" style="cursor:pointer" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <font style="color:#727272;-webkit-text-size-adjust:none;">若登录失败，请点击刷新验证码。</font>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div class="dengl">

                                <input type="image" src="${pageContext.request.contextPath}/themes/youyidai_admin/images/anniu.gif" onclick="CheckUser();">

                        </div>
                    </td>
                </tr>
            </table>
</form>
        </div>
    </div>
</div>

</body>

</html>
