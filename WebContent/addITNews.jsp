<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="header.jsp"%>
<script type="text/javascript" src="assets/vendor/jquery/jquery.min.js"></script>
<style>
	#add{

		margin-left:100px;
		mrgin-right:800px;
	}
</style>
				<form action="addITNews.do" method="post">
					<div id="add" class="panel">
								<div class="panel-heading">
								<button type="button" class="btn btn-primary" click="window.history(-1)">返回上一页</button>
								
								</div>
								<div class="panel-body">
								
									<div class="input-group">
									<span class="input-group-btn">
											<button class="btn btn-primary" type="button">类型</button>
										</span>
										<select class="form-control" name="type">
											<option value="科技">科技</option>
											<option value="娱乐">娱乐</option>
								
											<option value="政治">政治</option>
										
											<option value="体育">体育</option>
										</select>
									</div>
									
									
									<br>
									<div class="input-group">
										<span class="input-group-btn">
											<button class="btn btn-primary" type="button">标题</button>
										</span>
										<input class="form-control" type="text" name="title">
									</div>
									<br>
									<div class="input-group">
										<span class="input-group-btn">
											<button class="btn btn-primary" type="button">作者</button>
										</span>
										<input class="form-control" type="text" name="author">
									</div>
									<br>
									<div class="input-group">
										<span class="input-group-btn">
											<button class="btn btn-primary" type="button">是否热点</button>
										</span>
											<select class="form-control" name="isTop">
												<option value="是">是</option>
												<option value="否">否</option>
												
											</select>
									</div>
									<br>
									<div class="input-group">
										<textarea class="form-control" placeholder="内容" rows="20" cols="500" name="content"></textarea>
									</div>
									<br>
									
								</div>
							</div>
							<button type="submit" class="btn btn-success"><i class="fa fa-check-circle"></i> 添加</button>
							</form>
<%@ include file="footer.jsp"%>