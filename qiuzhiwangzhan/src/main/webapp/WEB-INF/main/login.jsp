<%@page pageEncoding="utf-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>登录页面</title>
	<script src="js/jquery-3.1.1.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/jquery-ui.min.css">
	<link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>
	<div class="main">
		<div class="nav">
		<div class="font t_c">某</div>
		<div class="font t_r">求</div>
		<div class="font t_e">职</div>
		<div class="font t_a">网</div>
			<div class="nav_left">
				<a href="index.html">某求职网</a>
			</div>
			<div class="nav_right">
				<ul>
					<li style="color:white" onclick="location.href='toent1.do';">企业注册</li>
					<li style="color:white" onclick="location.href='toent2.do';">企业登录</li>
					
				</ul>
			</div>
		</div>
		<div class="middle">
			<form class="form1" method="post" action="login.do">
			<div class="m_main m1">
				<div class="title">欢迎登录求职网</div>
				<input type="text" class="user_message" name="username" value="${param.username }">
				<label class="label l4">用户名不能为空</label>
					<div class="icon user_icon"></div>
				<input type="password" class="user_message" name="password" value="${param.password }">
				<label class="label l5">密码不能为空</label>
					<div class="icon pass_icon"></div>
				<div class="m_font f2">没有账号？点击注册</div>
				<input type="submit" value="登&nbsp&nbsp录" class="order submit">
				<input type="reset" class="order zhuce" value="重&nbsp置">
			</div>
			</form>
			<form class="form2" method="post" action="addAdmin1.do">
			<div class="m_main m2">
				<div class="title">欢迎注册CREATE DREAM</div>
				<input type="text" class="user_message user1" id="username2" name="username2" value="${param.username2 }">
				<label class="label l1">5-16位数字或字母</label>
					<div class="icon user_icon"></div>
				<input type="password" class="user_message user2">
				<label class="label l2">5-16位数字或字母</label>
					<div class="icon pass_icon"></div>
				<input type="password" class="user_message user3" id="password2" name="password2" value="${param.password2 }">
				<label class="label l3">与上次输入的密码一致</label>
					<div class="icon pass_icon2"></div>
				<input type="submit" value="注&nbsp&nbsp册" class="order submit" 
				onclick="location.href='addAdmin1.do';">
				<input type="reset" class="order zhuce" value="重&nbsp置">
			</div>
		</form>
		</div>
		<div class="footer">
			<br>CREATE DREAM@2016湘</br>
			© 2016 Pactera. All rights reserved. Liaoning ICP 11007858-3. Jing Gongwang Anbei 11010802016198
		</div>
	</div>
</body>
</html>
<script type="text/javascript">
	$(function(){
		$(".middle").show("explode",1000);
		$(".f2").click(function(){
			$(".m1").hide("explode",1000);
			$(".m2").show();
		})
		$(".m2> .user_message").focus(function(){
				var a = $(this).index();
				if(a > 2){
					a = Math.floor(a/2);
				}
				$(".m2> .label").eq(a-1).hide("slide",1000);
		})
		$(".m2> .user_message").blur(function(){
			var reg =/^[a-zA-Z0-9][a-zA-Z0-9]{4,16}$/;
			var a = $(this).index();
				if(a > 2){
					a = Math.floor(a/2);
				}
			var b = 0;
			var c = 0;
			if(!reg.test($(this).val())) {
				$(".m2> .label").eq(a-1).html("格式错误，请重新输入").show("slide",1000);
			}else{
				b=1;
			}
				if(a == 3){
					if($(".user3").val() != $(".user2").val()) {
						$(".l3").html("密码不一致").show("slide",1000);
					}else{
						console.log($(".user3").val());
						console.log($(".user2").val());
						$(".l3").hide("slide",1000);
						c=1;
					}
				}
				console.log((b + c));
				if((b+c) == 2){
					$(".m2 .submit").removeAttr("disabled","disabled");
				}
		})
		$(".m1 .user_message").blur(function(){
			if($(this).val() == ""){
				var a = $(this).index();
				if(a > 2){
					a=a/2;
				}
				$(".m1 .submit").attr("disabled","disabled");
				$(".label").eq(a-1).show("bounce",1000)
			}else{
				$(".m1 .submit").removeAttr("disabled","disabled");
				$(".label").eq(a-1).hide("bounce",1000)
			}
		})
		$(".m1 .user_message").focus(function(){
				var a = $(this).index();
				if(a > 2){
					a=a/2;
				}
				$(".label").eq(a-1).hide("bounce",1000)
		})
	})
</script>