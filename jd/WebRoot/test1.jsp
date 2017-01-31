<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

 
 

<div>
	<input type="text" id="aaa">
	<input type="button" onclick="test()" value="提交">

</div>

<script>
	function test(){
		var test = document.getElementById('aaa').value;
		location = 'test.do?method=test&aaa='+test;
	}
</script>