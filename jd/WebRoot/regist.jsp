<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
	<!-- 静态页面，直接引用 -->
	<link rel="stylesheet" href="css/regist.css"  type="text/css">
</head> 
 
<body>
<div id="header-grey">
	<div style="position: absolute;height: 30px;width: 1340px;">
	<ul id="header-word">
		<c:if test="${user.membersname==null}">
		<li>
			<a href="login.jsp">你好，请登录</a>
			<a href="regist.jsp" style="color: #C81623;text-decoration: none;">免费注册</a>
		</li>
		</c:if>
		<c:if test="${user.membersname!=null}">
		<li>
			<a href="#">${user.membersname }</a>
			<a href="user.do?method=getuserbyusername" style="color: #C81623;text-decoration: none;">退出</a>
		</li>
		</c:if>
		<li id="spacer"></li>
		<li><a href="#">我的订单</a></li><li id="spacer"></li>
		<li><a href="#">手机京东</a></li><li id="spacer"></li>
		<li><a href="#">客户服务</a></li><li id="spacer"></li>
		<li><a href="#">网站导航</a></li>		
	</ul>
	</div>
</div>

<div class="center">
	<div id="logo"><a href="main.jsp"><img src="images/regist_logo.jpg" ></a></div>
	<div id="welcome"><span>欢迎注册</span></div>
	<div style="" id="gologin"><span>我已经注册，现在就<a href="login.jsp">登陆</a></span></div>
	<div id="regist">
		<form action="user.do?method=regist" method="post">
			<table>
				<tr>					
					<td id="td1"><span style="color:#FF0000;font-size: 15">*</span><span style="color: #999999;font-size: 15">用户名：</span></td>
					<td colspan="2" id="td2"><input type="text" class="input" name="username" onblur="check()" id="username" placeholder="用户名可包括数字、下划线以及汉字"></td>
					<td id="td3"><span style="color: red;font-size: 13" id="result"></span></td>
				</tr>
				<tr>
					<td id="td1"><span style="color:#FF0000;font-size: 15">*</span><span style="color: #999999;font-size: 15">请设置密码：</span></td>
					<td colspan="2" id="td2"><input type="password" class="input" name="password" onblur="checkpwd()" id="password" placeholder="请输入6-16位密码"></td>
					<td id="td3"><span style="color: red;font-size: 13" id="result2"></span></td>
				</tr>
				<tr>
					<td id="td1"><span style="color:#FF0000;font-size: 15">*</span><span style="color: #999999;font-size: 15">请确认密码：</span></td>
					<td colspan="2" id="td2"><input type="password" class="input" name="confirmpassword" onblur="checkcpwd()" id="cpassword" placeholder="请重新输入密码"></td>
					<td id="td3"><span style="color: red;font-size: 13" id="result3"></span></td>
				</tr>
				<tr>
					<td id="td1"><span style="color:#FF0000;font-size: 15"></span><span style="color: #999999;font-size: 15">验证邮箱：</span></td>
					<td colspan="2" id="td2"><input type="text" class="input" name="email" onblur="checkemail()" id="email" placeholder="邮箱可以使您找回忘记的密码"></td>
					<td id="td3"><span style="color: red;font-size: 13" id="result4"></span></td>
				</tr>
				<tr>
					<td id="td1"><span style="color:#FF0000;font-size: 15">*</span><span style="color: #999999;font-size: 15">验证码：</span></td>
					<td style="width: 10px;"><input type="text" class="code" name="code" style="width: 100px;margin-left: 40px" id="code" onblur="checkcode()"></td>	
					<td style="width: 75px;height: 10px"><img src="code.do" id="img" onclick="change()" style="outline: 1px solid #999999"></td>
					<td id="td3"><span style="color: red;font-size: 13" id="result5"></span></td>
				</tr>	
			</table>			
		<div style="" id="check">
			<input type="checkbox" checked="checked" style="width: 12px;margin-left: 20px;"><span style="font-size: 13;font-family: 宋体;width: 200px;margin-left: 2px;">我已阅读并同意<a href="#">《京东用户注册协议》</a></span>
		</div>
		<div id="submit">
		<input type="submit" value="立即注册" class="input" onclick="login()"/>
		
		</div>
		</form>	
	</div>	
	<div id="duanxin"style=""><img src="images/duanxin.jpg"></div>	
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
<div style="width:940px;margin-left: 105px;height: 60px;margin-top: 0px;" align="center">
	<span style="color: #666666;font-size: 13;">Copyright&copy;2004-2015  京东JD.com 版权所有</span>
</div>

</div>
</div>
</body>
<script>

	function change(){
		document.getElementById("img").src="code.do?x="+Math.random();
	}

//检查用户名
	function check(){
		var username = document.getElementById("username").value;
			//创建ajax核心对象
		var request = new XMLHttpRequest();
		
		//回调函数
		request.onreadystatechange = function(){
		
			if(request.readyState==4 && request.status==200){
				//接收结果
				var result = request.responseText;//服务器返回的文本
				document.getElementById("result").innerHTML=result;
			}
		} 
		//打开并且发送   去服务器中查找可用还是不可用   async:true
		request.open("get" , "user.do?method=findfromsql&username="+username+"&x="+Math.random(),false);
		request.send(null);
	}
//检查密码
		function checkpwd(){
		var password = document.getElementById("password").value;
		
		if(password.length<=6){
					document.getElementById("result2").innerHTML="密码长度不能少于6位";
				}
		else{
			document.getElementById("result2").innerHTML="正确";
		}
		
		if(password.length>16){
			var num = password.substr(0,16);
			document.getElementById("password").value=num;
			document.getElementById("result2").innerHTML="正确";
		}
		
	}
	
	//检查重复密码
	function checkcpwd(){
		var password = document.getElementById("password").value;
		var cpassword = document.getElementById("cpassword").value;
		
		if(cpassword.length>16){
			var num = cpassword.substr(0,16);
			document.getElementById("cpassword").value=num;
			if(password==num){
				document.getElementById("result3").innerHTML="正确";
				
			}
			else{
				document.getElementById("result3").innerHTML="两次密码不同";
			}
		}
		}
			
			//检查邮箱
	function checkemail(){
		var email = document.getElementById("email").value;	
		if(email.length<1){
			document.getElementById("result4").innerHTML="您可以通过邮箱找回密码";
		}
				
		}
		
	//检查验证码
	function checkcode(){
		var request = new XMLHttpRequest();
		var code = document.getElementById("code").value;
		
		request.open("get","images.do?method=getcode&code="+code+"&x="+Math.random());
		request.send(null);
		
		request.onreadystatechange =function(){
			if(request.readyState==4 && request.status==200){
				var res =  request.responseText;
				document.getElementById("result5").innerHTML=res;
			}
		}	
	}
</script>


