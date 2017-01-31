<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
	<head>
		<link rel="Shortcut Icon" href="QQ截图20151011212639.ico">
		<title></title>

		<meta name="" content="">
		<!-- 静态页面，直接引用 -->
		<link rel="stylesheet" href="css/main.css" type="text/css">
	</head>
	<body>
		<div id="header-grey">
			<div style="position: absolute; height: 30px; width: 1340px;">
				<ul id="header-word">
					<c:if test="${user.membersname==null}">
						<li>
							<a href="login.jsp">你好，请登录</a>
							<a href="regist.jsp"
								style="color: #C81623; text-decoration: none;">注册</a>
						</li>
					</c:if>
					<c:if test="${user.membersname!=null}">
						<li>
							<a href="#">${user.membersname }</a>
							<a href="user.do?method=getuserbyusername&username=${user.membersname}"
								style="color: #C81623; text-decoration: none;">退出</a>
						</li>
					</c:if>
					<li id="spacer"></li>
					<li>
						<a href="#">我的订单</a>
					</li>
					<li id="spacer"></li>
					<li>
						<a href="#">我的京东</a>
					</li>
					<li id="spacer"></li>
					<li>
						<a href="#">京东会员</a>
					</li>
					<li id="spacer"></li>
					<li>
						<a href="#">企业采购</a>
					</li>
					<li id="spacer"></li>
					<li>
						<a href="#">手机京东</a>
					</li>
					<li id="spacer"></li>
					<li>
						<a href="#">关注京东</a>
					</li>
					<li id="spacer"></li>
					<li>
						<a href="#">客户服务</a>
					</li>

				</ul>
			</div>
		</div>
		<div id="top-logo">
			<div id="logo">
				<a href="main.jsp"><img src="images/logo.jpg" />
				</a>
			</div>
			<div>
				<input type="text" placeholder="耳机" id="search-box" />
				<input type="button" value="搜索"
					style="color: white; font-size: 17; border-color: #B61E1D; background-color: #B61D1D; width: 82px; height: 37px; margin-top: 43px; margin-left: 483px">
				 
		<div style="" id="mycar" onmouseover="showcar()" onmouseout="notshowcar()">
		<img src="images/smallcar.jpg" style="margin-top: 7px;margin-left: 10px">
		<div style="margin-top: -15px;position: absolute;margin-left: 35px">
		<a href="car.jsp"><span style="color: #656565;font-size: 13;font-family: 宋体;">我的购物车&nbsp;&nbsp;></span></a>
		</div>
		</div>
		
		
	</div>
</div>

		<div id="quanbufenlei">
			全部商品分类
		</div>
		<div id="list1">
			<ul>
				<a href="#"><li>
						服装城
					</li>
				</a>
				<a href="#"><li>
						美妆馆
					</li>
				</a>
				<a href="#"><li>
						超市
					</li>
				</a>
				<a href="#"><li>
						全球购
					</li>
				</a>
				<a href="#"><li>
						闪购
					</li>
				</a>
				<a href="#"><li>
						团购
					</li>
				</a>
				<a href="#"><li>
						拍卖
					</li>
				</a>
				<a href="#"><li>
						金融
					</li>
				</a>

			</ul>
		</div>
		<hr width="1340px" color="#B61E1D">

		<!--左侧导航-->
		<div id="left_daohang" onmouseover="bbb()" style="display: block">
			<ul id="daohang_bigul">
				<li onmouseover="change(5)" onmouseout="display()" id="aaa">
					<a href="#">家用电器&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;></a>
					<div class="ul1" onmouseout="qqq()" id="ul1">
						<ul id="ul1_ul">
							<li>
								<a href="#"><span>大家电</span>
								</a>&nbsp;>
								<a href="goodstype.do?method=getallgoodsbyid"><span>平板电视</span>
								</a><a href="#"> <span>空调</span>
								</a>
								<a href="#"><span>冰箱</span> </a><a href="#"><span>洗衣机</span>
								</a>
							</li>
							<li>
								<a href="#"><span>生活电器</span>
								</a>&nbsp;>
								<a href="#"><span>电风扇</span>
								</a><a href="#"><span>冷风扇</span>
								</a><a href="#"><span>电吹风</span>
								</a>
							</li>
							<li>
								<a href="#"><span>厨房电器</span>
								</a>&nbsp;>
								<a href="#"><span>电压力锅</span>
								</a><a href="#"><span>电饭煲</span>
								</a><a href="#"><span>豆浆机</span>
								</a>
							</li>
							<li>
								<a href="#"><span>个护健康</span>
								</a>&nbsp;>
								<a href="#"><span>剃须刀</span>
								</a><a href="#"><span>血糖仪</span>
								</a><a href="#"><span>血压计</span>
								</a>
							</li>
							<li>
								<a href="#"><span>五金家装</span>
								</a>&nbsp;>
								<a href="#"><span>门铃</span>
								</a><a href="#"><span>插座</span>
								</a><a href="#"><span>家具</span>
								</a>
							</li>
						</ul>
					</div>

				</li>
				<li onmouseover="change(5.5)" onmouseout="display()">
					<a href="#">电脑、办公&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;></a>
					<div class="ul1" style="margin-top: -51px">
						<ul id="ul1_ul" class="ul1_ul2">
							<li>
								<a href="#"><span>电脑整机&nbsp;>平板电视 &nbsp;空调 &nbsp;洗衣机</span>
								</a>
							</li>
							<li>
								<a href="#"><span>电脑配件&nbsp;>电风扇 &nbsp;冷风扇 &nbsp;电吹风</span>
								</a>
							</li>
							<li>
								<a href="#"><span>外设产品&nbsp;&nbsp;>电压力锅 &nbsp;电饭煲
										&nbsp;豆浆机</span>
								</a>
							</li>
							<li>
								<a href="#"><span>游戏设备&nbsp;>剃须刀 &nbsp;血糖仪 &nbsp;血压计</span>
								</a>
							</li>
						</ul>
					</div>
				</li>
				<li onmouseover="change(6)" onmouseout="display()">
					<a href="#">家居、家具、家装、厨具&nbsp;&nbsp;&nbsp;></a>
					<div class="ul1" style="margin-top: -81px">
						<ul id="ul1_ul">
							<li>
								<a href="#"><span>厨具&nbsp;>平板电视 &nbsp;空调 &nbsp;洗衣机</span>
								</a>
							</li>
							<li>
								<a href="#"><span>家装建材&nbsp;>电风扇 &nbsp;冷风扇 &nbsp;电吹风</span>
								</a>
							</li>
							<li>
								<a href="#"><span>家纺&nbsp;&nbsp;>电压力锅 &nbsp;电饭煲
										&nbsp;豆浆机</span>
								</a>
							</li>
							<li>
								<a href="#"><span>家具&nbsp;>剃须刀 &nbsp;血糖仪 &nbsp;血压计</span>
								</a>
							</li>
						</ul>
					</div>
				</li>
				<li onmouseover="change(6.5)" onmouseout="display()">
					<a href="#">男装、女装、内衣、珠宝&nbsp;&nbsp;&nbsp;></a>
					<div class="ul1" style="margin-top: -111px">
						<ul id="ul1_ul">
							<li>
								<a href="#"><span>电脑整机&nbsp;>平板电视 &nbsp;空调 &nbsp;洗衣机</span>
								</a>
							</li>
							<li>
								<a href="#"><span>电脑配件&nbsp;>电风扇 &nbsp;冷风扇 &nbsp;电吹风</span>
								</a>
							</li>
							<li>
								<a href="#"><span>外设产品&nbsp;&nbsp;>电压力锅 &nbsp;电饭煲
										&nbsp;豆浆机</span>
								</a>
							</li>
							<li>
								<a href="#"><span>游戏设备&nbsp;>剃须刀 &nbsp;血糖仪 &nbsp;血压计</span>
								</a>
							</li>
						</ul>
					</div>
				</li>
				<li onmouseover="change(7)" onmouseout="display()">
					<a href="#">个护化妆、清洁用品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;></a>
					<div class="ul1" style="margin-top: -141px">
						<ul id="ul1_ul">
							<li>
								<a href="#"><span>电脑整机&nbsp;>平板电视 &nbsp;空调 &nbsp;洗衣机</span>
								</a>
							</li>
							<li>
								<a href="#"><span>电脑配件&nbsp;>电风扇 &nbsp;冷风扇 &nbsp;电吹风</span>
								</a>
							</li>
							<li>
								<a href="#"><span>外设产品&nbsp;&nbsp;>电压力锅 &nbsp;电饭煲
										&nbsp;豆浆机</span>
								</a>
							</li>
							<li>
								<a href="#"><span>游戏设备&nbsp;>剃须刀 &nbsp;血糖仪 &nbsp;血压计</span>
								</a>
							</li>
						</ul>
					</div>
				</li>
				<li onmouseover="change(7.5)" onmouseout="display()">
					<a href="#">鞋靴、箱包、钟表、奢侈品&nbsp;></a>
					<div class="ul1" style="margin-top: -171px">
						<ul id="ul1_ul">
							<li>
								<a href="#"><span>电脑整机&nbsp;>平板电视 &nbsp;空调 &nbsp;洗衣机</span>
								</a>
							</li>
							<li>
								<a href="#"><span>电脑配件&nbsp;>电风扇 &nbsp;冷风扇 &nbsp;电吹风</span>
								</a>
							</li>
							<li>
								<a href="#"><span>外设产品&nbsp;&nbsp;>电压力锅 &nbsp;电饭煲
										&nbsp;豆浆机</span>
								</a>
							</li>
							<li>
								<a href="#"><span>游戏设备&nbsp;>剃须刀 &nbsp;血糖仪 &nbsp;血压计</span>
								</a>
							</li>
						</ul>
					</div>
				</li>

				<li onmouseover="change(8)" onmouseout="display()">
					<a href="#">运动户外&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;></a>
					<div class="ul1" style="margin-top: -201px">
						<ul id="ul1_ul">
							<li>
								<a href="#"><span>电脑整机&nbsp;>平板电视 &nbsp;空调 &nbsp;洗衣机</span>
								</a>
							</li>
							<li>
								<a href="#"><span>电脑配件&nbsp;>电风扇 &nbsp;冷风扇 &nbsp;电吹风</span>
								</a>
							</li>
							<li>
								<a href="#"><span>外设产品&nbsp;&nbsp;>电压力锅 &nbsp;电饭煲
										&nbsp;豆浆机</span>
								</a>
							</li>
							<li>
								<a href="#"><span>游戏设备&nbsp;>剃须刀 &nbsp;血糖仪 &nbsp;血压计</span>
								</a>
							</li>
						</ul>
					</div>
				</li>
				<li onmouseover="change(8.5)" onmouseout="display()">
					<a href="#">汽车、汽车用品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;></a>
					<div class="ul1" style="margin-top: -231px">
						<ul id="ul1_ul">
							<li>
								<a href="#"><span>电脑整机&nbsp;>平板电视 &nbsp;空调 &nbsp;洗衣机</span>
								</a>
							</li>
							<li>
								<a href="#"><span>电脑配件&nbsp;>电风扇 &nbsp;冷风扇 &nbsp;电吹风</span>
								</a>
							</li>
							<li>
								<a href="#"><span>外设产品&nbsp;&nbsp;>电压力锅 &nbsp;电饭煲
										&nbsp;豆浆机</span>
								</a>
							</li>
							<li>
								<a href="#"><span>游戏设备&nbsp;>剃须刀 &nbsp;血糖仪 &nbsp;血压计</span>
								</a>
							</li>
						</ul>
					</div>
				</li>
				<li onmouseover="change(9)" onmouseout="display()">
					<a href="#">母婴、玩具乐器&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;></a>
					<div class="ul1" style="margin-top: -261px">
						<ul id="ul1_ul">
							<li>
								<a href="#"><span>电脑整机&nbsp;>平板电视 &nbsp;空调 &nbsp;洗衣机</span>
								</a>
							</li>
							<li>
								<a href="#"><span>电脑配件&nbsp;>电风扇 &nbsp;冷风扇 &nbsp;电吹风</span>
								</a>
							</li>
							<li>
								<a href="#"><span>外设产品&nbsp;&nbsp;>电压力锅 &nbsp;电饭煲
										&nbsp;豆浆机</span>
								</a>
							</li>
							<li>
								<a href="#"><span>游戏设备&nbsp;>剃须刀 &nbsp;血糖仪 &nbsp;血压计</span>
								</a>
							</li>
						</ul>
					</div>
				</li>
				<li onmouseover="change(9.5)" onmouseout="display()">
					<a href="#">食品、酒类、生鲜特产&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;></a>
					<div class="ul1" style="margin-top: -291px">
						<ul id="ul1_ul">
							<li>
								<a href="#"><span>电脑整机&nbsp;>平板电视 &nbsp;空调 &nbsp;洗衣机</span>
								</a>
							</li>
							<li>
								<a href="#"><span>电脑配件&nbsp;>电风扇 &nbsp;冷风扇 &nbsp;电吹风</span>
								</a>
							</li>
							<li>
								<a href="#"><span>外设产品&nbsp;&nbsp;>电压力锅 &nbsp;电饭煲
										&nbsp;豆浆机</span>
								</a>
							</li>
							<li>
								<a href="#"><span>游戏设备&nbsp;>剃须刀 &nbsp;血糖仪 &nbsp;血压计</span>
								</a>
							</li>
						</ul>
					</div>
				</li>
				<li onmouseover="change(10)" onmouseout="display()">
					<a href="#">营养保健&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;></a>
					<div class="ul1" style="margin-top: -321px">
						<ul id="ul1_ul">
							<li>
								<a href="#"><span>电脑整机&nbsp;>平板电视 &nbsp;空调 &nbsp;洗衣机</span>
								</a>
							</li>
							<li>
								<a href="#"><span>电脑配件&nbsp;>电风扇 &nbsp;冷风扇 &nbsp;电吹风</span>
								</a>
							</li>
							<li>
								<a href="#"><span>外设产品&nbsp;&nbsp;>电压力锅 &nbsp;电饭煲
										&nbsp;豆浆机</span>
								</a>
							</li>
							<li>
								<a href="#"><span>游戏设备&nbsp;>剃须刀 &nbsp;血糖仪 &nbsp;血压计</span>
								</a>
							</li>
						</ul>
					</div>
				</li>
				<li onmouseover="change(10.5)" onmouseout="display()">
					<a href="#">图书、音像、电子书&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;></a>
					<div class="ul1" style="margin-top: -351px">
						<ul id="ul1_ul">
							<li>
								<a href="#"><span>电脑整机&nbsp;>平板电视 &nbsp;空调 &nbsp;洗衣机</span>
								</a>
							</li>
							<li>
								<a href="#"><span>电脑配件&nbsp;>电风扇 &nbsp;冷风扇 &nbsp;电吹风</span>
								</a>
							</li>
							<li>
								<a href="#"><span>外设产品&nbsp;&nbsp;>电压力锅 &nbsp;电饭煲
										&nbsp;豆浆机</span>
								</a>
							</li>
							<li>
								<a href="#"><span>游戏设备&nbsp;>剃须刀 &nbsp;血糖仪 &nbsp;血压计</span>
								</a>
							</li>
						</ul>
					</div>
				</li>
				<li onmouseover="change(11)" onmouseout="display()">
					<a href="#">彩票、旅行、票务&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;></a>
					<div class="ul1" style="margin-top: -381px">
						<ul id="ul1_ul">
							<li>
								<a href="#"><span>电脑整机&nbsp;>平板电视 &nbsp;空调 &nbsp;洗衣机</span>
								</a>
							</li>
							<li>
								<a href="#"><span>电脑配件&nbsp;>电风扇 &nbsp;冷风扇 &nbsp;电吹风</span>
								</a>
							</li>
							<li>
								<a href="#"><span>外设产品&nbsp;&nbsp;>电压力锅 &nbsp;电饭煲
										&nbsp;豆浆机</span>
								</a>
							</li>
							<li>
								<a href="#"><span>游戏设备&nbsp;>剃须刀 &nbsp;血糖仪 &nbsp;血压计</span>
								</a>
							</li>
						</ul>
					</div>
				</li>
				<li onmouseover="change(11.5)" onmouseout="display()">
					<a href="#">理财、众筹、白条&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;></a>
					<div class="ul1" style="margin-top: -411px">
						<ul id="ul1_ul">
							<li>
								<a href="#"><span>电脑整机&nbsp;>平板电视 &nbsp;空调 &nbsp;洗衣机</span>
								</a>
							</li>
							<li>
								<a href="#"><span>电脑配件&nbsp;>电风扇 &nbsp;冷风扇 &nbsp;电吹风</span>
								</a>
							</li>
							<li>
								<a href="#"><span>外设产品&nbsp;&nbsp;>电压力锅 &nbsp;电饭煲
										&nbsp;豆浆机</span>
								</a>
							</li>
							<li>
								<a href="#"><span>游戏设备&nbsp;>剃须刀 &nbsp;血糖仪 &nbsp;血压计</span>
								</a>
							</li>
						</ul>
					</div>
				</li>

			</ul>
		</div>
		
<!--小型购物车  -->
		<div style="display: none; background-color: white;display: none" id="carinfo" onmouseover="showcar2()"onmouseout="notshowcar2()">
			<div style="position: absolute;margin-top: 10px;margin-left: 10px">
				<span style="font-size: 13;font-family: 宋体;color: #666666;font-weight: bolder;">最新加入的商品</span>
			</div>
			<c:if test="${user.membersname==null}">
			
			<c:if test="${sessionScope.map==null}">
				<div style="width: 300px;height: 50px;position:relative;margin-top: 50px;margin-left: 10px;border-bottom: 1px dotted #DEDEDE;">
					<img src="images/grey_carlogo.jpg" style="margin-top: -20px">
					<div style="position: absolute;margin-left: 60px;margin-top: -35px"><span style="font-size: 13;color: #999999;">购物车中还没有商品，赶紧选购吧</span></div>
				</div> 
			</c:if>		
				<c:if test="${sessionScope.map!=null}">
			<c:forEach items="${sessionScope.map}" var="map">
				<div style="width: 300px;height: 60px;position:relative;margin-top: 40px;margin-left: 10px;border-bottom: 1px dotted #DEDEDE; ">
					<img  style="outline: 1px solid #DEDEDE" src="${pageContext.request.contextPath }/images/${map.key.smallcar}"  >
					<div style="position: absolute;width: 130px;margin-left: 70px;margin-top: -45px">
						<span style="font-size: 13">${map.key.introduce }</span>
					</div>
					<div style="position: absolute;margin-left: 210px;margin-top: -40px">
						<span style="font-size: 15;color: #666666;font-weight: bolder">¥${map.key.goodsprice }*${map.value }</span>
					</div>
					<div style="position: absolute;margin-left: 240px;margin-top: -20px">
						<a href="goods.do?method=delfromcar&imagesid=${map.key.imagesid }">
							<span style="font-size: 13;color: #666666;">删除</span>
						</a>
					</div>
				</div>	
			</c:forEach>
			</c:if>
			</c:if>
			
			<c:if test="${user.membersname!=null}">
			<c:if test="${sessionScope.map==null}">
				<div style="width: 300px;height: 50px;position:relative;margin-top: 40px;margin-left: 10px;border-bottom: 1px dotted #DEDEDE;">
					<img src="images/grey_carlogo.jpg" style="margin-top: -20px">
					<div style="position: absolute;margin-left: 60px;margin-top: -35px"><span style="font-size: 13;color: #999999;">购物车中还没有商品，赶紧选购吧</span></div>
				</div> 
			</c:if>
			<c:if test="${sessionScope.map!=null}">
			<c:forEach items="${sessionScope.map}" var="map">
				<div style="width: 300px;height: 60px;position:relative;margin-top: 40px;margin-left: 10px;border-bottom: 1px dotted #DEDEDE; ">
					<img  style="outline: 1px solid #DEDEDE" src="${pageContext.request.contextPath }/images/${map.key.smallcar}"  >
					<div style="position: absolute;width: 130px;margin-left: 70px;margin-top: -45px">
						<span style="font-size: 13">${map.key.introduce }</span>
					</div>
					<div style="position: absolute;margin-left: 210px;margin-top: -40px">
						<span style="font-size: 15;color: #666666;font-weight: bolder">¥${map.key.goodsprice }*${map.value }</span>
					</div>
					<div style="position: absolute;margin-left: 240px;margin-top: -20px">
						<a href="goods.do?method=delfromcar&imagesid=${map.key.imagesid}" >
							<span style="font-size: 13;color: #666666;">删除</span>
						</a>
					</div>
				</div>	
			</c:forEach>
			</c:if>
			
			</c:if>
			
			
		</div>	
		
		
		
		<!--图片轮播-->
		<div class="image_lunbo" id="image_lunbo">
			<script>
			var slideshow_width=730 //SET IMAGE WIDTH
		var slideshow_height=454 //SET IMAGE HEIGHT
		var pause=2000 //SET PAUSE BETWEEN SLIDE (3000=3 seconds)

		var fadeimages=new Array()
		//SET IMAGE PATHS. Extend or contract array as needed
		fadeimages[0]="images/lunbo_1.jpg"
		fadeimages[1]="images/lunbo_2.jpg"
		fadeimages[2]="images/lunbo_3.jpg"
		fadeimages[3]="images/lunbo_4.jpg"
		fadeimages[4]="images/lunbo_5.jpg"

		////NO need to edit beyond here/////////////

		var preloadedimages=new Array()
		for (p=0;p<fadeimages.length;p++){
		preloadedimages[p]=new Image()
		preloadedimages[p].src=fadeimages[p]
		}

		var ie4=document.all&&navigator.userAgent.indexOf("Opera")==-1
		var dom=document.getElementById&&navigator.userAgent.indexOf("Opera")==-1

		if (ie4||dom)
		document.write('<div style="position:relative;width:'+slideshow_width+';height:'+slideshow_height+';overflow:hidden"><div  id="canvas0" style="position:absolute;width:'+slideshow_width+';height:'+slideshow_height+';top:0;filter:alpha(opacity=10);-moz-opacity:10"></div><div id="canvas1" style="position:absolute;width:'+slideshow_width+';height:'+slideshow_height+';top:0;filter:alpha(opacity=10);-moz-opacity:10"></div></div>')
		else
		document.write('<img name="defaultslide" src="'+fadeimages[0]+'">')

		var curpos=10
		var degree=10
		var curcanvas="canvas0"
		var curimageindex=0
		var nextimageindex=1


		function fadepic(){
		if (curpos<100){
		curpos+=10
		if (tempobj.filters)
		tempobj.filters.alpha.opacity=curpos
		else if (tempobj.style.MozOpacity)
		tempobj.style.MozOpacity=curpos/100
		}
		else{
		clearInterval(dropslide)
		nextcanvas=(curcanvas=="canvas0")? "canvas0" : "canvas1"
		tempobj=ie4? eval("document.all."+nextcanvas) : document.getElementById(nextcanvas)
		tempobj.innerHTML='<img src="'+fadeimages[nextimageindex]+'">'
		nextimageindex=(nextimageindex<fadeimages.length-1)? nextimageindex+1 : 0
		setTimeout("rotateimage()",pause)
		}
		}

		function rotateimage(){
		if (ie4||dom){
		resetit(curcanvas)
		var crossobj=tempobj=ie4? eval("document.all."+curcanvas) : document.getElementById(curcanvas)
		crossobj.style.zIndex++
		var temp='setInterval("fadepic()",50)'
		dropslide=eval(temp)
		curcanvas=(curcanvas=="canvas0")? "canvas1" : "canvas0"
		}
		else
		document.images.defaultslide.src=fadeimages[curimageindex]
		curimageindex=(curimageindex<fadeimages.length-1)? curimageindex+1 : 0
		}

		function resetit(what){
		curpos=10
		var crossobj=ie4? eval("document.all."+what) : document.getElementById(what)
		if (crossobj.filters)
		crossobj.filters.alpha.opacity=curpos
		else if (crossobj.style.MozOpacity)
		crossobj.style.MozOpacity=curpos/100
		}

		function startit(){
		var crossobj=ie4? eval("document.all."+curcanvas) : document.getElementById(curcanvas)
		crossobj.innerHTML='<img src="'+fadeimages[curimageindex]+'">'
		rotateimage()
		}

		if (ie4||dom)
		window.onload=startit
		else
		setInterval("rotateimage()",pause)

		</script>
		</div>

		<!--右侧信息栏-->
		<div class="right_mess">
			<div id="right_mess_top1">
				<span id="right_mess_top11">京东快报</span>
				<!--  <span id="right_mess_top12"><a href="#">更多&nbsp;></a></span>-->
			</div>

			<div id="right_mess_top2">
				<div>
					<table>
						<tr>
							<th>
								[特惠]
							</th>
							<td>
								<a href="#">11月11日再见！我们一起变好</a>
							</td>
						</tr>
						<tr>
							<th>
								[公告]
							</th>
							<td>
								<a href="#">11月11日再见！我们一起变好</a>
							</td>
						</tr>
						<tr>
							<th>
								[特惠]
							</th>
							<td>
								<a href="#">11月11日再见！我们一起变好</a>
							</td>
						</tr>
						<tr>
							<th>
								[公告]
							</th>
							<td>
								<a href="#">11月11日再见！我们一起变好</a>
							</td>
						</tr>
						<tr>

							<th>
								[特惠]
							</th>
							<td>
								<a href="#">11月11日再见！我们一起变好</a>
							</td>
						</tr>

					</table>

				</div>


			</div>

			<div id="right_mess_bottom1">
				<span id="right_mess_top11">生活服务</span>
			</div>
			<div id="right_mess_bottom12">
				<table>
					<tr>
						<td style="border-left: none;">
							<img src="images/service_1.jpg" />
							<br>
							<span>话费</span>
						</td>
						<td>
							<img src="images/service_2.jpg" />
							<br>
							<span>机票</span>
						</td>
						<td>
							<img src="images/service_3.jpg" />
							<br>
							<span>电影票</span>
						</td>
						<td>
							<img src="images/service_4.jpg" />
							<br>
							<span>游戏</span>
						</td>
					</tr>
					<tr>
						<td style="border-left: none">
							<img src="images/service_5.jpg" />
							<br>
							<span>彩票</span>
						</td>
						<td>
							<img src="images/service_6.jpg" />
							<br>
							<span>团购</span>
						</td>
						<td>
							<img src="images/service_7.jpg" />
							<br>
							<span>酒店</span>
						</td>
						<td>
							<img src="images/service_8.jpg" />
							<br>
							<span>水电煤</span>
						</td>
					</tr>
					<tr>
						<td style="border-left: none; border-bottom: none">
							<img src="images/service_9.jpg" />
							<br>
							<span>众筹</span>
						</td>
						<td style="border-bottom: none">
							<img src="images/service_10.jpg" />
							<br>
							<span>理财</span>
						</td>
						<td style="border-bottom: none">
							<img src="images/service_11.jpg" />
							<br>
							<span>礼品卡</span>
						</td>
						<td style="border-bottom: none">
							<img src="images/service_12.jpg" />
							<br>
							<span>白条</span>
						</td>
					</tr>
				</table>
			</div>
		</div>

		<!--尾部-->
		<div class="bottom1">
			<div id="bottom1_div">
				<span><img src="images/bottom_1.jpg" />
				</span><span>品类齐全&nbsp;轻松购物</span>
			</div>
			<div id="bottom1_div">
				<span><img src="images/bottom_2.jpg" />
				</span><span>多仓直发&nbsp;极速配送</span>
			</div>
			<div id="bottom1_div">
				<span><img src="images/bottom_3.jpg" />
				</span><span>正品行货&nbsp;精致服务</span>
			</div>
			<div id="bottom1_div">
				<span><img src="images/bottom_4.jpg" />
				</span><span>天天低价&nbsp;畅选无忧</span>
			</div>
		</div>

		<!--底部-->
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
			<div style="width: 80%; height: 30px; margin-left: 10%; margin-top: 20px;">
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
					Copyright &copy; 2004-2015 京东JD.com 版权所有京东旗下网站：360TOP 拍拍网 网银在线</span>
			</div>
			<div align="center" id="bottom_3">
				<img src="images/54b8871eNa9a7067e.png" />
				<img src="images/54b8872dNe37a9860.png" />
				<img src="images/54b8874bN694454a5.png" />
				<img src="images/54b8875fNad1e0c4c.png" />
				<img src="images/54b8863dN8d2c61ec.png" />
			</div>
		</div>


	</body>

</html>



<script>
	
	function showcar(){
		document.getElementById('carinfo').style.display='block';
		document.getElementById('mycar').style.background='white';
	}
	function notshowcar(){
		document.getElementById('carinfo').style.display='none';
		document.getElementById('mycar').style.background='#F9F9F9';
	}
	function showcar2(){
		document.getElementById('carinfo').style.display='block';
	}
	function notshowcar2(){
		document.getElementById('carinfo').style.display='none';
	}

	function qqq(){
		var a =document.getElementById('left_daohang');
		a.style.display='block';
		var x = document.getElementById('ul1');
		x.style.display='none';
		
	}
	
	function bbb(){
		var a =document.getElementById('left_daohang');
		a.style.display='block';
		
	}
	function change(){
		document.getElementById("aaa").style.display='block';
		
	}
	
	function change(a){
		var uls = document.getElementsByTagName('div');
		var x = document.getElementById('image_lunbo');
		
		for(var i=10;i<=23;i++){
			
			if(i/2==a){
				uls[i].style.display='block';
				x.style.visibility='hidden';
			}
			else
				uls[i].style.display='none';
			
			
		}
	}
	function display(){
		var divs = document.getElementsByTagName('div');
		var x = document.getElementById('image_lunbo');
	
		for(var i=10;i<=23;i++){
			divs[i].style.display='none';
			x.style.visibility='visible';
			
			
		}
		
	}
</script>
