<%@page pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>jQuery手机发送验证码倒计时代码</title>

<link href="xiu/css/style.css" type="text/css" rel="stylesheet" />

</head>
<body>
 ${username}
<div class="form">
	<div class="div-name">
		<label for="name">原始密码</label><input type="text" id="name" name="xiu_pwd1" class="infos" placeholder="请输入原始密码" />
	</div>
	
	<div class="div-phone">
		<label for="phone">新密码</label><input type="text" id="phone"  name="xiu_pwd2" class="infos" placeholder="请输入新密码" />
		
	</div>
	<div class="div-ranks">
		<label for="ranks">确认密码</label><input type="text" id="ranks"  name="xiu_pwd3" class="infos" placeholder="请确认密码"  />
	</div>
	<div class="div-conform">
		<a href="javascript:;" class="conform" onclick="location.href='toxiu2.do';">提交</a>
	</div>
</div>

<script type="text/javascript" src="xiu/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
var sends = {
	checked:1,
	send:function(){
			var numbers = /^1\d{10}$/;
			var val = $('#phone').val().replace(/\s+/g,""); //获取输入手机号码
			if($('.div-phone').find('span').length == 0 && $('.div-phone a').attr('class') == 'send1'){
				if(!numbers.test(val) || val.length ==0){
					$('.div-phone').append('<span class="error">手机格式错误</span>');
					return false;
				}
			}
			if(numbers.test(val)){
				var time = 30;
				$('.div-phone span').remove();
				function timeCountDown(){
					if(time==0){
						clearInterval(timer);
						$('.div-phone a').addClass('send1').removeClass('send0').html("发送验证码");
						sends.checked = 1;
						return true;
					}
					$('.div-phone a').html(time+"S后再次发送");
					time--;
					return false;
					sends.checked = 0;
				}
				$('.div-phone a').addClass('send0').removeClass('send1');
				timeCountDown();
				var timer = setInterval(timeCountDown,1000);
			}
	}
}
</script>

</body>
</html>
