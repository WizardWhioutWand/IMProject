<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>我的账户 | 苏元投资</title>
    <meta name="description" content="苏元投资" />
    <meta name="keywords" content="苏元投资" />
    <link href="/Web/themes/rongzi/css/css.css" rel="stylesheet" type="text/css" />
    <link href="/Web/themes/rongzi/css/user.css" rel="stylesheet" type="text/css" />
    <link href="/Web/themes/rongzi/css/new.css" rel="stylesheet" type="text/css" />
    <link href="/Web/themes/rongzi/css/qq.css" rel="stylesheet" type="text/css" />
    <link href="/Web/themes/rongzi/css/shop.css" rel="stylesheet" type="text/css" />
    <link href="/Web/themes/rongzi/css/myinfo.css" rel="stylesheet" type="text/css" />
    <link href="/Web/themes/rongzi/css/tipswindown.css" rel="stylesheet" type="text/css" />
    <link href="/Web/themes/rongzi/css/common.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="/Web/themes/rongzi/longbao/style.css" type="text/css" media="screen, projection" />
    <link href="/Web/themes/rongzi/css/usergetpwd.css" rel="stylesheet" type="text/css" />
    <script src="/Web/themes/rongzi/js/yu.js" type="text/javascript"></script>
    <script src="/Web/themes/rongzi/js/user.js" type="text/javascript"></script>
    <script src="/Web/themes/rongzi/js/tb.js" type="text/javascript"></script>
    <script src="/Web/themes/rongzi/js/jquery.js" type="text/javascript"></script>
    <script src="/Web/themes/rongzi/js/tipswindown.js" type="text/javascript"></script>
    <script src="/Web/themes/rongzi/js/sub.js" type="text/javascript"></script>
    <script src="/Web/themes/rongzi/js/lhgdialog.min.js" type="text/javascript"></script>
    <script src="/Web/plugins/timepicker/WdatePicker.js" type="text/javascript"></script>
    <script src="/Web/themes/rongzi/js/base.js" type="text/javascript"></script>
    <script src="/Web/plugins/editor/xheditor/xheditor-1.1.12-zh-cn.min.js" type="text/javascript"></script>

    <link href="/Web/themes/rongzi/css/new.css" rel="stylesheet" type="text/css" />
    <link href="/Web/themes/rongzi/css/userreg.css" rel="stylesheet" type="text/css" />
    <link href="/Web/themes/rongzi/css/userlogin.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" type="image/x-icon" href="syico.ico" />
</head>

<body>

<div class="container">

    <div class="header clearfix">
        <div class="top">
            <div class="box980">
                <a href="tool_lixi/index.html"><img src="themes/rongzi/longbao/images/jsq.jpg" width="8" height="11" /> 利息计算器</a>
                <a href="gsjj/index.html">帮助中心</a>

                <a href="reg.html">注册</a>
                <a href="login.html">登录</a>
                <span>您好，游客</span>

                <div style="position: absolute;">
                    <div style="color:white">客服电话：010-57480310　　关注我们：
                        <img src="themes/rongzi/longbao/images/wb.png" style="width:16px;height:16px;border:1px solid #E7E7EF; border-radius:8px;" />
                        <img src="themes/rongzi/longbao/images/wx.png" style="width:16px;height:16px;border:1px solid #E7E7EF; border-radius:8px;" />
                    </div>
                </div>

            </div>
        </div>
        <div class="head">
            <div class="box980">
                <!--
<div class="logo"><a href=""><img src="themes/rongzi/longbao/images/logo.jpg" width="219" height="64" /></a></div>-->
                <!--  -->
                <a href=""><img src="themes/rongzi/longbao/images/sylogo.png" style="position: absolute;width:251px;height:75px;margin-top: 8px;"></img>
                </a>
                <!-- <div style="position: absolute;font-size:45px;margin-top: 13px;margin-left: 110px;font-family:KaiTi;color:#847B7B;padding-right:5px">苏元投资</div> -->

                <!-- <div style="position: absolute;font-size:30px;margin-top: 15px;margin-left:170px;font-family:KaiTi;color:#847B7B">上海百封</div>
<div style="position: absolute;font-size:12px;margin-top: 55px;margin-left: 170px;">战　略　合　作　伙　伴</div>-->
                <div class="nav" style="width: 540px;">
                    <ul>
                        <li id="cm1">
                            <a href="./">首页</a>
                        </li>
                        <li id="cm2">
                            <a href="./invest/index.html">我要投资</a>
                        </li>
                        <li id="cm3">
                            <a href="./borrow/index.html">我要借款</a>
                        </li>
                        <li id="cm4">
                            <a href="./user/index.html" class="on">我的账户</a>
                        </li>
                        <!--<li><a href="aqbz/index.html">安全保障</a></li>-->
                        <li>
                            <a href="gsjj/index.html">帮助中心</a>
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
                    <a href="how_it_works/index.html">・ 新手上路</a>
                    <a href="fxgk/index.html">・ 风险管控</a>
                    <a href="fees/index.html">・ 费用说明</a>
                    <a href="hetong/index.html">・ 法律文本</a>
                </div>

                <div class="box980 cm2" style="display:none;">
                    <a href="full_check/index.html">・ 复审中的借款</a>
                    <a href="full_success/index.html">・ 成功的借款</a>
                    <a href="invest/index.html">・ 进行中的借款</a>
                </div>

                <div class="box980 cm3" style="display:none;">
                    <a href="borrow/index.html">・ 申请借款</a>
                    <a href="att_center/index.html">・ 借款认证</a>
                </div>

                <div class="box980 cm4" style="">
                    <a href="user/index.html">・ 账户中心</a>
                    <a href="code/borrow/bid.html">・ 借出管理</a>
                    <a href="code/borrow/publish.html">・ 借入管理</a>
                    <a href="code/rating/basic.html">・ 个人设置</a>
                </div>

            </div>
        </div>
    </div>
    <script>
        function check_login(obj) {

            if(obj.placeholder == '请输入用户名' || obj.placeholder == '请输入密码') {
                obj.placeholder = '';
            }

        }

        function login_in_form_h() {

            var frm = document.forms['login_in_form'];

            var login_keywords = frm.elements['keywords'].value;

            var login_password = frm.elements['password'].value;

            var errorMsg = '';

            if(login_keywords.length == 0) {

                errorMsg += '* 用户名不能为空' + '\n';

            }
            if(login_password.length == 0) {

                errorMsg += '* 密码不能为空' + '\n';

            }

            if(errorMsg.length > 0) {

                alert(errorMsg);
                return false;

            } else {

                return true;

            }

        }
    </script>

    <div class="bodyer clearfix">
        <div class="login-left"><img src="themes/rongzi/longbao/images/login_03.jpg" width="496" height="320" /></div>
        <form action="${pageContext.request.contextPath}/user/userLogin" method="post" name="login_in_form">
            <div class="login-right">
                <div class="control_group mb20">
                    <label class="control_label"> 登录名 </label>
                    <div class="controls">
                        <input type="text" name="userName" id="keywords" class="inputBox" placeholder="请输入用户名" autocomplete="off" value="zuikc">
                    </div>
                </div>
                <div class="control_group mb10">
                    <label class="control_label"> 密码 </label>
                    <div class="controls">
                        <input type="password" code="ie_psw1" class="inputBox password_new" placeholder="请输入密码" name="passWord" id="password" value="" autocomplete="off">
                    </div>
                </div>
                <div class="control_group mb20 mt20">
                    <label class="control_label"></label>
                    <div class="controls">
                        <div class="clearfjx w244">
                            <label class="l"><input name="remember" class="vn" id="remember" type="checkbox" checked="checked"> 一周内自动登录</label>
                            <input type="hidden" name="url" value="./index.phpuser/index.html" />
                        </div>
                    </div>
                </div>
                <div class="control_group mb20">
                    <label class="control_label"><span>${error}</span></label>
                    <div class="controls">
                            <button class="btn_xlarge btn" type="submit" id="submitButton">立即登录</button>
                    </div>
                </div>
                <div class="control_group">
                    <label class="control_label"></label>
                    <div class="controls">
                        <p class="lable-text">
                            还没有账号？&nbsp;&nbsp;立即
                            <a href="./reg.html" style="text-decoration:none;">免费注册</a>
                            <a href="./getpwd.html" style="text-decoration:none;">忘记密码</a>
                        </p>
                    </div>
                </div>
            </div>
        </form>
    </div>

    <script>
        function JqueryAjaxs(q, action) {
            var api = $.dialog({
                id: 'L360'
            });

            $.ajax({

                url: '/user/index.html&q=' + q + action,
                success: function(data) {
                    api.content(data);

                }

            });

        }
    </script>

</div>
<div class="footer clearfix">
    <div class="bottom">
        <dl class="box980 bottomNav">
            <dt><span><a href="#"><img src="themes/rongzi/longbao/images/icon_top.jpg" width="18" height="18" /> 返回顶部</a></span><a href="gsjj/index.html">关于我们</a>
                <a href="hetong/index.html">政策法规</a> <a href="contact/index.html">联系我们</a>
                <a href="gsjj/index.html">帮助中心</a><a href="tool_lixi/index.html">利息计算</a>

                <a href="admin/login.html" target="_blank">后台管理</a></dt>
            <dd>
                <div class="zxkf"> <span><a href="gsjj/index.html"><img src="themes/rongzi/longbao/images/index_37.jpg" width="113" height="28" /></a></span><br><br> <span style="font-family:'微软雅黑';font-size:20px; font-weight:bold; color:#fff"></span> <span>服务时间：9:00 - 17:00 （周一至周五）</span> </div>
                <div class="fright">
                    <!--  <img src="themes/rongzi/longbao/images/bottom_pic1.jpg" width="114" height="41">&nbsp;&nbsp; <img src="themes/rongzi/longbao/images/bottom_pic2.jpg" width="102" height="38">&nbsp;&nbsp; <img src="themes/rongzi/longbao/images/bottom_pic3.jpg" width="97" height="53">&nbsp;&nbsp;--></div>
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
                上海苏元投资管理有限公司版权所有 | <img src="themes/rongzi/longbao/images/beianbgs.png"> 沪ICP备16025989号-1</a>
        </div>
    </div>
</div>

<LINK rel=stylesheet type=text/css href="themes/rongzi/kefu/css/common.css">
<SCRIPT type=text/javascript src="themes/rongzi/kefu/js/kefu.js"></SCRIPT>

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
                    <A href="gsjj/index.html" style="FLOAT: left">
                        <IMG src="themes/rongzi/kefu/images/right_float_web.png" border="0px">
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