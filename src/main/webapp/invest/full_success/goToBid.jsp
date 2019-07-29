<%--
  Created by IntelliJ IDEA.
  User: Albert
  Date: 2019/7/27
  Time: 14:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>我要投资 | 苏元投资</title>
    <meta name="description" content="苏元投资" />
    <meta name="keywords" content="苏元投资" />
    <link href="${pageContext.request.contextPath}/themes/rongzi/css/common.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/themes/rongzi/css/css.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/themes/rongzi/css/user.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/themes/rongzi/css/new.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/themes/rongzi/css/shop.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/themes/rongzi/css/tipswindown.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/themes/rongzi/css/myinfo.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/themes/rongzi/css/css_inpage.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/themes/rongzi/longbao/style.css" rel="stylesheet" type="text/css" media="screen, projection" />
    <link href="${pageContext.request.contextPath}/themes/rongzi/pic/css/css.css" type="text/css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/themes/rongzi/new/js/jquery.min.js" type="text/javascript"></script>


    <script src="${pageContext.request.contextPath}/themes/rongzi/js/sub.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/themes/rongzi/js/yu.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/themes/rongzi/js/tb.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/themes/rongzi/js/tipswindown.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/themes/rongzi/js/lhgdialog.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/plugins/timepicker/WdatePicker.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/themes/rongzi/js/base.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/plugins/editor/xheditor/xheditor-1.1.12-zh-cn.min.js" type="text/javascript"></script>
    <link rel="shortcut icon" type="image/x-icon" href="syico.ico" />
<script type="text/javascript">
    function go_to_bid(loanId,borrowerId,bidderId) {
        var bid_money =document.getElementById("bid_money").value;
       alert("loanId:"+loanId+"borrowerId:"+borrowerId+"bidderId:"+bidderId);
        if(bid_money==''){
            alert("投标金额不能为空。");
            return false;
        }
       $.ajax({
           url:"${pageContext.request.contextPath}/loan/bid",
           contentType:"application/json;charset=UTF-8",
           data:{"loanId":loanId,"borrowerId":borrowerId,"bidderId":bidderId,"bid_money":bid_money},
           dataType:"json",
           type:"get",
           success:function (data) {
               //服务器响应的数据
               var span=document.getElementById("bid_info_span");
                span.value=data.re;

                                    }
           }
       );
    }
</script>
</head>

<body>

<div class="container">

    <div class="header clearfix">
        <div class="top">
            <div class="box980">
                <a href="../../tool_lixi/index.html"><img src="${pageContext.request.contextPath}/themes/rongzi/longbao/images/jsq.jpg" width="8" height="11" /> 利息计算器</a>
                <a href="../../gsjj/index.html">帮助中心</a>
                <a href="${pageContext.request.contextPath}/login.jsp">退出</a>
                <a href="../../code/message/index.html">站内信(14)</a>
                <a href="../../user/index.html">您好，${user.userName}</a>
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
<div class="logo"><a href="../../"><img src="../../themes/rongzi/longbao/images/logo.jpg" width="219" height="64" /></a></div>-->
                <!--  -->
                <a href="../../"><img src="${pageContext.request.contextPath}/themes/rongzi/longbao/images/sylogo.png" style="position: absolute;width:251px;height:75px;margin-top: 8px;"></img>
                </a>
                <!-- <div style="position: absolute;font-size:45px;margin-top: 13px;margin-left: 110px;font-family:KaiTi;color:#847B7B;padding-right:5px">苏元投资</div> -->

                <!-- <div style="position: absolute;font-size:30px;margin-top: 15px;margin-left:170px;font-family:KaiTi;color:#847B7B">上海百封</div>
<div style="position: absolute;font-size:12px;margin-top: 55px;margin-left: 170px;">战　略　合　作　伙　伴</div>-->
                <div class="nav" style="width: 540px;">
                    <ul>
                        <li id="cm1">
                            <a href="../../">首页</a>
                        </li>
                        <li id="cm2">
                            <a href="../../invest/index.html" class="on">我要投资</a>
                        </li>
                        <li id="cm3">
                            <a href="../../borrow/index.html">我要借款</a>
                        </li>
                        <li id="cm4">
                            <a href="../../user/index.html">我的账户</a>
                        </li>
                        <!--<li><a href="../../aqbz/index.html">安全保障</a></li>-->
                        <li>
                            <a href="../../gsjj/index.html">帮助中心</a>
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
                    <a href="../../how_it_works/index.html">・ 新手上路</a>
                    <a href="../../fxgk/index.html">・ 风险管控</a>
                    <a href="../../fees/index.html">・ 费用说明</a>
                    <a href="../../hetong/index.html">・ 法律文本</a>
                </div>

                <div class="box980 cm2" style="">
                    <a href="../../full_check/index.html">・ 复审中的借款</a>
                    <a href="../../full_success/index.html">・ 成功的借款</a>
                    <a href="../../invest/index.html">・ 进行中的借款</a>
                </div>

                <div class="box980 cm3" style="display:none;">
                    <a href="../../borrow/index.html">・ 申请借款</a>
                    <a href="../../att_center/index.html">・ 借款认证</a>
                </div>

                <div class="box980 cm4" style="display:none;">
                    <a href="../../user/index.html">・ 账户中心</a>
                    <a href="../../code/borrow/bid.html">・ 借出管理</a>
                    <a href="../../code/borrow/publish.html">・ 借入管理</a>
                    <a href="../../code/rating/basic.html">・ 个人设置</a>
                </div>

            </div>
        </div>
    </div>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/themes/rongzi/new/borrow.css" type="text/css" media="screen, projection" />

    <script>
        $(function() {
            if($.browser.msie && $.browser.version <= 6) {
                $(".PopupLayer").css("position", "absolute");
            }
            $(".PopupLayer").css({
                "top": $(".PopupLayer").outerHeight() * -1 + "px",
                "opacity": 0
            }); //载入页面时将元素置于页面可见区域的顶部达到自上而下显示效果（PS：还有隐藏效果）
            function notice_show() //显示
            {
                $(".PopupLayer").css("display", "block");
                var browser_visible_region_height = document.documentElement.clientHeight; //获取浏览器可见区域高度
                var element_height = $(".PopupLayer").outerHeight(); //获取元素高度:height+paelement_heighting+margin
                //计算元素显示时的top值
                var element_show_top = (browser_visible_region_height - element_height) / 2;
                $(".PopupLayer").stop(true).animate({
                    top: element_show_top,
                    opacity: 1
                }, 1800);
            }

            function notice_hidden() //隐藏
            {
                $(".PopupLayer").css("display", "none");
                var element_height = $(".PopupLayer").outerHeight(); //获取元素高度:height+paelement_heighting+margin
                var ee = -element_height; //元素隐藏时的top值
                $(".PopupLayer").stop(true).animate({
                    top: ee,
                    opacity: 0
                }, 1000);
            }

            $("a.float_del").click(function() {
                var element_height = $(".PopupLayer").outerHeight(); //获取元素高度:height+paelement_heighting+margin
                var ee = -element_height; //元素隐藏时的top值
                $(".PopupLayer").animate({
                    opacity: 0
                }, 1000).animate({
                    top: ee
                }, 0);
            }) //点击关闭按钮隐藏

            $("a.btn").click(function() {
                $(".PopupLayer").animate({
                    top: $(document).height(),
                    opacity: 0
                }, 1000)
            })

            $("#open_borrow").click(function() {
                notice_show();
            }) //单击按钮触发显示

            //$("#close").click(function(){
            //	notice_hidden();
            //})//单击按钮触发隐藏

            function check_h() {
                var kk = $(".PopupLayer").outerHeight() * -1; //获取元素高度:height+paelement_heighting+margin
                var ww = $(document).height();
                var qq = parseInt($(".PopupLayer").css("top")); //获取元素当前的top值，String类型转换为number类型

                if(qq == kk || qq == ww) {
                    return;
                } else //弹出层自适应浏览器窗口大小。
                {
                    var browser_visible_region_height = document.documentElement.clientHeight; //获取浏览器可见区域高度
                    var element_height = $(".PopupLayer").outerHeight(); //获取元素高度:height+paelement_heighting+margin
                    //计算元素显示时的top值
                    var element_show_top = (browser_visible_region_height - element_height + 300) / 2;
                    $(".PopupLayer").stop(true).animate({
                        top: element_show_top
                    }, 1500);
                }
            }

            $(window).resize(function() {
                check_h();
            }) //自适应浏览器窗口大小

        })

        function add(obj1, flow_count_sx, balance) { //增加
            var flow_val = document.getElementById(obj1).value;
            var flow_val_h = Div_zheng(balance, 50);
            if(parseInt(flow_val_h) <= parseInt(flow_val)) {
                alert('您的余额不足，请充值！');
            } else {
                if(parseInt(flow_count_sx) - parseInt(flow_val) > 0) {

                    flow_val++;
                    document.getElementById('outcome_review').innerHTML = flow_val * 50 + "元";
                    document.getElementById(obj1).value = flow_val;
                    document.getElementById('money').value = flow_val * 50;
                }
            }

        }

        function less(obj2, balance) { //减少
            var flow_val = document.getElementById(obj2).value;

            flow_val--;
            if(flow_val < 1) {
                return false;
            }
            document.getElementById(obj2).value = flow_val;
            document.getElementById('outcome_review').innerHTML = flow_val * 50 + "元";
            document.getElementById('money').value = flow_val * 50;
        }

        function shouxie(obj3, zuida, balance) {
            var flow_val = obj3.value;
            var keyong = Div_zheng(balance, 50);
            if(parseInt(flow_val) > parseInt(zuida)) {
                flow_val = zuida;
            }

            if(parseInt(flow_val) > parseInt(keyong)) {
                flow_val = keyong;
            }

            if(flow_val > 0) {
                obj3.value = flow_val;
                document.getElementById('outcome_review').innerHTML = flow_val * 50 + "元";
                document.getElementById('money').value = flow_val * 50;
            } else {
                obj3.value = 1;

                document.getElementById('outcome_review').innerHTML = 50 + "元";
                document.getElementById('money').value = 50;
            }
        }

        function autoAll(obj3, balance, zuida) {
            var flow_val = Div_zheng(balance, 50);
            if(parseInt(flow_val) > parseInt(zuida)) {
                flow_val = zuida;
            }
            if(flow_val > 0) {
                document.getElementById(obj3).value = flow_val;
                document.getElementById('outcome_review').innerHTML = flow_val * 50 + "元";
                document.getElementById('money').value = flow_val * 50;
            } else {
                document.getElementById(obj3).value = 0;
                document.getElementById('outcome_review').innerHTML = 0 + "元";
                document.getElementById('money').value = 0;

            }
        }

        function Div_zheng(exp1, exp2) {
            var n1 = Math.round(exp1); //四舍五入
            var n2 = Math.round(exp2); //四舍五入

            var rslt = n1 / n2; //除

            if(rslt >= 0) {
                rslt = Math.floor(rslt); //返回小于等于原rslt的最大整数。
            } else {
                rslt = Math.ceil(rslt); //返回大于等于原rslt的最小整数。
            }

            return rslt;
        }
    </script>

    <script>
        function check() {
            var money = $("#money").val();
            var Second_limit_money = $("#Second_limit_money").val();
            if(typeof($("#isDXB")) == 'object') {
                var isDXB = $("#isDXB").val();
                if(isDXB == 1) {
                    var dxbPWD = $("#dxbPWD").val();
                    if(dxbPWD == "") {
                        alert("该标为定向标,请填写定向标密码！");
                        return false;
                    }
                }
            }

            if(Second_limit_money > 0) {
                if(money - Second_limit_money > 0) {
                    alert("该标的最高投资额为" + Second_limit_money + "元,您的投标超过最高投资额");
                    return false;
                }
            }

            if(money < 50) {
                alert("投资金额必须大于50元");
                return false;
            }

        }

        function touzijine(touzijin) {
            if(touzijin == '') {
                touzijin = 0;
            }
            document.getElementById('outcome_review').innerHTML = touzijin + "元";
        }

        function num_only(field) {
            var result = new String();
            var numbers = "0123456789";
            var chars = field.value.split(""); // create array
            for(i = 0; i < chars.length; i++) {
                if(numbers.indexOf(chars[i]) != -1) result += chars[i];
            }
            if(field.value != result) field.value = result;
        }
    </script>

    <div class="PopupLayer" style="display:none; z-index:9999">
        <div class="h_pull">
            <h1>确认投标</h1>
            <a title="关闭" class="float_del">关闭</a>
        </div>
        <div class="w_pull">
            <div class="popupmenu_inner">
                <form action="/index.phpuser/index.html&q=code/borrow/tender" method="post" onsubmit="return check()">
                    <p class="t_pull" style="margin:0px; padding:0px; border:0px;"><span>请填写并确认投标</span></p>
                    <div class="m_alert in_answer new_in_answer">
                        <table>
                            <tr>
                                <td colspan="2"><span class="sub_answer">可用余额：</span><span class="sub_color">${user.money}元</span>
                                    <a class="sub_recharge search_btn" href="../code/account/recharge_new.html">我要充值</a>
                                </td>
                            </tr>
                            <tr>
                                <td><span class="sub_answer">年化利率：</span><span class="sub_color">${user_loan_info.rate}</span></td>
                                <td><span class="sub_answer">回购期限：</span><span class="sub_color">12</font>个月
                            	</span></td>
                            </tr>

                            <tr>
                                <td><span class="sub_answer">投标进度：</span><span class="sub_color">0%</span></td>

                                <td><span class="sub_answer">剩余金额：</span><span class="sub_color">${user_loan_info.amount}</span></td>

                            </tr>
                            <tr>
                                <td><span class="sub_answer">投资金额：</span><span class="sub_color" id="outcome_review">0元</span></td>
                                <td><span class="sub_answer">还款方式：</span><span class="sub_color">${user_loan_info.modeOfRepayment}</span></td>
                            </tr>

                        </table>

                        <p><span class="sub_answer">投标金额：</span><input class="t_alert" type="text" name="money" id="bid_money" value="" onblur="touzijine(this.value);" autocomplete="off" /> 元 <span style="margin-left:8px;color:#888">金额大于等于50元</span></p>

                        <p>
                            <span class="sub_answer">交易密码：</span><input class="t_alert" type="password" name="pay_password" value="" autocomplete="off" /><span style="margin-left:8px;color:#888">交易密码不能为空</span>

                        </p>

                        <input type="hidden" name="Second_limit_money" id="Second_limit_money" value="0" />
                        <input type="hidden" name="borrow_nid" value="20171115707">
                        <img src="${pageContext.request.contextPath}/?plugins&q=imgcode" id="valicode" alt="点击刷新" title="点击刷新" onClick="this.src='/?plugins&q=imgcode&t=' + Math.random();" style="cursor:pointer; vertical-align:middle;" /><input type="text" name="valicode" tabindex="3" style="width:50px;margin-left:5px;  border:#BFBFBF solid 1px; height:22px;  line-height:22px;" /> 若投标失败，请点击刷新验证码。

                        <input class="al_btn s_btn"  type="button" value="投标" onclick="go_to_bid(${user_loan_info.loanId},${user_loan_info.userId},${user.userId});"/>
                                  <span id="bid_info_span"></span>
                        <p class="sub_notice">注意：点击按钮表示您将确认投标金额并同意支付！</p>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script>
        function goUrl(x) {
            alert("你还未是投资者，请先成为投资者，才可进行投标。");
            window.location.href = x;
        }

        function goGroupUrl(x) {
            alert("此标只允许圈内人参与投标，请先加入圈子。");
            window.location.href = x;
        }

        function goVipUrl(x) {
            alert("担保标或快借标须申请Vip才可以进行投标。");
            window.location.href = x;
        }
    </script>

    <div class="bodyer clearfix">
        <div class="Detailed form-container box1000">
            <div class="Dinform">
                <div class="Dinform_img"><img width="200" style="width:200px; height:200px;border:1px solid #E7E7E7;" height="200" src="${pageContext.request.contextPath}/data/images/avatar/noavatar_middle.gif" /><br />
                    <ul class="xiao_g">
                        <li><img src="${pageContext.request.contextPath}/themes/rongzi/images/mt_i1.gif" />
                            <a href="../../user/index.html&q=code/message/sent&receive=zuikc">发送消息</a>
                        </li>
                        <!--<li><img src="../../themes/rongzi/images/mt_i2.gif" /><a href="../../user/index.html&q=code/user/users_info_privacy/"  >加为好友</a></li>-->
                        <li><img src="${pageContext.request.contextPath}/themes/rongzi/images/mt_i3.gif" />
                            <a href="javascript:void(0)" onclick='tipsWindown("举报此人","url:get?/user/index.html&q=code/users/addrebut&username=zuikc",400,230,"true","","true","text");'>举报此人</a>
                        </li>
                        <li><img src="${pageContext.request.contextPath}/themes/rongzi/images/mt_i4.png" />
                            <a href="#" onclick="javascript:if(confirm('你确定要将此标加入我关注的标？')) location.href='/user/index.html&q=code/borrow/add_care&code=borrow&article_id=20171115707'" data-nid="20171115707">关注此标</a>
                        </li>
                    </ul>
                </div>
                <div class="Dinform_right">
                    <h3>${user_loan_info.userName}userId:${user_loan_info.userId}LoanId:${user_loan_info.loanId}<img src="${pageContext.request.contextPath}/themes/rongzi/images/xin.jpg"   /></h3>
                    <p><strong>借款金额：</strong><b>${user_loan_info.amount}</b>元　　　年利率：<b>${user_loan_info.rate}</b> 　　　借款期限：<b>${user_loan_info.deadline}</b>个月
                    </p>
                    <p><strong>还款方式：</strong>${user_loan_info.modeOfRepayment}
                        </b>
                    </p>

                    <p><strong>剩余时间：</strong><b><span id="end_time">514472</span></b> 　　借款对象：<b>${user_loan_info.borrower}</b></p>

                    <!-- <p><strong>状&nbsp;&nbsp;&nbsp;　态：</strong>流转中</p>-->

                    <p><strong>投标进度：</strong><span class="loading"><em style="width:0%"></em></span>0%　共0笔投资</p>

                    <p><strong>可投金额：</strong><b>${user_loan_info.bid_limit}</b>元</p>

                    <!-- 以下之前的，与固定投资者无关的备份 -->
                    <!-- <p style="margin-top:10px;">
                                                                                                                                                                                                <a href="javascript:void(0)" id="open_borrow">
                                                                        <img src="../../themes/rongzi/images/tender_now.gif"/></a>
                                                                                                                                                                       </p> -->
                    <!-- 以上之前的，与固定投资者无关的备份 -->

                    <!-- 以下是与固定投资者有关的修改 -->
                    <p style="margin-top:10px;">
                        <!-- 马上投标 -->
                        <a href="javascript:void(0)" id="open_borrow">
                            <img src="${pageContext.request.contextPath}/themes/rongzi/images/tender_now.gif" /></a>
                    </p>
                    <!-- 以上是与固定投资者有关的修改 -->
                </div>
            </div>
            <dl class="Dinform xq">
                <dt><h3>借款详情</h3></dt>
                <dd> 借款描述:</dd>
            </dl>
            <dl class="Detailist xxk">

                <script type="text/javascript">
                    function tab_muen_list(id) {
                        if(id == 1) {
                            document.getElementById("tab_list_1").className = "on";
                            document.getElementById("tab_list_2").className = "";
                            document.getElementById("menu_list_2").style.display = "none";
                            document.getElementById("tab_list_3").className = "";
                            document.getElementById("menu_list_3").style.display = "none";
                            document.getElementById("menu_list_1").style.display = "block";
                        } else if(id == 2) {

                            document.getElementById("tab_list_2").className = "on";
                            document.getElementById("tab_list_1").className = "";
                            document.getElementById("menu_list_1").style.display = "none";
                            document.getElementById("tab_list_3").className = "";
                            document.getElementById("menu_list_3").style.display = "none";
                            document.getElementById("menu_list_2").style.display = "block";
                        } else if(id == 3) {

                            document.getElementById("tab_list_3").className = "on";
                            document.getElementById("tab_list_1").className = "";
                            document.getElementById("menu_list_1").style.display = "none";
                            document.getElementById("tab_list_2").className = "";
                            document.getElementById("menu_list_2").style.display = "none";
                            document.getElementById("menu_list_3").style.display = "block";
                        }
                    }
                </script>

                <dt>
                    <ul>
                        <li><a href="#" class="on"  onmousemove="tab_muen_list('1');" id="tab_list_1">借款人信息</a></li>
                        <li><a href="#"   onmousemove="tab_muen_list('2');" id="tab_list_2">授证信息</a></li>
                        <li><a href="#"  onmousemove="tab_muen_list('3');" id="tab_list_3">风控介绍</a></li>
                    </ul>
                </dt>
                <dd id="menu_list_3" style="display:none">

                    <style>
                        .main_box {
                            border: #e5e5e5 solid 1px
                        }

                        .main_box .con {
                            padding: 20px 10px;
                            line-height: 20px;
                        }

                        .title_bor a {
                            float: left;
                            line-height: 38px;
                            background: url(/themes/rongzi/huaxin/images/title_bor_a.gif) no-repeat;
                            width: 104px;
                            display: inline-block;
                            text-align: center;
                            color: #6d6d6d;
                            font-size: 16px;
                            text-decoration: none;
                            font-family: Microsoft YaHei
                        }

                        .title_bor a.on {
                            background: url(${pageContext.request.contextPath}/themes/rongzi/huaxin/images/title_bor_a_on.gif) no-repeat
                        }

                        .title_bor span {
                            float: right;
                            padding-right: 10px
                        }

                        .title_bor span a {
                            line-height: 38px;
                            font-family: "宋体";
                            font-size: 12px;
                            background: none;
                            padding-right: 10px;
                            width: auto
                        }

                        .title_bor {
                            background: url(${pageContext.request.contextPath}/themes/rongzi/huaxin/images/title_bor_bg.gif) repeat-x;
                            border-bottom: #cacaca solid 1px;
                            height: 38px;
                            line-height: 38px;
                        }
                    </style>
                    <div class="main_box t20">
                        <div class="title_bor">
                            <a class="on">风控介绍</a>
                        </div>
                        <div>
                            <div class="con">内容</div>
                        </div>
                    </div>
                    <div class="main_box t20">
                        <div class="title_bor">
                            <a class="on">商业概述</a>
                        </div>
                        <div>
                            <div class="con">内容</div>
                        </div>
                    </div>
                    <div class="main_box t20">
                        <div class="title_bor">
                            <a class="on">资产情况</a>
                        </div>
                        <div>
                            <div class="con">内容</div>
                        </div>
                    </div>
                    <div class="main_box t20">
                        <div class="title_bor">
                            <a class="on">资金用途</a>
                        </div>
                        <div>
                            <div class="con">内容</div>
                        </div>
                    </div>
                    <div class="main_box t20">
                        <div class="title_bor">
                            <a class="on">风险控制措施</a>
                        </div>
                        <div>
                            <div class="con">内容</div>
                        </div>
                    </div>
                </dd>
                <dd id="menu_list_2" style="display:none">

                    <div id=preview>
                        <div class=jqzoom id=spec-n1>

                            <a href="../../data/upfiles/images/2017-01/04/10_attestations_album_148351769140.jpg" target="_blank">
                                <IMG height=400 src="${pageContext.request.contextPath}/data/upfiles/images/2017-01/04/10_attestations_album_148351769140.jpg" jqimg="/data/upfiles/images/2017-01/04/10_attestations_album_148351769140.jpg" width=550>
                            </a>

                        </div>
                        <div id=spec-n5>
                            <div class=control id=spec-left>
                                <img src="../../themes/rongzi/pic/images/left.gif" />
                            </div>
                            <div id=spec-list>
                                <ul class=list-h>
                                    <li><img src="${pageContext.request.contextPath}/data/upfiles/images/2017-01/04/10_attestations_album_148351769140.jpg"></li>

                                </ul>
                            </div>
                            <div class=control id=spec-right>
                                <img src="${pageContext.request.contextPath}/themes/rongzi/pic/images/right.gif" />
                            </div>

                        </div>
                    </div>

                    <SCRIPT type=text/javascript>
                        var li_length = $(".list-h li").length;
                        $("#spec-left").live("click", function() {
                            var l = parseInt($(".list-h").css("left"));
                            if(l != 0) {
                                $("#spec-list ul:not(:animated)").animate({
                                    "left": l + 87 + "px"
                                }, 500);
                            }
                        });
                        $("#spec-right").live("click", function() {
                            var l = parseInt($(".list-h").css("left"));
                            var nums = parseInt(li_length / 4);
                            lim_left = 0 - 87 * nums;
                            if(l > lim_left) {
                                $(".list-h:not(:animated)").animate({
                                    "left": l - 87 + "px"
                                }, 500);
                            }
                        })
                        $(".list-h li").live("mouseover", function() {
                            $(".list-h li img").removeClass("hover");
                            $(this).children("img").addClass("hover");
                            var img_src = $(this).children("img").attr("src");
                            $(".jqzoom img").attr("src", img_src);
                            $(".jqzoom a").attr("href", img_src);
                        });

                        $(".j-camNavC1 a").live("click", function() {
                            var num = $(".j-camNavC1 a").index($(this));
                            $(".j-camNavC1 a").removeClass("on");
                            $(this).addClass("on");
                            $("#man_box .us_r_bor3").css({
                                "display": "none"
                            });
                            $("#man_box .us_r_bor3").eq(num).css({
                                "display": "block"
                            });
                        })
                    </SCRIPT>

                </dd>
                <dd id="menu_list_1">
                    <div class="Detailist_left">
                        <div class="dlt1">
                            <p><b>zuikc</b> 普通会员&nbsp;
                                <span style="color:#0000ff;">申请VIP</span>
                            </p>
                            <p><img alt="未通过实名认证" src="${pageContext.request.contextPath}/themes/rongzi/images/rz2_1.jpg" /> <img alt="未通过学历认证" src="../../themes/rongzi/images/rz3_1.jpg" /> <img alt="未通过手机认证" src="../../themes/rongzi/images/rz4_1.jpg" /> <img alt="未通过视频认证" src="../../themes/rongzi/images/rz5_1.jpg" /> </p>
                        </div>
                        <div class="dlt2">
                            <div class="dlt2_left">发布借款:7次<br/>借款成功:7次<br />还清笔数:7次<br />逾期还款:0期<br />严重逾期:0期</div>
                            <div class="dlt2_right">借入本金:100.00元<br/>待 还 款:0.00元<br/>逾期金额:0元<br/>借出本金:6500.00元 <br/>待收本息:0元</div>
                        </div>

                        <div class="dlt3">
                            <div class="dlt2_left">已收利息:0元<br/>投资成功:28次</div>
                            <div class="dlt2_right">借款总额:0.00元<br/>预计总利息:0元
                                <!--					信用额度:-199元<br />
            可用额度:-298元
            --></div>
                        </div>

                    </div>
                    <div class="Detailist_right">
                        <table width="100%" border="0">
                            <tr>
                                <td><strong>公司名称：</strong>未填 </td>
                                <td><strong>执照号：</strong>未填 </td>

                            </tr>
                            <tr>
                                <td><strong>税务号(地税)：</strong>未填 </td>
                                <td><strong>地址：</strong>未填 </td>

                            </tr>
                            <tr>

                                <td><strong>行业：</strong>未填 </td>
                                <td><strong>人员规模：</strong>未填 </td>

                            </tr>
                            <tr>

                                <td><strong>成立时间：</strong>未填 </td>
                                <td><strong></strong></td>

                            </tr>
                        </table>

                </dd>
            </dl>
            <dl class="Dinform tb">
                <dt><h3>投标记录</h3></dt>
                <dd>
                    <ul>
                        <li>
                            <table width="100%" border="0">
                                <tr style="background-color:#f3f3f3">
                                    <td> <strong>投标人 </strong></td>
                                    <td> <strong>当前年利率 </strong></td>
                                    <td> <strong>投标金额</strong> </td>
                                    <td> <strong>有效金额</strong> </td>
                                    <td> <strong>投标状态</strong> </td>
                                    <td> <strong>投标时间</strong> </td>

                                </tr>
                                <tr>
                                    <td colspan="6">
                                        <div class="tender_c_page">共 0 条记录 <span class="">上一页</span> <span class="">下一页</span> 第
                                            <select id="PB_Page_Select" onChange="window.location.href = '/invest/full_success/a20171115707.html&page='+this.value;"></select>页</div>
                                    </td>
                                </tr>
                            </table>
                        </li>
                    </ul>
                </dd>
            </dl>
        </div>

    </div>

    <div class="cle"></div>

    <script type="text/javascript">
        var CID = "end_time";
        if(window.CID != null) {
            var iTime = document.getElementById(CID).innerHTML;
            var Account;
            RemainTime();
        }

        function RemainTime() {
            var iDay, iHour, iMinute, iSecond;
            var sDay = "",
                sTime = "";
            if(iTime >= 0) {
                iDay = parseInt(iTime / 24 / 3600);
                iHour = parseInt((iTime / 3600) % 24);
                iMinute = parseInt((iTime / 60) % 60);
                iSecond = parseInt(iTime % 60);

                if(iDay > 0) {
                    sDay = iDay + "天";
                }
                sTime = sDay + iHour + "时" + iMinute + "分" + iSecond + "秒";

                if(iTime == 0) {
                    clearTimeout(Account);
                    sTime = "<span style='color:green'>时间到了！</span>";
                } else {
                    Account = setTimeout("RemainTime()", 1000);
                }
                iTime = iTime - 1;
            } else {
                // sTime="<span style='color:red'>此标已过期！</span>";
                sTime = "<span style='color:red'>过期或复审中</span>";
            }
            document.getElementById(CID).innerHTML = sTime;
        }
    </script>

<%--    <script>--%>
<%--        deayou.use("borrow", function(e) {--%>
<%--            e.detail();--%>
<%--        });--%>
<%--    </script>--%>
    <div class="footer clearfix">
        <div class="bottom">
            <dl class="box980 bottomNav">
                <dt><span><a href="#"><img src="${pageContext.request.contextPath}/themes/rongzi/longbao/images/icon_top.jpg" width="18" height="18" /> 返回顶部</a></span><a href="../../gsjj/index.html">关于我们</a>
                    <a href="../../hetong/index.html">政策法规</a> <a href="../../contact/index.html">联系我们</a>
                    <a href="../../gsjj/index.html">帮助中心</a><a href="../../tool_lixi/index.html">利息计算</a>

                    <a href="${pageContext.request.contextPath}/admin/login.jsp" target="_blank">后台管理</a></dt>
                <dd>
                    <div class="zxkf"> <span><a href="../../gsjj/index.html"><img src="${pageContext.request.contextPath}/themes/rongzi/longbao/images/index_37.jpg" width="113" height="28" /></a></span><br><br> <span style="font-family:'微软雅黑';font-size:20px; font-weight:bold; color:#fff"></span> <span>服务时间：9:00 - 17:00 （周一至周五）</span> </div>
                    <div class="fright">
                        <!--  <img src="../../themes/rongzi/longbao/images/bottom_pic1.jpg" width="114" height="41">&nbsp;&nbsp; <img src="../../themes/rongzi/longbao/images/bottom_pic2.jpg" width="102" height="38">&nbsp;&nbsp; <img src="../../themes/rongzi/longbao/images/bottom_pic3.jpg" width="97" height="53">&nbsp;&nbsp;--></div>
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
                    上海苏元投资管理有限公司版权所有 | <img src="${pageContext.request.contextPath}/themes/rongzi/longbao/images/beianbgs.png"> 沪ICP备16025989号-1</a>
            </div>
        </div>
    </div>

    <LINK rel=stylesheet type=text/css href="${pageContext.request.contextPath}/themes/rongzi/kefu/css/common.css">
    <SCRIPT type=text/javascript src="${pageContext.request.contextPath}/themes/rongzi/kefu/js/kefu.js"></SCRIPT>

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
                        <A href="../../gsjj/index.html" style="FLOAT: left">
                            <IMG src="${pageContext.request.contextPath}/themes/rongzi/kefu/images/right_float_web.png" border="0px">
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
</div>
</body>

</html>
