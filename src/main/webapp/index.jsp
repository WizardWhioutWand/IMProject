<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <META name="description" content="苏元投资 网络借贷系统">
    <META NAME="keywords" content="苏元投资,苏元投资,上海苏元投资管理有限公司,上海苏元投资管理有限公司,苏元,苏元,苏元财富,苏元财富,苏元借贷,苏元金融,网络借贷,苏元信贷,网络信贷,苏元理财,网络金融,苏元平台,网贷平台,苏元系统,网贷系统,suyuan touzi,suyuan,sytouzi,suyuan caifu,suyuancaifu">
    <title>苏元投资</title>
    <meta name="description" content="苏元投资" />
    <meta name="keywords" content="苏元投资" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/themes/rongzi/longbao/style.css" type="text/css" media="screen, projection" />
    <link rel="shortcut icon" type="image/x-icon" href="syico.ico" />
    <script src='${pageContext.request.contextPath}/themes/rongzi/longbao/js/jquery-1.4.2.min.js' type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/themes/rongzi/js/sub.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/themes/rongzi/js/yu.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/themes/rongzi/js/tb.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/themes/rongzi/js/tipswindown.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/themes/rongzi/js/lhgdialog.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/plugins/timepicker/WdatePicker.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/themes/rongzi/js/base.js" type="text/javascript"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/themes/rongzi/longbao/js/scrollNews.js"></script>
  <script type="text/javascript">
      function isLogin() {
          alert("请先登录");

          var user=$("#aaa").val();
          if (user==""){
              alert("请先登录");
          }

      }
  </script>
</head>

<body>
<div class="header clearfix">
    <div class="top">
        <div class="box980">
            <a href="tool_lixi/index.html"><img src="${pageContext.request.contextPath}/themes/rongzi/longbao/images/jsq.jpg" width="8" height="11" /> 利息计算器</a>
            <a href="gsjj/index.html">帮助中心</a>
            <a href="login.html">退出</a>
            <a href="code/message/index.html">站内信(14)</a>
            <a href="user/index.html">您好，${user.userName}</a>

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
            <a href=""><img src="${pageContext.request.contextPath}/themes/rongzi/longbao/images/sylogo.png" style="position: absolute;width:251px;height:75px;margin-top: 8px;"></img>
            </a>
            <div class="nav" style="width: 540px;">
                <ul>
                    <li id="cm1">
                        <a href="" class="on">首页</a>
                    </li>
                    <li id="cm2">
                        <a href="${pageContext.request.contextPath}/loan/getAllPassLoans" >我要投资</a>
                    </li>
                    <li id="cm3">
                        <a href="borrow/index.html">我要借款</a>
                    </li>
                    <li id="cm4">
                        <a href="user/index.html">我的账户</a>
                    </li>
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
            <div class="box980 cm1" style="">
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

            <div class="box980 cm4" style="display:none;">
                <a href="user/index.html">・ 账户中心</a>
                <a href="code/borrow/bid.html">・ 借出管理</a>
                <a href="code/borrow/publish.html">・ 借入管理</a>
                <a href="code/rating/basic.html">・ 个人设置</a>
            </div>

        </div>
    </div>
</div>
<div class="banner">
    <div class="top_view" style="height: 330px;">
        <div class="index_view" id="view_img">
            <ul>
                <li style="background:url(data/1.jpg) no-repeat center top">
                    <a target="_blank"></a>
                </li>
                <li style="background:url(data/2.jpg) no-repeat center top">
                    <a target="_blank"></a>
                </li>
                <li style="background:url(data/3.jpg) no-repeat center top">
                    <a target="_blank"></a>
                </li>
            </ul>
        </div>
        <script type="text/javascript">
            //启动定时器 5秒自动切换图片
            var s = new scrollNews("#view_img", "s", 7500, 0);
        </script>
    </div>
    <div class="gain-items">
        <div class="gain" id="userGain" style="z-index: 9; top: -290px; right: 0px; ">
            <div class="gain-cont usered">
                <p>
                <h2>欢迎开启您的投资理财！</h2></p>
                <p>您当前的登录账户是: <span class="light-org">${user.userName}</span></p>
                <p>当前可用余额：
                    <font color="#FFAA00">￥48600</font>
                </p>
                <p>最近待收金额：
                    <font color="#FFAA00">￥0.00</font>
                </p>
                <p>最近待收日期：
                    <font color="#FFAA00">-</font>
                </p>
                <p class="reg" style="margin-left: 42px;">
                    <a href="user/index.html">进入我的账户</a>
                </p>
            </div>
            <div class="opacity" style="opacity: 0.5; "></div>
        </div>
    </div>
</div>
<div class="banner-show"></div>
<div class="bodyer clearfix">

    <div class="statistics"><span><img src="${pageContext.request.contextPath}/themes/rongzi/longbao/images/Statistics.jpg" width="16" height="15" /> 网站数据统计:</span><span>放款总额：<em>14,500</em>元</span><span>投资已赚取收益：<em>6</em>元</span></div>

    <div>
        <ul>
            <a href="how_it_works/index.html">
                <li style="float:left;width:245px">
                    <img src="${pageContext.request.contextPath}/themes/rongzi/longbao/images/abv1.jpg" style="width:64px;height:64px;margin:10px;float:left;"></img>
                    <span style="position: absolute;color:red;font-size:16px;margin-top:10px;font-family:Microsoft Yahei;float:left;">新手入门</span>
                    <font style="position: absolute;margin-top:32px;font-size:11px;font-family:Microsoft Yahei;float:left;">三步轻松注册<br>坐享财富盛宴</font>
                </li>
            </a>
            <a href="invest/index.html">
                <li style="float:left;width:245px">
                    <img src="${pageContext.request.contextPath}/themes/rongzi/longbao/images/abv2.jpg" style="width:64px;height:64px;margin:10px;float:left;"></img>
                    <span style="position: absolute;color:red;font-size:16px;margin-top:10px;font-family:Microsoft Yahei;float:left;">我要投资</span>
                    <font style="position: absolute;margin-top:32px;font-size:11px;font-family:Microsoft Yahei;float:left;">稳健安全的投资之旅<br>从苏元投资启航</font>
                </li>
            </a>
            <a href="hetong/index.html">
                <li style="float:left;width:245px">
                    <img src="${pageContext.request.contextPath}/themes/rongzi/longbao/images/abv3.jpg" style="width:64px;height:64px;margin:10px;float:left;"></img>
                    <span style="position: absolute;color:red;font-size:16px;margin-top:10px;font-family:Microsoft Yahei;float:left;">保障措施</span>
                    <font style="position: absolute;margin-top:32px;font-size:11px;font-family:Microsoft Yahei;float:left;">第三方资金托管<br>360°全方位保障</font>
                </li>
            </a>
            <a href="">
                <li style="float:left;width:245px">
                    <img src="${pageContext.request.contextPath}/themes/rongzi/longbao/images/abv4.jpg" style="width:64px;height:64px;margin:10px;float:left;"></img>
                    <span style="position: absolute;color:red;font-size:16px;margin-top:10px;font-family:Microsoft Yahei;float:left;">我要推广</span>
                    <font style="position: absolute;margin-top:32px;font-size:11px;font-family:Microsoft Yahei;float:left;">好友赚钱你也赚钱<br>有分享就收获</font>
                </li>
            </a>
            <a href="gsjj/index.html">
                <li style="float:left;width:245px">
                    <img src="${pageContext.request.contextPath}/themes/rongzi/longbao/images/abv5.jpg" style="width:64px;height:64px;margin:10px;float:left;"></img>
                    <span style="position: absolute;color:red;font-size:16px;margin-top:19px;font-family:Microsoft Yahei;float:left;">关于我们</span>
                    <font style="position: absolute;margin-top:41px;font-size:11px;font-family:Microsoft Yahei;float:left;">了解我们</font>
                </li>
            </a>
            <a href="fxgk/index.html">
                <li style="float:left;width:245px">
                    <img src="${pageContext.request.contextPath}/themes/rongzi/longbao/images/abv6.jpg" style="width:64px;height:64px;margin:10px;float:left;"></img>
                    <span style="position: absolute;color:red;font-size:16px;margin-top:19px;font-family:Microsoft Yahei;float:left;">安全保障</span>
                    <font style="position: absolute;margin-top:41px;font-size:11px;font-family:Microsoft Yahei;float:left;">风险管控</font>
                </li>
            </a>
            <a href="gsjj/index.html">
                <li style="float:left;width:245px">
                    <img src="${pageContext.request.contextPath}/themes/rongzi/longbao/images/abv7.jpg" style="width:64px;height:64px;margin:10px;float:left;"></img>
                    <span style="position: absolute;color:red;font-size:16px;margin-top:19px;font-family:Microsoft Yahei;float:left;">帮助中心</span>
                    <font style="position: absolute;margin-top:41px;font-size:11px;font-family:Microsoft Yahei;float:left;">解决您所遇到的问题</font>
                </li>
            </a>

            <li style="float:left;width:245px">
                <img src="${pageContext.request.contextPath}/themes/rongzi/longbao/images/abv8.jpg" style="width:64px;height:64px;margin:10px;float:left;"></img>
                <span style="position: absolute;color:red;font-size:16px;margin-top:19px;font-family:Microsoft Yahei;float:left;">网站公告</span>
                <font style="position: absolute;margin-top:41px;font-size:11px;font-family:Microsoft Yahei;float:left;">
                </font>
            </li>

        </ul>
    </div>

    <dl class="index-title">
        <dt class="index-titleBg"><img src="${pageContext.request.contextPath}/themes/rongzi/longbao/images/icon_invest.png" align="absmiddle" width="20" height="25"> 所 有 项 目</dt>
        <dd>
            <a href="invest/index.html">查看更多</a>
        </dd>
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
            <li>
                <table width="100%" border="0">
                    <tbody>
                    <tr>
                        <td rowspan="3" width="100">
                            <div class="Recommend_mg2"><img src="${pageContext.request.contextPath}/data/images/avatar/noavatar_middle.gif" width="75" height="75"></div>
                        </td>
                        <td colspan="3">
                            <h5><a href="/invest/full_success/a20171115707.html" title="测试">测试</a> <img src="./themes/rongzi/images/xin.jpg"></h5></td>
                    </tr>
                    <tr>
                        <td width="210">发布者：<strong>user02</strong></td>
                        <td width="180">借款金额：<strong>￥10000.00</strong>元</td>
                        <td width="180">剩余时间： <span name="endtime">5天21时38分50秒</span> </td>
                        <td width="190">借款期限：12个月
                        </td>
                        <td rowspan="2">

                            <a href="${pageContext.request.contextPath}/invest/full_success/a20171115707.html">
                                <img src="${pageContext.request.contextPath}/themes/rongzi/images/list_091.jpg" width="78" height="33">
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td width="200">信用等级：<img src="${pageContext.request.contextPath}/data/images/credit/credit_hr.gif" title="14分"></td>
                        <td>年利率：<strong>0.20%</strong></td>
                        <td><span class="jdt"><i style="width: 0%;"></i></span> 0%</td>
                        <td>赎回方式： 到期还本还息</td>
                    </tr>
                    </tbody>
                </table>
            </li>
            <li>
                <table width="100%" border="0">
                    <tr>
                        <td rowspan="3" width="100">
                            <div class="Recommend_mg2"><img src="data/images/avatar/noavatar_middle.gif" width="75" height="75" /></div>
                        </td>
                        <td colspan="3">
                            <h5><a href="invest/full_success/a20171115707.html" title="100万元">100万元</a> <img src="themes/rongzi/images/xin.jpg"   /></h5></td>
                    </tr>
                    <tr>
                        <td width="210">发布者：<strong>user05</strong></td>
                        <td width="180">借款金额：<strong>￥3000.00</strong>元</td>
                        <td width="180">剩余时间： 还款中 </td>
                        <td width="190">借款期限：1天
                        </td>
                        <td rowspan="2">

                            <a href="invest/full_success/a20171115707.html">
                                <img src="themes/rongzi/images/list_09.jpg" width="78" height="33" />
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td width="200">信用等级：<img src='/data/images/credit/credit_hr.gif' title='0分'></td>
                        <td>年利率：<strong>1.00%</strong></td>
                        <td><span class="jdt"><i  style="width: 100%;"></i></span> 100%</td>
                        <td>赎回方式： 到期还本还息</td>
                    </tr>
                </table>
            </li>
            <li>
                <table width="100%" border="0">
                    <tr>
                        <td rowspan="3" width="100">
                            <div class="Recommend_mg2"><img src="data/images/avatar/noavatar_middle.gif" width="75" height="75" /></div>
                        </td>
                        <td colspan="3">
                            <h5><a href="invest/full_success/a20171115707.html" title="200">200</a> <img src="themes/rongzi/images/xin.jpg"   /></h5></td>
                    </tr>
                    <tr>
                        <td width="210">发布者：<strong>user00</strong></td>
                        <td width="180">借款金额：<strong>￥100.00</strong>元</td>
                        <td width="180">剩余时间： 还款中 </td>
                        <td width="190">借款期限：1天
                        </td>
                        <td rowspan="2">

                            <a href="invest/full_success/a20171115707.html">
                                <img src="themes/rongzi/images/list_09.jpg" width="78" height="33" />
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td width="200">信用等级：<img src='/data/images/credit/credit_hr.gif' title='7分'></td>
                        <td>年利率：<strong>1.50%</strong></td>
                        <td><span class="jdt"><i  style="width: 100%;"></i></span> 100%</td>
                        <td>赎回方式： 到期还本还息</td>
                    </tr>
                </table>
            </li>
            <li>
                <table width="100%" border="0">
                    <tr>
                        <td rowspan="3" width="100">
                            <div class="Recommend_mg2"><img src="data/images/avatar/noavatar_middle.gif" width="75" height="75" /></div>
                        </td>
                        <td colspan="3">
                            <h5><a href="invest/full_success/a20171115707.html" title="测试5">测试5</a> <img src="themes/rongzi/images/xin.jpg"   /></h5></td>
                    </tr>
                    <tr>
                        <td width="210">发布者：<strong>zuikc</strong></td>
                        <td width="180">借款金额：<strong>￥500.00</strong>元</td>
                        <td width="180">剩余时间： 还款中 </td>
                        <td width="190">借款期限：1天
                        </td>
                        <td rowspan="2">

                            <a href="invest/full_success/a20171115707.html">
                                <img src="themes/rongzi/images/list_09.jpg" width="78" height="33" />
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td width="200">信用等级：<img src='/data/images/credit/credit_hr.gif' title='12分'></td>
                        <td>年利率：<strong>12.00%</strong></td>
                        <td><span class="jdt"><i  style="width: 100%;"></i></span> 100%</td>
                        <td>赎回方式： 到期还本还息</td>
                    </tr>
                </table>
            </li>
        </ul>
    </div>
    <dl class="index-link box980">
        <dt>友情连接</dt>
        <dd>
            <ul>
                <ul>
                    <li style="width:auto">
                        <a href="http://www.allinpay.com/" target="_blank">通联支付</a>
                    </li>
                    <li style="width:auto">
                        <a href="http://www.icbc.com.cn/" target="_blank">工商银行</a>
                    </li>
                    <li style="width:auto">
                        <a href="http://www.abchina.com/" target="_blank">农业银行</a>
                    </li>
                    <li style="width:auto">
                        <a href="http://www.ccb.com/" target="_blank">建设银行</a>
                    </li>
                    <li style="width:auto">
                        <a href="http://www.boc.cn/" target="_blank">中国银行</a>
                    </li>
                    <li style="width:auto">
                        <a href="http://www.cmbchina.com/" target="_blank">招商银行</a>
                    </li>
                    <li style="width:auto">
                        <a href="http://www.bankcomm.com/" target="_blank">交通银行</a>
                    </li>
                    <li style="width:auto">
                        <a href="http://www.cmbc.com.cn/" target="_blank">民生银行</a>
                    </li>
                    <li style="width:auto">
                        <a href="http://bank.ecitic.com/" target="_blank">中信银行</a>
                    </li>
                    <li style="width:auto">
                        <a href="http://www.cib.com.cn/" target="_blank">兴业银行</a>
                    </li>
                    <li style="width:auto">
                        <a href="http://www.spdb.com.cn/" target="_blank">浦发银行</a>
                    </li>
                    <li style="width:auto">
                        <a href="https://ipcrs.pbccrc.org.cn/" target="_blank">征信中心</a>
                    </li>
                    <li style="width:auto">
                        <a href="https://www.tenpay.com/" target="_blank">财付通　</a>
                    </li>
                    <li style="width:auto">
                        <a href="https://my.alipay.com/" target="_blank">支付宝　</a>
                    </li>
                    <li style="width:auto">
                        <a href="http://www.ips.com/" target="_blank">环迅支付</a>
                    </li>
                    <li style="width:auto">
                        <a href="http://www.baofoo.com/" target="_blank">宝付支付</a>
                    </li>
                    <li style="width:auto">
                        <a href="http://bank.pingan.com/" target="_blank">平安银行</a>
                    </li>
                    <li style="width:auto">
                        <a href="http://www.cebbank.com/" target="_blank">光大银行</a>
                    </li>
                    <li style="width:auto">
                        <a href="http://www.bankofshanghai.com/" target="_blank">上海银行</a>
                    </li>
                    <li style="width:auto">
                        <a href="http://www.hxb.com.cn/" target="_blank">华夏银行</a>
                    </li>
                    <li style="width:auto">
                        <a href="http://www.cgbchina.com.cn/" target="_blank">广发银行</a>
                    </li>
                    <li style="width:auto">
                        <a href="http://www.psbc.com/" target="_blank">邮政储蓄</a>
                    </li>
                    <li style="width:auto">
                        <a href="http://www.xzqh.org/" target="_blank">行政区划</a>
                    </li>
                    <li style="width:auto">
                        <a href="http://www.sytouzi.com/" target="_blank">苏元投资</a>
                    </li>
                </ul>
            </ul>
        </dd>
    </dl>
</div>
<div class="footer clearfix">
    <div class="bottom">
        <dl class="box980 bottomNav">
            <dt><span><a href="#"><img src="${pageContext.request.contextPath}/themes/rongzi/longbao/images/icon_top.jpg" width="18" height="18" /> 返回顶部</a></span><a href="gsjj/index.html">关于我们</a>
                <a href="hetong/index.html">政策法规</a> <a href="contact/index.html">联系我们</a>
                <a href="gsjj/index.html">帮助中心</a><a href="tool_lixi/index.html">利息计算</a>

                <a href="${pageContext.request.contextPath}/admin/login.jsp">后台管理</a></dt>
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
                    <A href="gsjj/index.html" style="FLOAT: left">
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
</body>

</html>