<%@page pageEncoding="utf-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head lang="en">
<meta content="text/html; charset=UTF-8" http-equiv="Content-Type">

    <meta charset="UTF-8">
    <title></title>
    
    <script src="my.js"></script>
    <script>
        // 1、获得焦点，内容为空，tip默认提示
        // 2、失去焦点，内容为空，tip为隐藏
        // 3、其他情况（按键抬起，失去焦点且内容不为空，或最后表单总验证）
        //    按键抬起为空，报错，不能为空
        //    内容匹配，成功
        //    内容不匹配，失败
        // 4、密码要进行安全等级检测，含数字、字母、特殊字符为强，两种为中，一种为弱
        // 5、确认密码失去焦点的时候就要验证是否一致
    </script>

<link media="all" href="index4/index.css" type="text/css" rel="stylesheet">
</head>
<body>
   <form class="form" method="post" action="addAdmin2.do">
    <!--头部-->
    <div class="header">
        <!--<a class="logo" href="##"></a>-->
        <div class="desc">请填写详细信息完成注册</div>
    </div>
    <!--版心-->
    <div class="container">
    	<!--京东注册模块-->
    	<div class="register">
    	
    		<!--用户名-->
    		<div class="register-box">
    			<!--表单项-->
    			<div class="box default">
    				<label for="age">年&nbsp;&nbsp;龄</label>
    				<input id="age" placeholder="" value="${param.age }" name="age" type="text">
    				<i></i>
    			</div>
    			<!--提示信息-->
    			<div class="tip">
    				<i></i>
    				<span></span>
    			</div>
    		</div>
    		<!--用户名-->
    		<div class="register-box">
    			<!--表单项-->
    			<div class="box default">
    				<label for="birthday">出 生 日 期</label>
    				<input id="birthday" placeholder="" value="${param.birthday }" name="birthday" type="text">
    				<i></i>
    			</div>
    			<!--提示信息-->
    			<div class="tip">
    				<i></i>
    				<span></span>
    			</div>
    		</div>
    		
    		<!--设置密码-->
    		<div class="register-box">
    			<!--表单项-->
    			<div class="box default">
    				<label for="edu">毕 业 院 校</label>
    				<input id="edu" placeholder="" type="text" name="edu" value="${param.edu }">
    				<i></i>
    			</div>
    			<!--提示信息-->
    			<div class="tip">
    				<i></i>
    				<span></span>
    			</div>
    		</div>
    		<!--确认密码-->
    		<div class="register-box">
    			<!--表单项-->
    			<div class="box default">
    				<label for="work">上 家 公 司</label>
    				<input id="work" placeholder="" type="text" name="work" value="${param.work }">
    				<i></i>
    			</div>
    			<!--提示信息-->
    			<div class="tip">
    				<i></i>
    				<span></span>
    			</div>
    		</div>
			<!--设置密码-->
    		<div class="register-box">
    			<!--表单项-->
    			<div class="box default">
    				<label for="workto">求 职 意 向</label>
    				<input id="workto" placeholder="" type="text" name="workto" value="${param.workto }">
    				<i></i>
    			</div>
    			<!--提示信息-->
    			<div class="tip">
    				<i></i>
    				<span></span>
    			</div>
    		</div>
    		<!--手机验证-->
    		<div class="register-box">
    			<!--表单项-->
    			<div class="box default">
    				<label for="workage">工 作 年 限</label>
    				<input id="workage" placeholder="" type="text" name="workage" value="${param.workage }">
    				<i></i>
    			</div>
    			<!--提示信息-->
    			<div class="tip">
    				<i></i>
    				<span></span>
    			</div>
    		</div>
    		<!--手机验证-->
    		<div class="register-box">
    			<!--表单项-->
    			<div class="box default">
    				<label for="in">自 我 评 价</label>
    				<input id="in" placeholder="" type="text" name="in" value="${param.in }">
    				<i></i>
    			</div>
    			<!--提示信息-->
    			<div class="tip">
    				<i></i>
    				<span></span>
    			</div>
    		</div>
    		 <!--注册协议-->
    		<div class="register-box xieyi">
    			<!--表单项-->
    			<div class="box default">
    				<input id="ck" type="checkbox">
    				<span>我已阅读并同意<a href="##">《本网站用户注册协议》</a></span>
    			</div>
    			<!--提示信息-->
    			<div class="tip">
    				<i></i>
    				<span></span>
    			</div>
    		</div>
    		<!--注册-->
    		<button id="btn" onclick="location.href='addAdmin2.do';">注册</button>
    	</div>
    	
    </div>
   </form>
</body>
</html>
