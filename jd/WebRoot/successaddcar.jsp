<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title></title>
<meta name="" content="">

<!-- 静态页面，直接引用 -->
	<link rel="stylesheet" href="css/successaddcar.css"  type="text/css">
	

</head>
<body>

<div id="header-grey">
<div style="position: absolute;height: 30px;width: 1340px;">
	<ul id="header-word"> 
		<c:if test="${user.membersname==null}"> 
		<li> 
			<a href="login.jsp">你好，请登录</a> 
			<a href="#" style="color: rgb(200, 22, 35); text-decoration: none;">注册</a> 
		</li> 
		</c:if> 
		<c:if test="${user.membersname!=null}"> 
		<li> 
			<a href="#">${user.membersname }</a> 
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

<div id="quanbufenlei" onmouseover="showdaohang()" onmouseout="displaydaohang()">全部商品分类</div>
<div id="list1" >
	<ul>
		<a href="#"><li>服装城</li></a>
		<a href="#"><li>美妆馆</li></a>
		<a href="#"><li>超市</li></a>
		<a href="#"><li>全球购</li></a>
		<a href="#"><li>闪购</li></a>
		<a href="#"><li>团购</li></a>
		<a href="#"><li>拍卖</li></a>
		<a href="#"><li>金融</li></a>
	
	</ul>
	
</div>
<hr  width="1340px" color="#B61E1D">

<!--左侧导航-->
<div id="left_daohang" style="display: none;" onmouseout="displayleft_daohang()" onmouseover="showleft_daohang()">
	<ul id="daohang_bigul" >
	<li onmouseover="change(4)" onmouseout="display()" id="aaa"><a href="#" >手机、数码、京东通信&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;></a>
			<div class="ul1" id="ul1">
			<ul id="ul1_ul">
		      <li><a href="#"><span>大家电</span></a>&nbsp;><a href="goodstype.do?method=getallgoodsbyid&goodstypeid=1"><span>平板电视</span></a><a href="#"> <span>空调</span></a> <a href="#"><span>冰箱</span> </a><a href="#"><span>洗衣机</span></a></li>
		      <li><a href="#"><span>生活电器</span></a>&nbsp;><a href="#"><span>电风扇</span></a><a href="#"><span>冷风扇</span></a><a href="#"><span>电吹风</span></a></li>
		      <li><a href="#"><span>厨房电器</span></a>&nbsp;><a href="#"><span>电压力锅</span></a><a href="#"><span>电饭煲</span></a><a href="#"><span>豆浆机</span></a></li>
		      <li><a href="#"><span>个护健康</span></a>&nbsp;><a href="#"><span>剃须刀</span></a><a href="#"><span>血糖仪</span></a><a href="#"><span>血压计</span></a></li>
		      <li><a href="#"><span>五金家装</span></a>&nbsp;><a href="#"><span>门铃</span></a><a href="#"><span>插座</span></a><a href="#"><span>家具</span></a></li>
		      
		    </ul>
		    </div> 
		</li>
		<li onmouseover="change(4.5)" onmouseout="display()"><a href="#" >电脑、办公&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;></a>
		<div class="ul1" style="margin-top: -51px">
			<ul id="ul1_ul" class="ul1_ul2">
		      <li><a href="#"><span>电脑整机&nbsp;>平板电视 &nbsp;空调 &nbsp;洗衣机</span></a> </li>
		      <li><a href="#"><span>电脑配件&nbsp;>电风扇 &nbsp;冷风扇 &nbsp;电吹风</span></a> </li>
		      <li><a href="#"><span>外设产品&nbsp;&nbsp;>电压力锅 &nbsp;电饭煲 &nbsp;豆浆机</span></a> </li>
			  <li><a href="#"><span>游戏设备&nbsp;>剃须刀 &nbsp;血糖仪 &nbsp;血压计</span></a> </li>
		    </ul>
		   </div>
		</li>
		<li onmouseover="change(5)" onmouseout="display()"><a href="#" >家居、家具、家装、厨具&nbsp;&nbsp;&nbsp;></a>
			<div class="ul1" style="margin-top: -81px">
			<ul id="ul1_ul" >
		    <li><a href="#"><span>厨具&nbsp;>平板电视 &nbsp;空调 &nbsp;洗衣机</span></a> </li>
		    <li><a href="#"><span>家装建材&nbsp;>电风扇 &nbsp;冷风扇 &nbsp;电吹风</span></a> </li>
		    <li><a href="#"><span>家纺&nbsp;&nbsp;>电压力锅 &nbsp;电饭煲 &nbsp;豆浆机</span></a> </li>
		    <li><a href="#"><span>家具&nbsp;>剃须刀 &nbsp;血糖仪 &nbsp;血压计</span></a> </li>
		  </ul>
		  </div>
		</li>
		<li onmouseover="change(5.5)" onmouseout="display()"><a href="#">男装、女装、内衣、珠宝&nbsp;&nbsp;&nbsp;></a>
			<div class="ul1" style="margin-top: -111px">
			<ul id="ul1_ul">
		    <li><a href="#"><span>女装</span></a> </li>
		    <li><a href="#"><span>男装</span></a> </li>
		    <li><a href="#"><span>内衣</span></a> </li>
		    <li><a href="#"><span>配饰</span></a> </li>
		  </ul>
		  </div>
		</li>
		<li onmouseover="change(6)" onmouseout="display()"><a href="#" >个护化妆、清洁用品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;></a>
			<div class="ul1" style="margin-top: -141px">
			<ul id="ul1_ul">
		    <li><a href="#"><span>面部护肤</span></a> </li>
		    <li><a href="#"><span>洗发护发</span></a> </li>
		    <li><a href="#"><span>身体护肤</span></a> </li>
		    <li><a href="#"><span>口腔护理</span></a> </li>
		  </ul>
		  </div>
		</li>
		<li onmouseover="change(6.5)" onmouseout="display()"><a href="#" >鞋靴、箱包、钟表、奢侈品&nbsp;></a>
			<div class="ul1" style="margin-top: -171px">
			<ul id="ul1_ul" >
		    <li><a href="#"><span>时尚女鞋</span></a> </li>
		    <li><a href="#"><span>流行男鞋</span></a> </li>
		    <li><a href="#"><span>潮流女包</span></a> </li>
		    <li><a href="#"><span>精品男包</span></a> </li>
		  </ul>
		  </div>
		</li>
		
		<li onmouseover="change(7)" onmouseout="display()"><a href="#" >运动户外&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;></a>
		<div class="ul1" style="margin-top: -201px">
			 <ul id="ul1_ul">
			    <li><a href="#">运动鞋包</a></li>
			    <li><a href="#">运动服饰</a></li>
			    <li><a href="#">健身训练</a></li>
			    <li><a href="#">骑行运动</a></li>
			  </ul>
			  </div>
		</li>
		<li onmouseover="change(7.5)" onmouseout="display()"><a href="#" >汽车、汽车用品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;></a>
		<div class="ul1" style="margin-top: -231px">
			<ul id="ul1_ul">
		    <li><a href="#">汽车车型</a></li>
		    <li><a href="#">汽车价格</a></li>
		    <li><a href="#">汽车品牌</a></li>
		    <li><a href="#">维修保养</a></li>
		  </ul>
		  </div>
		</li>
		<li onmouseover="change(8)" onmouseout="display()"><a href="#" >母婴、玩具乐器&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;></a>
			<div class="ul1" style="margin-top: -261px">
			 <ul id="ul1_ul">
		    <li><a href="#">奶粉</a></li>
		    <li><a href="#">营养辅食</a></li>
		    <li><a href="#">尿裤湿巾</a></li>
		    <li><a href="#">洗护用品</a></li>
		  </ul>
		  </div>
		</li>
		<li onmouseover="change(8.5)" onmouseout="display()"><a href="#" >食品、酒类、生鲜特产&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;></a>
			<div class="ul1" style="margin-top: -291px">
			 <ul id="ul1_ul">
		      <li><a href="#">手机通讯</a></li>
		      <li><a href="#">京东通信</a></li>
		      <li><a href="#">运营商</a></li>
		      <li><a href="#">手机配件</a></li>
		      <li><a href="#">摄影摄像</a></li>
		    </ul>
		    </div>
		</li>
		<li onmouseover="change(9)" onmouseout="display()"><a href="#" >营养保健&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;></a>
			 <div class="ul1" style="margin-top: -321px">
			 <ul id="ul1_ul">
			    <li><a href="#">运动鞋包</a></li>
			    <li><a href="#">运动服饰</a></li>
			    <li><a href="#">健身训练</a></li>
			    <li><a href="#">骑行运动</a></li>
			  </ul>
			  </div>
		</li>
		<li onmouseover="change(9.5)" onmouseout="display()"><a href="#" >图书、音像、电子书&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;></a>
			 <div class="ul1" style="margin-top: -351px">
			 <ul id="ul1_ul">
		      <li><a href="#">手机通讯</a></li>
		      <li><a href="#">京东通信</a></li>
		      <li><a href="#">运营商</a></li>
		      <li><a href="#">手机配件</a></li>
		      <li><a href="#">摄影摄像</a></li>
		    </ul>
		    </div>
		</li>
		<li onmouseover="change(10)" onmouseout="display()"><a href="#" >彩票、旅行、票务&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;></a>
			<div class="ul1" style="margin-top: -381px">
			 <ul id="ul1_ul">
		      <li><a href="#">手机通讯</a></li>
		      <li><a href="#">京东通信</a></li>
		      <li><a href="#">运营商</a></li>
		      <li><a href="#">手机配件</a></li>
		      <li><a href="#">摄影摄像</a></li>
		    </ul>
		    </div>
		</li>
		<li onmouseover="change(10.5)" onmouseout="display()"><a href="#" >理财、众筹、白条&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;></a>
			<div class="ul1" style="margin-top: -411px">
			 <ul id="ul1_ul">
		      <li><a href="#">手机通讯</a></li>
		      <li><a href="#">京东通信</a></li>
		      <li><a href="#">运营商</a></li>
		      <li><a href="#">手机配件</a></li>
		      <li><a href="#">摄影摄像</a></li>
		    </ul>
		    </div>
		</li>
		
	</ul>	
</div>

<!-- 中间 -->
<div id="center" style="width: 1340px;height: 120px;position: absolute;">
	<div style="width: 360px;margin-left:340px;margin-top: 50px;float: left;">
		<span style="color: #7ABD54;font-family: 华文细黑;font-weight: bolder;font-size: 30">√商品已成功加入购物车!</span>	
	</div>
	<div style="float: left;margin-top: 50px;position: absolute;margin-left: 730px;height: 35px;">
	<img src="images/gocar.jpg" onclick="gocar()">
	</div>
	<div style="margin-top: 60px;position: absolute;margin-left: 890px" id="continue">
	<span style="font-size: 12;margin-top: 50px">您还可以&nbsp;<a href="javascript:history.back();">继续购物</a></span>
	</div>
</div>

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
<div><br></div> 
<script>
function gocar(){
	location = "goods.do?method=gocar&username=${user.membersname}";
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