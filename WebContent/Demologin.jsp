<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	  <script src="js/jquery-3.3.1.js"></script>
     <script src="js/json2.js"></script>
<body>



<form action="login.do" method="post">
	<input type="text" id="name" name="username">
	<input type="submit" value="登录">
</form>
${bad }
${pyname}
	 <br>
	 <button id="btn" >按钮</button>
<script type="text/javascript">
	if ("${bad}"!=null){
		alert("错误")
	}
	name = $("#name").val()
	function Userinfo(username, password){
	        this.username = username;
	        this.password = password;
	}
	function sendAjax(){
	        var userinfo = new Userinfo("ASS", "ERR");
	        var jsonString = JSON.stringify(userinfo);
	        $.post("<%=path %>/list.do", {
	            "jsonString": jsonString
	        },function(res){
	        res = JSON.parse(res)
	        for (var t=0;t<res.length;t++){
	        	$("form").append("<h1>"+res[t].username+"</h1>")
	        }
	       /*  console.log(res[].username) */
            	
            	})
        	}
	$("#btn").click(function(){
	    
	/* 
		name = $("#name").val()
		var username = {  
            "username": name,    
        };  
        $.ajax({  
            type: "POST",  
            url: ,  
            data: JSON.stringify(username),  
            contentType: "application/json;charset=UTF-8",
            success:function(res){
            	console.log(${username})
            }  
        });   */
        sendAjax();
	})
	function send(){
		
	}
</script>
  </body>
</html>
