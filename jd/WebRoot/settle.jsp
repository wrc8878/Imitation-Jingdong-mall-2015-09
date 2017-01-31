<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<head>
	<title></title>
	<meta name="" content="">

	<!-- 静态页面，直接引用 -->
	<link rel="stylesheet" href="css/settle.css" type="text/css">


</head>
<body>
	<div id="header-grey">
		<div style="position: absolute; height: 30px; width: 1340px;">
			<ul id="header-word">
				<c:if test="${user.membersname==null}">
					<li>
						<a href="login.jsp"><span id="username">你好，请登录</span> </a>
						<a href="#"
							style="color: rgb(200, 22, 35); text-decoration: none;">注册</a>
					<br></li>
				</c:if>
				<c:if test="${user.membersname!=null}">
					<li>
						<a href="#"><span id="username">${user.membersname }</span> </a>
						<a href="#"
							style="color: rgb(200, 22, 35); text-decoration: none;">退出</a>
					<br></li>
				</c:if>
				<li id="spacer">
					<br>
				</li>
				<li id="test">
					<a href="#">我的订单</a>
				</li>
				<li id="spacer">
					<br>
				</li>
				<li>
					<a href="#">${receive.recname }</a>
				</li>
				<li id="spacer">
					<br>
				</li>
				<li>
					<a href="#">京东会员</a>
				</li>
				<li id="spacer">
					<br>
				</li>
				<li>
					<a href="#">企业采购</a>
				</li>
				<li id="spacer">
					<br>
				</li>
				<li>
					<a href="#">手机京东</a>
				</li>
				<li id="spacer">
					<br>
				</li>
				<li>
					<a href="#">关注京东</a>
				</li>
				<li id="spacer">
					<br>
				</li>
				<li>
					<a href="#">客户服务</a>
				</li>
			</ul>
			<br>
			<ul id="header-word">

			</ul>
		</div>
	</div>
	<div id="top-logo" style="">
		<div id="logo" style="">
			<a href="main.jsp"><img src="images/logo.jpg" /> </a>
		</div>
		<div id="welcome">
			<span>结算页</span>
		</div>
		<div
			style="position: absolute; width: 500px; height: 50px; outline: 1px solid red; margin-left: 650px; margin-top: 40px"></div>
	</div>

	<!-- 订单结算 -->
	<div
		style="margin-top: -20px; width: 180; margin-left: 180px; margin-bottom: 10px">
		<span
			style="color: #666666; font-size: 17; font-weight: bolder; font-family: 宋体">填写并核对订单信息</span>
	</div>


	<!-- 新增收货地址 -->
	<div
		style="" class="center">

		<!-- 收货人信息 -->
		<div
			style="width: 940px; height: 80px; border-bottom: 1px solid #E6E6E6; margin-left: 15px; margin-top: 20px">
			<span style="font-size: 16; font-weight: bolder; margin-right: 770px">收货人信息</span>
			<span style="font-size: 13"> <a href="javascript:void(0)"
				onclick="showaddress()">新增收货地址</a> </span>
			<div
				style="position: relative; width: 200px; height: 20px; outline: 1px solid red; margin-top: 20px; margin-left: 15px"
				id="person">
				<span style="font-size: 13; color: red" id="person"></span>
			</div>
		</div>

		<!-- 父页面弹出 -->
		<div id="light" class="white_content">
			<div id="closebutton" style="">
				新增收货人信息
				<a href="javascript:void(0)"
					onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'"><span
					style="margin-left: 470px;">X</span> </a>
			</div>
			<div
				style="position: absolute; width: 550px; height: 350px; margin-top: 40px; margin-left: 20px">
				<table id="addresstable">
					<tr>
						<td id="td1">
							<span style="color: red">*</span><span
								style="font-size: 13; color: #666666;">收货人：</span>
							<br>
						</td>
						<td>
							<input type="text" id="recname">
							<br>
						</td>
					</tr>
					<tr>
						<td id="td1">
							<span style="color: red">*</span><span
								style="font-size: 13; color: #666666;">所在地区：</span>
							<br>
						</td>
						<td>
							<div style="width: 450px;">
								<span id="aaa" style="position: relative; width: 450px"></span>
								<script type="text/javascript" src="js/jquery.js"></script>
								<script type="text/javascript" src="js/chinaprovinces_0.2.1.js"></script>
								<script>
				$("#aaa").chinaprovinces({valueType:'name',change:function(province,city,area){
					$("#demo2_province").val(province);
					$("#demo2_city").val(city);
					$("#demo2_area").val(area);
					document.getElementById('ooo').innerHTML=province;
					document.getElementById('ppp').innerHTML=city;
					document.getElementById('qqq').innerHTML=area;
				}});
				</script>

								<div id="ooo" style="display: none"></div>
								<div id="ppp" style="display: none"></div>
								<div id="qqq" style="display: none"></div>

							</div>
							<br>
						</td>
					</tr>
					<tr>
						<td id="td1">
							<span style="color: red">*</span><span
								style="font-size: 13; color: #666666;">详细地址：</span>
							<br>
						</td>
						<td>
							<input type="text" id="detailadd">
							<br>
						</td>
					</tr>
					<tr>
						<td id="td1">
							<span style="color: red">*</span><span
								style="font-size: 13; color: #666666;">手机号码：</span>
							<br>
						</td>
						<td>
							<input type="text" id="phone">
							&nbsp;&nbsp;&nbsp;&nbsp;
							<span style="font-size: 13; color: #666666;">固定电话：</span>
							<input type="text" id="guhua">
							<br>
						</td>
					</tr>
					<tr>
						<td id="td1">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<span style="font-size: 13; color: #666666;">邮箱：</span>
							<br>
						</td>
						<td>
							<input type="text" id="email">
							<br>
						</td>
					</tr>
					<tr>
						<td id="td1">
							<br>
						</td>
						<td>
							<span style="font-size: 13; color: #666666;">用来接收订单提醒邮件，便于您及时了解订单状态</span>
							<br>
						</td>
					</tr>
					<tr>
						<td id="td1">
							<span style="font-size: 13; color: #666666;">地址别名：</span>
							<br>
						</td>
						<td>
							<input type="text">
							&nbsp;&nbsp;&nbsp;&nbsp;
							<span style="font-size: 13; color: #666666;">建议填写常用名称</span>
							<br>
						</td>
					</tr>
					<tr>
						<td>

							<br>
						</td>
						<td>
							<input type="button" value="保存收货人信息" onclick="save()">
						</td>
					</tr>
				</table>
			</div>
		</div>
		<div id="fade" class="black_overlay"></div>

		<!-- 支付方式 -->
		<div style="" id="payway">
			<span style="font-size: 16; font-weight: bolder; margin-right: 770px">支付方式</span>
			<div style="" onclick="changepayway(1)" id="pay1">
				货到付款
			</div>
			<div style="border: 2px solid #E4393C" onclick="changepayway(2)"
				id="pay2">
				在线支付
			</div>
			<div style="" onclick="changepayway(3)" id="pay3">
				公司转账
			</div>
			<div style="" onclick="changepayway(4)" id="pay4">
				邮局汇款
			</div>
			<div style="" onclick="changepayway(5)" id="pay5">
				分期付款
			</div>
		</div>

		<!-- 送货清单 -->
		<div
			style="width: 940px; height: auto; border-bottom: 1px solid #E6E6E6; margin-left: 15px; margin-top: 120px; position: relative;">
			<span style="font-size: 16; font-weight: bolder; margin-right: 770px">送货清单</span>
			<span style="font-size: 13"><a href="javascript:void(0)">返回修改购物车</a></span>
			<div
				style="width: 920px; height: auto; background: #F7F7F7; margin-top: 130px; margin-left: 10px; min-height: 100px; position: inherit;">
				<div
					style="position: absolute; margin-left: 20px; margin-top: 10px; margin-bottom: 100px">
					<span
						style="font-size: 16; font-weight: bolder; color: #867373; margin-left: 10px;">配送方式</span>
				</div>
				<div style="border: 2px solid #E4393C" id="shipway">
					京东快递
				</div>
				<div id="settlecar"
					style="width: 620px; height: auto; position: inherit; margin-left: 300px; margin-top: -115px; background: #F7F7F7;">
					<c:forEach items="${sessionScope.map}" var="map">
						<div class="car-2" style="margin-top: 20px; margin-bottom: 40px">
							<ul>
								<li id="td8" style="text-align: left; margin-top: 5px;">
									<img alt="查看详情" style="outline: 1px solid #DEDEDE"
										src="${pageContext.request.contextPath }/images/${map.key.carpic }">
									<div
										style="width: 300px; margin-left: 90px; position: absolute; margin-top: -50px; font-size: 13">
										${map.key.introduce }
									</div>
								</li>
								<li style="margin-left: 400px; margin-top: -50px">
									<span style="font-size: 20; color: #E7585A">¥${map.key.goodsprice
										}</span>
								</li>
								<li style="margin-left: 500px; margin-top: -20px">
									<a name="pri">×${map.value}</a>
								</li>

							</ul>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>

		<!-- 发票信息 -->
		<div
			style="width: 940px; height: 80px; border-bottom: 1px solid #E6E6E6; margin-left: 15px; margin-top: 20px; position: relative;">
			<span style="font-size: 16; font-weight: bolder; margin-right: 770px">发票信息</span>
			<div
				style="position: absolute; width: 300px; height: 30px; margin-top: 20px; margin-left: 15px">
				<span style="font-size: 13;line-height: 30px; ">普通发票（纸质）&nbsp;&nbsp;&nbsp;&nbsp; 个人&nbsp;&nbsp;&nbsp;&nbsp; 明细</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<span style="font-size: 13;line-height: 30px; "><a href="javascript:void(0)">修改</a></span>
			</div>
		</div>
		
		<!-- 优惠 -->
		<div id="youhui" style="border-bottom: 1px solid #E6E6E6;">
		<ul  style="margin-top: 30px;margin-bottom: 20px">
			<li><a href="javascript:void(0)">使用优惠券（京券/东券/免运费券）</a></li>
			<li><a href="javascript:void(0)">使用京东卡</a></li>
			<li><a href="javascript:void(0)">使用京东E卡/图书卡（不能与京东卡同时使用）</a></li>
			<li><a href="javascript:void(0)">使用京豆</a></li>
			<li><a href="javascript:void(0)">使用余额</a></li>
		</ul>
		</div>
		
		<div style="position: absolute;width: 970px;height: 80px;outline: 1px solid red;margin-top: 20px;padding-top: 20px;">
			<span style="font-size: 13;color: #999999;margin-top: 20px;margin-left: 550px;margin-bottom: 20px">寄送至：</span>
			<span style="font-size: 13;color: #999999;margin-top: 40px;margin-left: 700px">收货人：</span>
		</div>
		
		
		
		
		
	</div>


	


	<!-- 总价结算 -->
	<div
		style="width: 1340px; height: 50px; position: fixed; background-color: #F2F2F2; margin-left: 5px; margin-top: 400px">
		<div
			style="width: 250px; height: 40px; position: absolute; margin-top: 5px; margin-left: 750px">
			<span style="line-height: 40px; font-size: 15; color: #7D7D7D">应付金额：</span>
			<span
				style="line-height: 40px; font-size: 30; color: #E65458; font-weight: bolder">¥0.00</span>

		</div>
		<div
			style="width: 120px; height: 40px; margin-left: 1000px; position: absolute; background-color: #E65458; border-radius: 5px; margin-top: 5px; font-size: 20; color: white; font-family: 黑体; line-height: 40px; z-index: 1005"
			align="center">
			提交订单
		</div>
	</div>



	<!--尾部-->
	<div class="bottom1">
		<div id="bottom1_div">
			<span><img src="images/bottom_1.jpg" /> </span><span>品类齐全&nbsp;轻松购物</span>
		</div>
		<div id="bottom1_div">
			<span><img src="images/bottom_2.jpg" /> </span><span>多仓直发&nbsp;极速配送</span>
		</div>
		<div id="bottom1_div">
			<span><img src="images/bottom_3.jpg" /> </span><span>正品行货&nbsp;精致服务</span>
		</div>
		<div id="bottom1_div">
			<span><img src="images/bottom_4.jpg" /> </span><span>天天低价&nbsp;畅选无忧</span>
		</div>
	</div>
	<!--底部开始-->
	<div class="bottom2">
		<table>
			<tr>
				<th>
					购物指南
				</th>
				<th>
					配送方式
				</th>
				<th>
					支付方式
				</th>
				<th>
					售后服务
				</th>
				<th>
					特色服务
				</th>
				<th>
					京东自营覆盖县区
				</th>
			</tr>
			<tr>
				<td>
					购物流程
				</td>
				<td>
					上门自提
				</td>
				<td>
					货到付款
				</td>
				<td>
					售后政策
				</td>
				<td>
					夺宝岛
				</td>
				<td>
					京东已向全国2357个县区提
				</td>
			</tr>
			<tr>
				<td>
					会员政策
				</td>
				<td>
					211限时达
				</td>
				<td>
					在线支付
				</td>
				<td>
					价格保护
				</td>
				<td>
					DIY装机
				</td>
				<td>
					供自营配送服务，支持货到
				</td>
			</tr>
			<tr>
				<td>
					生活旅行
				</td>
				<td>
					配送服务
				</td>
				<td>
					分期付款
				</td>
				<td>
					退款说明
				</td>
				<td>
					延保服务
				</td>
				<td>
					付款、POS刷卡和售后上门服
				</td>
			</tr>
			<tr>
				<td>
					常见问题
				</td>
				<td>
					配送费收取标准
				</td>
				<td>
					邮局汇款
				</td>
				<td>
					返修/退换货
				</td>
				<td>
					京东E卡
				</td>
				<td>
					务。
				</td>
			</tr>
			<tr>
				<td>
					大家电
				</td>
				<td>
					海外配送
				</td>
				<td>
					公司转账
				</td>
				<td>
					取消订单
				</td>
				<td>
					京东通信
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;查看详情>
				</td>
			</tr>
			<tr>
				<td>
					联系客服
				</td>
			</tr>

		</table>
	</div>
	<div class="bottom3">
		<div
			style="width: 80%; height: 30px; margin-left: 10%; margin-top: 20px;">
			<ul>
				<li>
					<a href="#">关于我们</a>
				</li>
				<li>
					<a href="#">联系我们</a>
				</li>
				<li>
					<a href="#">商家入驻</a>
				</li>
				<li>
					<a href="#">营销中心</a>
				</li>
				<li>
					<a href="#">手机京东</a>
				</li>
				<li>
					<a href="#">友情链接</a>
				</li>
				<li>
					<a href="#">销售联盟</a>
				</li>
				<li>
					<a href="#">京东社区</a>
				</li>
				<li>
					<a href="#">京东公益</a>
				</li>
				<li>
					<a href="#">English&nbsp;Site</a>
				</li>
				<li>
					<a href="#">Contact&nbsp;Us</a>
				</li>

			</ul>
		</div>
		<div
			style="width: 70%; margin-left: 13%; height: 60px; margin-top: 10px;"
			align="center">
			<span style="color: #666666; font-size: 13;">北京市公安局朝阳分局备案编号110105014669&nbsp;&nbsp;京ICP证070359号&nbsp;&nbsp;互联网药品信息服务资格证编号(京)经营性-2014-0008&nbsp;&nbsp;新出发京零
				字第大120007号音像制品经营许可证苏宿批005号&nbsp;&nbsp;出版物经营许可证编号新出发(苏)批字第N-012号&nbsp;&nbsp;互联网出版许可证编号新出网证(京)字150号网络文化经营许可证京网文[2014]2148-348号&nbsp;&nbsp;违法和不亮信息举报电话：4006561155
				Copyright ? 2004-2015 京东JD.com 版权所有京东旗下网站：360TOP 拍拍网 网银在线</span>
		</div>
		<div align="center" id="bottom_3">
			<img src="images/54b8871eNa9a7067e.png" />
			<img src="images/54b8872dNe37a9860.png" />
			<img src="images/54b8874bN694454a5.png" />
			<img src="images/54b8875fNad1e0c4c.png" />
			<img src="images/54b8863dN8d2c61ec.png" />
		</div>
	</div>
	<!--底部结束-->
</body>


<script>
	function save(){
	
		document.getElementById('fade').style.display='none';
		document.getElementById('light').style.display='none';
		var recname = document.getElementById('recname').value;
		var province = document.getElementById('ooo').innerHTML;
		var city =document.getElementById('ppp').innerHTML;
		var area =document.getElementById('qqq').innerHTML;
		var detailadd = document.getElementById('detailadd').value;
		var phone = document.getElementById('phone').value;
		//var guhua = document.getElementById('guhua').value;       
		//var email = document.getElementById('email').value;
		/*
		var request = new XMLHttpRequest();
		
		//回调函数
		request.onreadystatechange = function(){
		
			if(request.readyState==4 && request.status==200){
				//接收结果
				var result = request.responseText;//服务器返回的文本
				document.getElementById('test').innerHTML=result;
				
				
				if(result==true){
					//location = 'settle.do?method=test&membersid='+${user.membersid};
					window.location.href='main.jsp';
				}
				
				
				
			}
		} 
		//打开并且发送   去服务器中查找可用还是不可用   async:true
		request.open("get" , "settle.do?method=addreceive&members="+${user.membersid}+"&recname="+recname+"&province="+province+"&city="+city+"&area="+area+"&detailadd="+detailadd+"&phone="+phone+"&x="+Math.random(),false);
		request.send(null);
		*/
		location='settle.do?method=addreceive&members='+${user.membersid}+'&recname='+recname+'&province='+province+'&city='+city+'&area='+area+'&detailadd='+detailadd+'&phone='+phone;
		
		
	}

	function showaddress(){
		document.getElementById('light').style.display='block'; document.getElementById('fade').style.display='block';
		
	}
	function changepayway(a){
		if(a==1){
			document.getElementById('pay1').style.border='2px solid #E4393C';
			document.getElementById('pay2').style.border='2px solid #E6E6E6';
			document.getElementById('pay3').style.border='2px solid #E6E6E6';
			document.getElementById('pay4').style.border='2px solid #E6E6E6';
			document.getElementById('pay5').style.border='2px solid #E6E6E6';
		}
		if(a==2){
			document.getElementById('pay1').style.border='2px solid #E6E6E6';
			document.getElementById('pay2').style.border='2px solid #E4393C';
			document.getElementById('pay3').style.border='2px solid #E6E6E6';
			document.getElementById('pay4').style.border='2px solid #E6E6E6';
			document.getElementById('pay5').style.border='2px solid #E6E6E6';
		}
		if(a==3){
			document.getElementById('pay1').style.border='2px solid #E6E6E6';
			document.getElementById('pay2').style.border='2px solid #E6E6E6';
			document.getElementById('pay3').style.border='2px solid #E4393C';
			document.getElementById('pay4').style.border='2px solid #E6E6E6';
			document.getElementById('pay5').style.border='2px solid #E6E6E6';
		}
		if(a==4){
			document.getElementById('pay1').style.border='2px solid #E6E6E6';
			document.getElementById('pay2').style.border='2px solid #E6E6E6';
			document.getElementById('pay3').style.border='2px solid #E6E6E6';
			document.getElementById('pay4').style.border='2px solid #E4393C';
			document.getElementById('pay5').style.border='2px solid #E6E6E6';
		}
		if(a==5){
			document.getElementById('pay1').style.border='2px solid #E6E6E6';
			document.getElementById('pay2').style.border='2px solid #E6E6E6';
			document.getElementById('pay3').style.border='2px solid #E6E6E6';
			document.getElementById('pay4').style.border='2px solid #E6E6E6';
			document.getElementById('pay5').style.border='2px solid #E4393C';
		}
	}
</script>