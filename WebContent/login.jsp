<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="login_header.jsp"%> 
	<div class="content1">
		<h2>登录页面</h2>
		<form action="login.do" method="post">
			<input type="text" name="username"   placeholder="输入管理员名">
			<input type="password" name="password"  placeholder="输入管理员密码">
			<div class="button-row">
				<input type="submit" class="sign-in" value="登录">
				<input type="reset" class="reset" value="取消">
				<div class="clear"></div>
			</div>
		</form>
	</div>
<div class="clear"></div>
</div>


<script type="text/javascript">
	var isLogin = ${isLogin}
	if(!isLogin){
		alert("用户登录失败!")
	}

</script>
  </body>
</html>