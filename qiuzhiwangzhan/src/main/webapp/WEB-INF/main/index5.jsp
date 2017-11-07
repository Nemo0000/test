<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script id="allmobilize" charset="utf-8" src="style1/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld"  />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>某求职网首页</title>


<script type="text/javascript">
var ctx = "h";
console.log(1);
</script>

<link rel="Shortcut Icon" href="h/images/favicon.ico">
<link rel="stylesheet" type="text/css" href="style1/css/style.css"/>
<link rel="stylesheet" type="text/css" href="style1/css/external.min.css"/>
<link rel="stylesheet" type="text/css" href="style1/css/popup.css"/>
<link rel="stylesheet" type="text/css" href="style1/tyle.css"/>
<script src="style1/js/jquery.1.10.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="style1/js/jquery.lib.min.js"></script>
<script src="style1/js/ajaxfileupload.js" type="text/javascript"></script>
<script type="text/javascript" src="style1/js/additional-methods.js"></script>

<script type="text/javascript">
var youdao_conv_id = 271546; 
</script> 
<script type="text/javascript" src="style1/js/conv.js"></script>
<style type="text/css">
li:nth-child(even) {
	background-color: #fafafa;
}
#username{height:32px; line-height:56px;}
</style>
</head>
<body>
<div id="body">
	<div id="header">
    	<div class="wrapper">
    		<a href="index.html" class="logo">
    			<img src="style1/images/logo.png" width="229" height="43" alt="拉勾招聘-专注互联网招聘" />
    		</a>
    		
    		<ul id="navheader" class="reset">
	<li><a onclick="location.href='index5.do';">首页</a></li>
	
	<c:if test="${!empty loginOper}">
		<li><a href="backjob/mycome.jsp">我的公司首页</a></li>
		<li class="current"><a rel="nofollow" onclick="location.href='toIndex6.do';">发布职位</a></li>
	</c:if>
	<c:if test="${!empty loginSysuser}"><li><a rel="nofollow" onclick="location.href='toxiu3.do';">修改密码</a></li></c:if>
	
</ul>
<%-- <c:if test="${empty loginOper and empty loginSysuser}">
		 <ul class="loginTop">
              <li><a href="user/login.jsp" rel="nofollow">登录</a></li> 
              <li>|</li>
              <li><a href="user/register.jsp" rel="nofollow">注册</a></li>
            </ul>
	</c:if> --%>
<%-- <c:if test="${!empty loginOper or !empty loginSysuser}">
<dl class="collapsible_menu">
	<dt>
			<span>${loginOper.OUsername }${loginSysuser.SUsername }&nbsp;</span> 
			<span class="red dn"
			id="noticeDot-1"></span> <i></i>
	</dt>
	<c:if test="${!empty loginOper}">
		<dd class="btm" style="display: none;"><a href="backjob/mycome.jsp">我的公司主页</a></dd>
		<dd style="display: none;"><a href="selectFiled">发布求职信息</a></dd>
	</c:if>
	<c:if test="${!empty loginSysuser}">
		<dd style="display: none;"><a href="admin/adminIndex.jsp">求职通管理系统</a></dd>
	</c:if>
	<dd class="logout" style="display: none;"><a rel="注销" href="logOut">退出</a></dd>
</dl>
</c:if> --%>
	<div style="font-size:12px;line-height:31.5px"><span>欢迎你，</span></span><span>${Ent3 }</span></div>

<!--  -->
                                </div>
    </div>
	<!-- end #header -->
    <div id="container">
        				
		
		
        <div class="content">	
	        			<div id="search_box">
		<form action="tocha.do" method="post">
        <ul id="searchType">
        	        	<li data-searchtype="1" class="type_selected">简历</li>
        	        </ul>
        <div class="searchtype_arrow"></div>
        <input type="text" id="search_input" placeholder="请输入名字" name="comName"  tabindex="1" value="${param.comName }"  />
            <input type="submit" id="search_button" value="搜索" onclick="location.href='tocha01.do';"/>
				
    	</form>
</div>
<style>
.ui-autocomplete{width:488px;background:#fafafa !important;position: relative;z-index:10;border: 2px solid #91cebe;}
.ui-autocomplete-category{font-size:16px;color:#999;width:50px;position: absolute;z-index:11; right: 0px;/*top: 6px; */text-align:center;border-top: 1px dashed #e5e5e5;padding:5px 0;}
.ui-menu-item{ *width:439px;vertical-align: middle;position: relative;margin: 0px;margin-right: 50px !important;background:#fff;border-right: 1px dashed #ededed;}
.ui-menu-item a{display:block;overflow:hidden;}
</style>
<script type="text/javascript" src="style1/js/search.min.js"></script>
<dl class="hotSearch">
	<dt>热门搜索：</dt>
	<c:forEach items="${jobNames}" var="name3" begin="0" end="5">
	<dd><a href="selectJobIofosByJobIndex?jobName.jnid=${name3.jnid}"><c:out value="${name3.jnname}"></c:out></a></dd>
	</c:forEach>
</dl>			
			<div id="home_banner">
	            <ul class="banner_bg">
	            		                <li  class="banner_bg_1 current" >
	                    <a href="h/subject/s_buyfundation.html?utm_source=DH__lagou&utm_medium=banner&utm_campaign=haomai" target="_blank"><img src="style1/images/d05a2cc6e6c94bdd80e074eb05e37ebd.jpg" width="612" height="160" alt="好买基金——来了就给100万" /></a>
	                </li>
	                	                <li  class="banner_bg_2" >
	                    <a href="h/subject/s_worldcup.html?utm_source=DH__lagou&utm_medium=home&utm_campaign=wc" target="_blank"><img src="style1/images/c9d8a0756d1442caa328adcf28a38857.jpg" width="612" height="160" alt="世界杯放假看球，老板我也要！" /></a>
	                </li>
	                	                <li  class="banner_bg_3" >
	                    <a href="h/subject/s_xiamen.html?utm_source=DH__lagou&utm_medium=home&utm_campaign=xiamen" target="_blank"><img src="style1/images/d03110162390422bb97cebc7fd2ab586.jpg" width="612" height="160" alt="出北京记——第一站厦门" /></a>
	                </li>
	                	            </ul>
	            <div class="banner_control">
	                <em></em> 
	                <ul class="thumbs">
	                		                    <li  class="thumbs_1 current" >
	                        <i></i>
	                        <img src="style1/images/4469b1b83b1f46c7adec255c4b1e4802.jpg" width="113" height="42" />
	                    </li>
	                    	                    <li  class="thumbs_2" >
	                        <i></i>
	                        <img src="style1/images/381b343557774270a508206b3a725f39.jpg" width="113" height="42" />
	                    </li>
	                    	                    <li  class="thumbs_3" >
	                        <i></i>
	                        <img src="style1/images/354d445c5fd84f1990b91eb559677eb5.jpg" width="113" height="42" />
	                    </li>
	                    	                </ul>
	            </div>
	        </div><!--/#main_banner-->
			
        	<ul id="da-thumbs" class="da-thumbs">
	        		        		<li >
	                    <a href="https://www.lenovo.com.cn/" target="_blank">
	                        <img src="style1/images/a254b11ecead45bda166afa8aaa9c8bc.jpg" width="113" height="113" alt="联想" />
	                        <div class="hot_info">
	                        	<h2 title="联想">联想</h2>
	                            <em></em>
	                            <p title="世界因联想更美好">
	                            	世界因联想更美好
	                            </p>
	                        </div>
	                    </a>
	                </li>
                	        		<li >
	                    <a href="http://www.61.com/" target="_blank">
	                        <img src="style1/images/c75654bc2ab141df8218983cfe5c89f9.jpg" width="113" height="113" alt="淘米" />
	                        <div class="hot_info">
	                        	<h2 title="淘米">淘米</h2>
	                            <em></em>
	                            <p title="将心注入 追求极致">
	                            	将心注入 追求极致
	                            </p>
	                        </div>
	                    </a>
	                </li>
                	        		<li >
	                    <a href="http://www.youku.com/" target="_blank">
	                        <img src="style1/images/2bba2b71d0b0443eaea1774f7ee17c9f.png" width="113" height="113" alt="优酷土豆" />
	                        <div class="hot_info">
	                        	<h2 title="优酷土豆">优酷土豆</h2>
	                            <em></em>
	                            <p title="专注于视频领域，是中国网络视频行业领军企业">
	                            	专注于视频领域，是中国网络视频行业领军企业
	                            </p>
	                        </div>
	                    </a>
	                </li>
                	        		<li >
	                    <a href="https://www.thoughtworks.com/" target="_blank">
	                        <img src="style1/images/f4822a445a8b495ebad81fcfad3e40e2.jpg" width="113" height="113" alt="思特沃克" />
	                        <div class="hot_info">
	                        	<h2 title="思特沃克">思特沃克</h2>
	                            <em></em>
	                            <p title="一家全球信息技术服务公司">
	                            	一家全球信息技术服务公司
	                            </p>
	                        </div>
	                    </a>
	                </li>
                	        		<li >
	                    <a href="http://www.qitmall.com/" target="_blank">
	                        <img src="style1/images/5caf8f9631114bf990f87bb11360653e.png" width="113" height="113" alt="奇猫" />
	                        <div class="hot_info">
	                        	<h2 title="奇猫">奇猫</h2>
	                            <em></em>
	                            <p title="专注于移动互联网、互联网产品研发">
	                            	专注于移动互联网、互联网产品研发
	                            </p>
	                        </div>
	                    </a>
	                </li>
                	        		<li  class="last" >
	                    <a href="https://www.duitang.com/" target="_blank">
	                        <img src="style1/images/c0052c69ef4546c3b7d08366d0744974.jpg" width="113" height="113" alt="堆糖网" />
	                        <div class="hot_info">
	                        	<h2 title="堆糖网">堆糖网</h2>
	                            <em></em>
	                            <p title="分享收集生活中的美好，遇见世界上的另外一个你">
	                            	分享收集生活中的美好，遇见世界上的另外一个你
	                            </p>
	                        </div>
	                    </a>
	                </li>
                            </ul>
                          
            <div class="clear"></div>
			<div id="linkbox">
			    <dl> 
			        <dt>友情链接</dt>
			        <dd>
			          		<a href="http://www.shichangbu.com/" target="_blank" >市场部网</a><span>|</span>
			          		<a href="http://www.meitu.com/" target="_blank" >美图公司</a><span>|</span>
			          		<a href="https://www.teambition.com/" target="_blank" >Teambition</a>
			          		<a href="http://oupeng.com/" target="_blank" >欧朋浏览器</a><span>|</span>
			          		<a href="http://iwebad.com/" target="_blank">网络广告人社区</a>
			          		<a href="h/af/flink.html" target="_blank" class="more">更多</a>
			        </dd>
			    </dl>
			</div>
        </div>
 	   </div>
 	
<!-------------------------------------弹窗lightbox  ----------------------------------------->
<div style="display:none;">
	<!-- 登录框 -->
	<div id="loginPop" class="popup" style="height:240px;">
       	<form id="loginForm">
			<input type="text" id="email" name="email" tabindex="1" placeholder="请输入登录邮箱地址" />
			<input type="password" id="password" name="password" tabindex="2" placeholder="请输入密码" />
			<span class="error" style="display:none;" id="beError"></span>
		    <label class="fl" for="remember"><input type="checkbox" id="remember" value="" checked="checked" name="autoLogin" /> 记住我</label>
		    <a href="h/reset.html" class="fr">忘记密码？</a>
		    <input type="submit" id="submitLogin" value="登 &nbsp; &nbsp; 录" />
		</form>
		<div class="login_right">
			<div>还没有拉勾帐号？</div>
			<a href="register.html" class="registor_now">立即注册</a>
		    <div class="login_others">使用以下帐号直接登录:</div>
		    <a href="h/ologin/auth/sina.html" target="_blank" id="icon_wb" class="icon_wb" title="使用新浪微博帐号登录"></a>
		    <a href="h/ologin/auth/qq.html" class="icon_qq" id="icon_qq" target="_blank" title="使用腾讯QQ帐号登录" ></a>
		</div>
    </div><!--/#loginPop-->
</div>
<!------------------------------------- end ----------------------------------------->
<script type="text/javascript" src="style1/js/Chart.min.js"></script>
<script type="text/javascript" src="style1/js/home.min.js"></script>
<script type="text/javascript" src="style1/js/count.js"></script>
			<div class="clear"></div>
			<input type="hidden" id="resubmitToken" value="" />
	    	<a id="backtop" title="回到顶部" rel="nofollow"></a>
	    </div><!-- end #container -->
	</div><!-- end #body -->
	<div id="footer">
		<div class="wrapper">
			<a rel="nofollow" target="_blank" href="about.html">联系我们</a>
		    <a target="_blank" href="http://www.lagou.com/af/zhaopin.html">互联网公司导航</a>
		    
			<div class="copyright">&copy;2017 Three Team <a href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action" target="_blank">京ICP备99999999号-1</a></div>
		</div>
	</div>

<script type="text/javascript" src="style1/js/core.min.js"></script>
<script type="text/javascript" src="style1/js/popup.min.js"></script>

<!--  -->

</body>
</html>	