<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta name="viewport" content="width=device-width, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
		<mea http-equiv="X-UA-Compatible" content="chrome=1">
		<meta http-equiv="Content-Type" content="text/html; charset = UTF-8" />
		<title>Hello</title>
		<style>
			body {
				overflow: hidden;
				background-color: #000000;

				user-select: none;
				-webkit-user-select: none;
				-moz-user-select: none;
				-o-user-select: none;
				-ms-user-select: none;

			}
		</style>
	</head> 
	<body>
<div style="text-align:center;clear:both">
</div>
	<div id="canvas"></div>

	<script src="js/protoclass.js"></script>
	<script src='js/box2d.js'></script>

	<script src='js/Main.js'></script>
    <meta http-equiv="refresh" content='5; url=index.jsp'>
  <script type="text/javascript">
     var time =5;
     function  aaa()
   {
    window.setTimeout('aaa()', 1000);
    time=time-1;
    document.getElementById("bb").innerHTML=time;
   
   }    
    </script>
	</body>
</html>
