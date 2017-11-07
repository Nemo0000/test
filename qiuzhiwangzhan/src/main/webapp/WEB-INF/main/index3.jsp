<%@page pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html; charset=UTF-8" http-equiv="Content-Type">


<title>职位详情</title>


<script type="text/javascript" src="aa/jquery-1.7.1.min.js"></script>

<script type="text/javascript" src="aa/area.js"></script>
<script type="text/javascript" src="aa/location.js"></script>
<script type="text/javascript" src="aa/select2.js"></script>
<script type="text/javascript" src="aa/select2_locale_zh-cn.js"></script>

<script type="text/javascript" src="aa/jquery.touchslider.js"></script>
<script type="text/javascript" src="aa/js.js"></script>
<script type="text/javascript" src="aa/ks-switch.pack.js"></script>



<link media="all" href="aa/index.css" type="text/css" rel="stylesheet">
</head>
<body class="bft_bg">
<!-- top内容开始 -->
<!-- <div class="top">
	<div class="top_a">
    	<div class="top_a3">您好，欢迎来到邦邦网！ <span style="font-size: 14px; font-weight: bold; color: rgb(66, 66, 66);">三门峡&nbsp;</span>[<input id="btn_nation" value="切换市区▼" onclick="nationSelect()" type="button">]</div>
    	<div class="top_a1">
        	<div class="top_a2"><img src="aa/help.jpg"></div>
            <div class="top_a2"><img src="aa/home.jpg"></div>
            <div class="top_a2"><img src="aa/join.jpg"></div>
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
			<div class="zzy_nr">
				<div class="zzy">${works.work1}</div>
                <!-- <div class="zzy_1">
                	<ul>
                    	<li><span>☆</span>&nbsp;今天更新</li>
                        <li><span>¤</span>&nbsp;49人浏览</li>
                        <li><span>♥</span>&nbsp;4人投递简历</li>
                    </ul>
                </div> -->
                <div class="zzy_2">
<table width="600" cellspacing="1" cellpadding="1" border="1">
  <tbody><tr>
    <td>职位名称：<span>${works.work2 }</span></td>
    <td>月薪：<span>${works.work3 }</span></td>
  </tr>
  <tr>
    <td>招聘人数：${works.work4 }</td>
    <td>最低学历：${works.work5 }</td>
  </tr>
  <tr>
    <td>工作经验：${works.work6 }</td>
    <td>年龄：${works.work7 }</td>
  </tr>
  <tr>
    <td>工作地点: ${works.work8 }</td>
  </tr>
  <tr>
    <td>联系电话：<i>${works.work9 }</i></td>
  </tr>
  <tr>
    <td>联系人: ${works.work10 } </td>
  </tr>
</tbody></table>
                </div>
                <div class="zzy_4">
                	<ul>
                		<a href="#"><li>申请职位</li></a>
                    </ul>
                </div>
                <div class="zzy_5">
                	<p style="width: 680px; height: 40px; line-height: 40px; background: rgb(247, 247, 247) none repeat scroll 0% 0%; color: rgb(51, 51, 51); font-weight: bold; text-indent: 10px; border: 1px solid rgb(221, 221, 221); margin-bottom: 30px;"><span>公司介绍</span></p>
                    <p>${works.work11 }</p>
                </div>
			</div>
            <div class="zzy_nra">
            	<div class="zzy_8"><a href="#"><img src="aa/pic.jpg"></a></div>
            	<div class="zzy_6">找类似</div>
                <div class="zzy_7">
                	<ul>
                        <li>
                        	<a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/zzy.html">
                            <p><span>市场部专员</span></p>
                            <p>价格：3000-5000元</p>
                            </a>
                        </li>
                        <li>
                        	<a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/zzy.html">
                            <p><span>市场部专员</span></p>
                            <p>价格：3000-5000元</p>
                            </a>
                        </li>
                        <li>
                        	<a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/zzy.html">
                            <p><span>市场部专员</span></p>
                            <p>价格：3000-5000元</p>
                            </a>
                        </li>
                        <li>
                        	<a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/zzy.html">
                            <p><span>市场部专员</span></p>
                            <p>价格：3000-5000元</p>
                            </a>
                        </li>
                        <li>
                        	<a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/zzy.html">
                            <p><span>市场部专员</span></p>
                            <p>价格：3000-5000元</p>
                            </a>
                        </li>
                        <li>
                        	<a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/zzy.html">
                            <p><span>市场部专员</span></p>
                            <p>价格：3000-5000元</p>
                            </a>
                        </li>
                        <li>
                        	<a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/zzy.html">
                            <p><span>市场部专员</span></p>
                            <p>价格：3000-5000元</p>
                            </a>
                        </li>
                        <li>
                        	<a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/zzy.html">
                            <p><span>市场部专员</span></p>
                            <p>价格：3000-5000元</p>
                            </a>
                        </li>

                    </ul>
                </div>
            </div>
<!-- 内容结束 -->
			<!-- 友情链接开始 -->
			<div class="blank"></div>
			<div class="link">
    		<div class="link_a">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;友情链接</div>
       	 <div class="link_b">
    		<ul>
        		<li><a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/zzy.html"><img src="aa/link_pic.jpg"></a></li>
            	<li><a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/zzy.html"><img src="aa/link_pic2.jpg"></a></li>
            	<li><a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/zzy.html"><img src="aa/link_pic3.jpg"></a></li>
                <li><a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/zzy.html"><img src="aa/link_pic4.jpg"></a></li>
            	<li><a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/zzy.html"><img src="aa/link_pic.jpg"></a></li>
                <li><a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/zzy.html"><img src="aa/link_pic2.jpg"></a></li>
                <li><a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/zzy.html"><img src="aa/link_pic3.jpg"></a></li>
        	</ul>
        </div>
    </div>
    <!-- 友情链接结束 -->
    
    <!-- 底部内容开始 -->
	<div class="blank"></div>
    <div class="blank"></div>
	<div class="button">
		<a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/zzy.html">关于我们</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/zzy.html">商务合作</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/zzy.html">网站声明</a>&nbsp;&nbsp;|&nbsp;&nbsp;
        <a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/zzy.html">联系方式</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/zzy.html">服务中心</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="http://www.17sucai.com/preview/73136/2015-02-09/%E5%B8%AE%E5%B8%AE%E7%BD%91/zzy.html">加入我们</a><br>
        版权所有©三门峡兼职网2014-2020  兼职网    豫88888888号
		</div>
		<!-- 底部内容结束 -->
    	</div>
        <div class="submenu"></div>
    	<!-- 搜索内容结束 -->
        
    
	<!-- 帮众结束 -->


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
