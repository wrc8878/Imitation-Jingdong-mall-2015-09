<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<head>
	<link rel="stylesheet" href="css/login.css"  type="text/css">
</head>
<body>
<div class="top">
	<div id="logo"><a href="main.jsp"><img src="images/logo.jpg" ></a></div>
	<div id="welcome"><span>欢迎登录</span></div>
</div>

<div class="center">

	<div style="position: absolute;width: 594px;height: 389px;margin-left: 200px;margin-top: 40px"><img src="images/login_left.jpg"></div>
	
	<form action="" id="form" method="post">
		<div style="margin-top: 15px;position: absolute"><span style="font-size: 20;font-family: 华文细黑;">京东会员</span><a href="regist.jsp">立即注册</a></div>
		<div style="" id="jinggao"><img alt="" src="images/dengpao.jpg" style="margin-top: 5px;margin-left: 10px;" id="dengpao"><div style="margin-top: -23px;position: absolute;margin-left: 25px"><span style="" id="jianyi">公共场所不建议自动登录，以防账号丢失</span></div></div>
		<div  id="input" style="">
		<input type="text" placeholder="邮箱/用户名/已验证手机" class="input"  id="username" name="username"><br>
		<input type="password" placeholder="密码" class="input" id="password" name="password"  ><br>
		</div>
		<div style=""  id="checkbox1">
		<input type="checkbox"  checked="checked" style="width: 12px;margin-left: 20px;"><span style="font-size: 13;font-family: 宋体;color: #666666;width: 200px;margin-left: 2px;">自动登录</span>		
		<input type="checkbox" style="margin-left: -150px;width: 12px;" align="middle" ><span style="font-size: 13;font-family: 宋体;color: #666666;margin-left: 2px;">安全控件登录</span>
		<a href="#" style="margin-left: -120px;font-size: 13;font-family: 宋体;">忘记密码？</a>
		</div>
		<div id="submit">
		<input type="button" value="登&nbsp;&nbsp;&nbsp;&nbsp;录" class="input" onclick="login()"/>
		<script language="javascript">
			window.onunload = function(){ 
			
			window.opener.location.reload(); 
			window.close();
			} 
</script>
		

		</div>
		<div id="other">
		<span>使用合作网站账号登录京东：</span><br>
		<a href="#" style="margin-left: 15px">京东钱包</a>&nbsp;&nbsp;&nbsp;<a href="#">QQ</a>&nbsp;&nbsp;&nbsp;<a href="#">微信</a>
		</div>
	</form>
</div>

<div class="bottom">
<div style="width: 1080px;height: 30px;margin-left: 135px;margin-top: 20px;">
	<ul>
		<li><a href="#">关于我们</a></li>
		<li><a href="#">联系我们</a></li>
		<li><a href="#">商家入驻</a></li>
		<li><a href="#">营销中心</a></li>
		<li><a href="#">手机京东</a></li>
		<li><a href="#">友情链接</a></li>
		<li><a href="#">销售联盟</a></li>
		<li><a href="#">京东社区</a></li>
		<li><a href="#">京东公益</a></li>
		<li><a href="#">English&nbsp;Site</a></li>
		<li><a href="#">Contact&nbsp;Us</a></li>
		
	</ul>
</div>
<div style="width:945px;margin-left: 175px;height: 60px;margin-top: 10px;" align="center">
	<span style="color: #666666;font-size: 13;">Copyright&copy;2004-2015  京东JD.com 版权所有</span>
</div>

</div>
</body>
<script>
	function login(){
		var username = document.getElementById('username').value;
		var password = document.getElementById('password').value;
		if(username.length<1 && password.length<1){
			alert(123);
			document.getElementById('jianyi').innerHTML='请输入用户名和密码！';
			document.getElementById('username').style.border='1px solid #E4393C';
			document.getElementById('password').style.border='1px solid #E4393C';
			document.getElementById('jinggao').style.border='1px solid #E4393C';
			document.getElementById('jinggao').style.background='#FFEBEB';
			document.getElementById('dengpao').src='images/dengpao2.jpg';
			document.getElementById('jianyi').style.color='#E4393C';
		}
		if(username.length<1 ){
			document.getElementById('jianyi').innerHTML='请输入用户名！';
			document.getElementById('jinggao').style.border='1px solid #E4393C';
			document.getElementById('username').style.border='1px solid #E4393C';
			document.getElementById('password').style.border='1px solid #BDBDBD';
			document.getElementById('dengpao').src='images/dengpao2.jpg';
			document.getElementById('jianyi').style.color='#E4393C';
		}
		if(password.length<1){
			document.getElementById('jianyi').innerHTML='请输入密码！';
			document.getElementById('username').style.border='1px solid #BDBDBD';
			document.getElementById('password').style.border='1px solid #E4393C';
			document.getElementById('jinggao').style.border='1px solid #E4393C';
			document.getElementById('dengpao').src='images/dengpao2.jpg';
			document.getElementById('jianyi').style.color='#E4393C';
		}
		else{
			//location = 'user.do?method=getuserbyusername&username='+username+'&password='+password;
			//创建ajax核心对象
		var request = new XMLHttpRequest();
		//回调函数
		request.onreadystatechange = function(){
			if(request.readyState==4 && request.status==200){
				//接收结果
				var result = request.responseText;//服务器返回的文本
				document.getElementById("jianyi").innerHTML=result;
			}
		} 
		//打开并且发送   去服务器中查找可用还是不可用   async:true
		request.open("get" , "user.do?method=getuserbyusername&username="+username+"&password="+password+"&x="+Math.random(),false);
		request.send(null);
		}
		
		
		
		
	}
</script>
