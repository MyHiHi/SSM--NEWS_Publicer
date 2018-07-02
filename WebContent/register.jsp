<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="login_header.jsp"%> 
 <div class="content2">
		<h2>注册页面</h2>
		<form action="register.do" method="POST">
			<input type="text" name="username" placeholder="输入管理员名">
			<input type="text" name="password" placeholder="输入密码">
			<input type="email" name="email" placeholder="输入邮箱">
			<input type="text" name="phone" placeholder="输入电话">
			<!-- <input type="tel" name="usrtel" value="PHONE" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'PHONE';}">
			<input type="email" name="email" value="EMAIL ADDRESS" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'EMAIL ADDRESS';}">
			<input type="password" name="psw" value="PASSWORD" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'PASSWORD';}"> -->
			
			<input type="submit" class="register" value="注册">
		</form>
	</div>
<div class="clear"></div>
</div>



  </body>
</html>