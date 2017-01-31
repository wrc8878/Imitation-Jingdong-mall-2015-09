<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<title></title>
<meta name="" content="">

<!-- 静态页面，直接引用 -->
	<link rel="stylesheet" href="css/car.css"  type="text/css">
	

</head>

<body>

<!-- 固定内容开始 -->
<div id="header-grey">
<div style="position: absolute;height: 30px;width: 1340px;">
	<ul id="header-word"> 
		<c:if test="${user.membersname==null}"> 
		<li> 
			<a href="login.jsp"><span id="username">你好，请登录</span></a> 
			<a href="#" style="color: rgb(200, 22, 35); text-decoration: none;">注册</a> 
		</li> 
		</c:if> 
		<c:if test="${user.membersname!=null}"> 
		<li> 
			<a href="#"><span id="username">${user.membersname }</span></a> 
			<a href="#" style="color: rgb(200, 22, 35); text-decoration: none;">退出</a> 
		</li> 
		</c:if> 
		<li id="spacer"><br></li> 
		<li><a href="#">我的订单</a></li><li id="spacer"><br></li> 
		<li><a href="#">我的京东</a></li><li id="spacer"><br></li> 
		<li><a href="#">京东会员</a></li><li id="spacer"><br></li> 
		<li><a href="#">企业采购</a></li><li id="spacer"><br></li> 
		<li><a href="#">手机京东</a></li><li id="spacer"><br></li> 
		<li><a href="#">关注京东</a></li><li id="spacer"><br></li> 
		<li><a href="#">客户服务</a></li></ul><br><ul id="header-word"> 
			 
	</ul>
	</div>
</div>
<div id="top-logo" >
	<div id="logo"><a href="main.jsp"><img src="images/logo.jpg"/></a></div>
	<div>
	<input type="text" id="search-box"  size="15"/>
	<input type="button" value="搜索" style="color:white;font-size:17; border-color:#B61E1D; background-color: #B61D1D;width: 82px;height: 37px;margin-top: 43px;margin-left: 483px">
	</div>
	
	
</div>
<!-- 固定内容结束 -->

<!-- 中心 -->
<div class="center" style="width: 1340px;height: 600px;position: absolute;margin-top: 10px;background-color: white">
	<div style="position: absolute;width:450px;height: 30px;margin-left:800px;margin-top: 20px;" >
		<span style="font-size: 13;line-height: 30px;">配送至：</span><span id="aaa" style="position: absolute;width: 500px;height: 30px;line-height: 30px;"></span>
				<script type="text/javascript" src="js/jquery.js"></script>
				<script type="text/javascript" src="js/chinaprovinces_0.2.1.js"></script>
				<script>
				$("#aaa").chinaprovinces({valueType:'name',change:function(province,city,area){
					$("#demo2_province").val(province);
					$("#demo2_city").val(city);
					$("#demo2_area").val(area);
				}});
				</script>
	</div>
		<table id="table">
			<tr id="center_top" style="">
				<td id="td1" ><input type="checkbox" name="box" onclick="quanxuan()" id="all">&nbsp;&nbsp;全选<td>
				<td id="td2" >商品</td>
				<td id="td3" >单价（元）</td>
				<td id="td4" >数量</td>
				<td id="td5" >小计（元）</td>
				<td id="td6" >操作</td>
			</tr>
		</table>
		<div style="position: absolute;width: 1000px;margin-left: 200px;margin-top: 110px;">
			<c:forEach items="${sessionScope.map}" var="map">
			<div class="car-2"style=" " id="${map.key.imagesid+0.4}">
				<ul>
					<li id="td7" style="text-align: left;margin-left: -30px"><input type="checkbox" name="box" onclick="buy(this,${map.key.imagesid+0.3},${map.key.imagesid+0.4})" id="checkbox"></li>
					<li id="td8" style="text-align: left;"><img alt="查看详情" style="outline: 1px solid #DEDEDE" src="${pageContext.request.contextPath }/images/${map.key.carpic }"><div style="width: 350px;margin-left: 90px;position:absolute;margin-top: -50px">${map.key.introduce }</div></li>
					<li id="${map.key.imagesid+0.1 }" style="margin-left: 10px">${map.key.goodsprice }</li>
					<li id="td10" style="margin-left:20px">
					<input type="button" value="-" style="width: 10px;height: 25px;" onclick="jian(${map.key.imagesid},${map.key.imagesid+0.1 },${map.key.imagesid+0.2})" id="jian">
					<input type="text" value="${map.value }" style="width: 30px;height: 25px" id="${map.key.imagesid }">
					<input type="button" value="+" style="width: 10px;height: 25px;" onclick="jia(${map.key.imagesid},${map.key.imagesid+0.1 },${map.key.imagesid+0.2})" id="jia">
					</li>
					<li  id="${map.key.imagesid+0.2 }"  style="margin-left:30px" ><a  name="pri" id="${map.key.imagesid+0.3 }" >${map.key.goodsprice*map.value}</a></li>
					<li id="td12" style="margin-left:30px"><a href="goods.do?method=delfromcar&imagesid=${map.key.imagesid }">&nbsp;&nbsp;&nbsp;删除</a></li>			
				</ul>
			</div>
			</c:forEach>
			</div>
		<div id="jiesuan" style="width: 1000px;height: 50px;margin-top: 450px;margin-left:200px;position: fixed;background-color: pink">
			<table id="jiesuan_table">
			<tr id="" style="">
				<td id="td21" ><input type="checkbox" name="box" onclick="quanxuan1()" id="all1">&nbsp;&nbsp;全选<td>
				<td id="td22" ><a href="#">删除选中的商品</a></td>
				<td id="td23" >已选择<span style="color: red;font-size: 16" id="count"></span>件商品</td>
				<td id="td24" >总计：<span style="color: #E4393C;font-size: 25;font-weight: bolder">¥</span><span id="zongji" style="color: #E4393C;font-size: 25;font-weight: bolder">0.0</span></td>
				<td id="td25" onclick="gosettle()">去结算</td>			
			</tr>
		</table>		
		</div>

<!-- 固定内容开始 -->
<!--底部开始-->
<div class="bottom2" >
	<table>
		<tr>
			<th>购物指南</th>
			<th>配送方式</th>
			<th>支付方式</th>
			<th>售后服务</th>
			<th>特色服务</th>
			<th>京东自营覆盖县区</th>
		</tr>
		<tr>
			<td>购物流程</td>
			<td>上门自提</td>
			<td>货到付款</td>
			<td>售后政策</td>
			<td>夺宝岛</td>
			<td>京东已向全国2357个县区提</td>
		</tr>
		<tr>
			<td>会员政策</td>
			<td>211限时达</td>
			<td>在线支付</td>
			<td>价格保护</td>
			<td>DIY装机</td>
			<td>供自营配送服务，支持货到</td>
		</tr>
		<tr>
			<td>生活旅行</td>
			<td>配送服务</td>
			<td>分期付款</td>
			<td>退款说明</td>
			<td>延保服务</td>
			<td>付款、POS刷卡和售后上门服</td>
		</tr>
		<tr>
			<td>常见问题</td>
			<td>配送费收取标准</td>
			<td>邮局汇款</td>
			<td>返修/退换货</td>
			<td>京东E卡</td>
			<td>务。</td>
		</tr>
		<tr>
			<td>大家电</td>
			<td>海外配送</td>
			<td>公司转账</td>
			<td>取消订单</td>
			<td>京东通信</td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;查看详情></td>
		</tr>
		<tr>
			<td>联系客服</td>
		</tr>
		
	</table>
</div>
<div class="bottom3">
<div style="width: 80%;height: 30px;margin-left: 10%;margin-top: 20px;">
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
<div style="width:70%;margin-left: 13%;height: 60px;margin-top: 10px;" align="center">
	<span style="color: #666666;font-size: 13;">北京市公安局朝阳分局备案编号110105014669&nbsp;&nbsp;京ICP证070359号&nbsp;&nbsp;互联网药品信息服务资格证编号(京)经营性-2014-0008&nbsp;&nbsp;新出发京零 字第大120007号音像制品经营许可证苏宿批005号&nbsp;&nbsp;出版物经营许可证编号新出发(苏)批字第N-012号&nbsp;&nbsp;互联网出版许可证编号新出网证(京)字150号网络文化经营许可证京网文[2014]2148-348号&nbsp;&nbsp;违法和不亮信息举报电话：4006561155 Copyright ? 2004-2015  京东JD.com 版权所有京东旗下网站：360TOP  拍拍网  网银在线</span>
</div>
<div align="center" id="bottom_3">
	<img src="images/54b8871eNa9a7067e.png"/><img src="images/54b8872dNe37a9860.png"/><img src="images/54b8874bN694454a5.png"/><img src="images/54b8875fNad1e0c4c.png"/><img src="images/54b8863dN8d2c61ec.png"/>
</div>
</div>
<!--底部结束-->
<!-- 固定内容结束 -->

<script>
	function gosettle(){
		//location='settle.do?method=getall&membersid='+${user.membersid};
		location='settle.jsp';
	}
	function buy(a,id,bac){	
		var sum = parseFloat(document.getElementById('zongji').innerHTML);
		var price =parseFloat(document.getElementById(id).innerHTML);
		var boxs = document.getElementsByName('box');
		var count = document.getElementById('count').innerHTML;
		var b = 0;
		for(var i=1;i<boxs.length;i++){
			
			if(boxs[i].checked==true){
			document.getElementById(bac).style.background='#FFF4E8';
				b=b+1;
				document.getElementById('count').innerHTML=b;
				document.getElementById('zongji').innerHTML=(sum+price).toFixed(1);	
				
			}
			if(a.checked==false){
			document.getElementById(bac).style.background='white';
				b=count-1;
				document.getElementById('count').innerHTML=b;
			document.getElementById('zongji').innerHTML=(sum-price).toFixed(1);
		}
		}
	}
//全选
	function quanxuan(){
		var jiage = parseFloat(document.getElementById('zongji').innerHTML);	
		var pris =document.getElementsByName('pri');
		var sum=0.0;
		for(var x=0;x<pris.length;x++){
			sum=sum+parseFloat(pris[x].innerHTML);
		}
		var boxs=document.getElementsByName('box');
		var all=document.getElementById('all');
		for(var i=1;i<boxs.length;i++){
			if(all.checked==true){
				boxs[i].checked=true;
				document.getElementById('zongji').innerHTML=sum.toFixed(1);
			}
			if(all.checked==false){
				boxs[i].checked=false;
				document.getElementById('zongji').innerHTML=(0.0).toFixed(1);
			}
		}	
		}	
function quanxuan1(){
		var jiage = parseFloat(document.getElementById('zongji').innerHTML);	
		var pris =document.getElementsByName('pri');
		var sum=0.0;
		for(var x=0;x<pris.length;x++){
			sum=sum+parseFloat(pris[x].innerHTML);
		}
		var boxs=document.getElementsByName('box');
		var all1=document.getElementById('all1');
		for(var i=0;i<boxs.length;i++){
			if(all1.checked==true){
				boxs[i].checked=true;
				document.getElementById('zongji').innerHTML=sum.toFixed(1);
			}
			if(all1.checked==false){
				boxs[i].checked=false;
				document.getElementById('zongji').innerHTML=(0.0).toFixed(1);
			}	
		}	
		}		
		
/*
	function aaa(id,id1,id2){	
		
		var num = document.getElementById(id).value;
		
		if(num <1){	
					window.alert("数量必须大于0");			
					return   ;
				
		}	
		if(num >=100){				
					window.alert("数量不能超过100");
					return;				
		}			
		//创建ajax核心对象
		var ajax = new XMLHttpRequest();	
		//打开并且发送请求   改session   "&x="+Math.random()  改变地址栏   避免缓存
		ajax.open("get" , "goods.do?method=change&op=ping&num="+num+"&id="+id+"&x="+Math.random());
		ajax.send(null);		
		//回调函数
		ajax.onreadystatechange = function(){
			if(ajax.readyState==4 && ajax.status==200){		
				var price = document.getElementById(id1).innerHTML;
				document.getElementById(id2).innerHTML=(price*(num*1)).toFixed(1);
			}
		}								
	}
	*/
 //加减数量
function jian(id,id1,id2){	
		var num = document.getElementById(id).value;
		if(num <=1){				
					return ;	
		}
		//创建ajax核心对象
		var ajax = new XMLHttpRequest();	
		//打开并且发送请求   改session   "&x="+Math.random()  改变地址栏   避免缓存
		ajax.open("get" , "goods.do?method=change&op=jian&id="+id+"&x="+Math.random());
		ajax.send(null);		
		//回调函数
		ajax.onreadystatechange = function(){
			if(ajax.readyState==4 && ajax.status==200){		
				document.getElementById(id).value= num*1 - 1;
				var price = document.getElementById(id1).innerHTML;
				document.getElementById(id2).innerHTML=(price*(num*1-1)).toFixed(1);	
					var sum=parseFloat(document.getElementById('zongji').innerHTML);			
					var boxs=document.getElementsByName('box');
					for(var x=1;x<boxs.length;x++){
						if(box[x].checked==false){					
						sum=sum-parseFloat(document.getElementById(id2).innerHTML);
						//document.getElementById('zongji').innerHTML=sum.toFixed(1)			
				}
				}
			}
		}				
	}
	function jia(id,id1,id2){
		var num = document.getElementById(id).value;
		if(num >=100){				
					window.alert("数量不能超过100");
					return;
		}
		//创建ajax核心对象
		var ajax = new XMLHttpRequest();	
		//打开并且发送请求   改session   "&x="+Math.random()  改变地址栏   避免缓存
		ajax.open("get" , "goods.do?method=change&op=jia&id="+id+"&x="+Math.random());
		ajax.send(null);		
		//回调函数
		ajax.onreadystatechange = function(){
			if(ajax.readyState==4 && ajax.status==200){		
				document.getElementById(id).value= num*1 +1;
				var price = document.getElementById(id1).innerHTML;
				document.getElementById(id2).innerHTML=(price*(num*1+1)).toFixed(1);	
				
				//var price = document.getElementById(id1).innerHTML;
				
					var sum=0.0;
				var boxs=document.getElementsByName('box');
			for(var x=1;x<boxs.length;x++){
						if(box[x].checked==true){					
					var jiage = parseFloat(document.getElementById('zongji').innerHTML);
						sum=sum+parseFloat(document.getElementById(id2).innerHTML);
						document.getElementById('zongji').innerHTML=(sum+price).toFixed(1);	
				}	
		}			
			}
		
				}		
		}				
	
function showdaohang(){
		var daohang=document.getElementById('left_daohang');
		var daohang_bigul = document.getElementById('daohang_bigul');			
		daohang_bigul.style.display='block';
		daohang.style.display='block';
		//daohang.style.visibility='visible';	
		//daohang_bigul.style.visibility='visible';	
	}
	function displaydaohang(){
		var daohang=document.getElementById('left_daohang');
		var daohang_bigul = document.getElementById('daohang_bigul');	
		daohang_bigul.style.display='none';
		daohang.style.display='none';
	}
	
	function showleft_daohang(){
		var left_daohang = document.getElementById('left_daohang');
		var daohang_bigul = document.getElementById('daohang_bigul');	
		left_daohang.style.display='block';
		daohang_bigul.style.display='block';	
	}
	
	function displayleft_daohang(){
		var left_daohang = document.getElementById('left_daohang');
		left_daohang.style.display='none';	
	}
	function change(a){
		var uls = document.getElementsByTagName('div');
		var left_daohang = document.getElementById('left_daohang');
		left_daohang.style.display='block';
		for(var i=8;i<20;i++){			
			if(i/2==a){			
				uls[i].style.display='block';			
			}
			else
				uls[i].style.display='none';
				//x.style.visibility='visible';	
		}
	}
	
	function display(){
		var divs = document.getElementsByTagName('div');	
		for(var i=7;i<20;i++){
			divs[i].style.display='none';
		}
}
</script>






 