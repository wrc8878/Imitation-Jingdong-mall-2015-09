<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>
<head>
<title>新增收货人信息</title>
<meta http-equiv="content-Type" content="text/html;charset=utf-8">

<style type="text/css">
.black_overlay{display:none;position:absolute;top:0%;left:0%;width:100%;height:100%;background-color:black;z-index:1001;-moz-opacity:0.8;opacity:.80;filter:alpha(opacity=80);}
.white_content{display:none;position:absolute;top:25%;left:25%;width:50%;height:50%;padding:16px;border:3px solid orange;background-color:white;z-index:1002;overflow:auto;}
</style>
</head>
<body>

<a href="javascript:void(0)" onclick="document.getElementById('light').style.display='block'; document.getElementById('fade').style.display='block'">
点击这里打开窗口</a>
<div id="light" class="white_content">
<a href="javascript:void(0)" onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">
Close</a>
<br>窗口内容
</div>
<div id="fade" class="black_overlay">123</div>
</body>
</html>