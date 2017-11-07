<%@page pageEncoding="utf-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html; charset=UTF-8" >


<title>查询页面</title>


<script type="text/javascript" src="sou/jquery-1.7.1.min.js"></script>

<script type="text/javascript" src="sou/area.js"></script>
<script type="text/javascript" src="sou/location.js"></script>
<script type="text/javascript" src="sou/select2.js"></script>
<script type="text/javascript" src="sou/select2_locale_zh-cn.js"></script>

<script type="text/javascript" src="sou/jquery.touchslider.js"></script>
<script type="text/javascript" src="sou/js.js"></script>
<script type="text/javascript" src="sou/ks-switch.pack.js"></script>
<script type="text/javascript" src="sou/page.js"></script>



<link media="all" href="sou/index.css" type="text/css" rel="stylesheet">
</head>
<body class="bft_bg">
<!-- top内容开始 -->
<!-- <div class="top">
	<div class="top_a">
    	<div class="top_a3">您好，欢迎来到求职网！ <span style="font-size: 14px; font-weight: bold; color: rgb(66, 66, 66);">三门峡&nbsp;</span>[<input id="btn_nation" value="切换市区▼" onclick="nationSelect()" type="button">]</div>
    	<div class="top_a1">
        	<div class="top_a2"><img src="sou/help.jpg"></div>
            <div class="top_a2"><img src="sou/home.jpg"></div>
            <div class="top_a2"><img src="sou/join.jpg"></div>
        </div>
    </div>
    <div class="top_bg">
    	<div class="top_bga">
        	<div class="top_bga_1"></div>
            <div class="top_bga_2">
            	<ul>
                	<a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/bz.html"><li>帮 主</li></a>
                    <a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/bj.html"><li>帮 交</li></a>    
                    <a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/bft.html"><li>帮分舵</li></a>
                    <a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/index.html"><li>帮 首</li></a>
                </ul>
            </div>
        </div>
    </div>
</div> -->
<!-- top内容结束 -->

<div class="center_blank"></div>
<!-- 内容开始 -->
<div class="nr">  
          <div class="bft_f">
          	<div class="bft_f_1">
            	<ul>
                	<li>职位名称</li>
                    <li>公司名称</li>
                    <li>薪资范围</li>
                    <li>工作地点</li>
                    <li></li>
                </ul>
            </div>
           
            <c:forEach items="${costs}" var="c" varStatus="s" >
            <div class="bft_f_2">
            	<ul>
            	${c.id}
                	<li><span>${c.wn}</span></li>
         
                    <li><span id="gname1"   value="${c.gn}">${c.gn}</span></li>
                    <li>${c.zy}</li>
                    <li>${c.gd}</li>
                    <li><a  onclick='location.href="index41.do?id=${c.id}"'/><img src="sou/shenqing.jpg"></a></li>
                </ul>
            </div>
            </c:forEach>
           <%@include file="../main/page.jsp" %>
          </div>
          
           

          <!-- 友情链接开始 -->
          <div class="blank"></div>
    <div class="link">
    	<div class="link_a">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;友情链接</div>
        <div class="link_b">
    		<ul>
        		<li><a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/bft_more.html"><img src="sou/link_pic.jpg"></a></li>
            	<li><a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/bft_more.html"><img src="sou/link_pic2.jpg"></a></li>
            	<li><a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/bft_more.html"><img src="sou/link_pic3.jpg"></a></li>
                <li><a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/bft_more.html"><img src="sou/link_pic4.jpg"></a></li>
            	<li><a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/bft_more.html"><img src="sou/link_pic.jpg"></a></li>
                <li><a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/bft_more.html"><img src="sou/link_pic2.jpg"></a></li>
                <li><a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/bft_more.html"><img src="sou/link_pic3.jpg"></a></li>
        	</ul>
        </div>
    </div>
    <!-- 友情链接结束 -->
    
    <!-- 底部内容开始 -->
	<div class="blank"></div>
    <div class="blank"></div>
	<div class="button">
		<a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/bft_more.html">关于我们</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/bft_more.html">商务合作</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/bft_more.html">网站声明</a>&nbsp;&nbsp;|&nbsp;&nbsp;
        <a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/bft_more.html">联系方式</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/bft_more.html">服务中心</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/bft_more.html">加入我们</a><br>
        版权所有©三门峡兼职网2014-2020  兼职网    豫88888888号
		</div>
		<!-- 底部内容结束 -->
    	</div>
        <div class="submenu"></div>
    	<!-- 搜索内容结束 -->
        
    
	<!-- 帮众结束 -->
    
    
   
   
    

<!-- 内容结束 -->

<!-- alpha div -->
<div id="maskLayer" style="display: none;">
<iframe id="maskLayer_iframe" scrolling="no" style="filter:alpha(opacity=50)" src="index_1.html" frameborder="0"></iframe>
<div id="alphadiv" style="opacity: 0.5;"></div>
	<div id="drag">
		<h3 id="drag_h"></h3>
		<div id="drag_con"></div><!-- drag_con end -->
	</div>
</div><!-- maskLayer end -->

<!-- alpha div end -->



</body>
</html>
