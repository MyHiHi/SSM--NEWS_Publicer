<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.util.Random" %>
<%@ include file="header.jsp"%>

		<div class="row">
						<div class="col-md-6">
							<!-- BASIC TABLE -->
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title"><a href="addITNews.jsp" style="color:red"><span class="label label-success">添加新闻</span></a></h3>
								</div>
								<div class="panel-body">
									<table class="table">
										<thead>
											<tr>
												<th>ID</th>
												<th>标题</th>
												<th>作者</th>
												<th>内容</th>
												
												<th>类型</th>
												<th>是否热点</th>
												<th>修改时间</th>
												<th>操作</th>
											</tr>
										</thead>
										<tbody>
										<% int c=1;
											
										 %>
										  <c:forEach items="${news}" var="news"  > 
										  	<%
										  		String[] className =new String[] {"primary","warning","info","success","danger"};
										  		Random r = new Random();
										  		int n = className.length;
										  		int t = r.nextInt(n);
										  	 %>
									          	<tr class="<%=className[t]%>">
													<td><%=c %></td>
													<td>${news.title }</td>
													<td>${news.author}</td>
													<td><a href="content.do?id=${news.id }">查看具体内容</a></td>
													<td>${news.type }</td>
													<td>${news.isTop }</td>
													<td>${news.okTime }</td>
													<td><a class="info" href="edit.do?id=${news.id }"><span class="label label-warning">编辑</span></a> | 
														<a class="danger" href="delete.do?id=${news.id }"><span class="label label-danger">删除</span></a>
													</td>
												</tr>
											<% c++; %>
									    </c:forEach>
											
										
										</tbody>
									</table>
								</div>
							</div>
							<!-- END BASIC TABLE -->
						</div>
						<div class="col-md-6">
							<!-- TABLE NO PADDING -->
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">垃圾箱</h3>
								</div>
								<div class="panel-body no-padding">
									<table class="table">
										<thead>
											<tr>
												<th>ID</th>
												<th>标题</th>
												<th>作者</th>
												<th>内容</th>
												
												<th>类型</th>
												<th>是否热点</th>
												<th>修改时间</th>
												<th>操作</th>
											</tr>
										</thead>
										<tbody>
										<% int r=1; %>
											 <c:forEach items="${junkNews}" var="news2"  > 
												 <%
											  		String[] className2 =new String[] {"primary","warning","info","success","danger"};
											  		Random r2 = new Random();
											  		int n2 = className2.length;
											  		int t2 = r2.nextInt(n2);
											  	 %>
									          	<tr class="<%=className2[t2] %>">
													<td><%=r %></td>
													<td>${news2.title }</td>
													<td>${news2.author }</td>
													<td><a href="content.do?id=${news2.id }">查看具体内容</a></td>
													<td>${news2.type }</td>
													<td>${news2.isTop }</td>
													<td>${news2.okTime }</td>
													<td><a href="recovery.do?id=${news2.id }"><span class="label label-success">还原</span></a> | <a href="deleteNews.do?id=${news2.id }">
													<span class="label label-primary">彻底删除</span>
													</a></td>
												</tr>
											<% r++; %>
									    </c:forEach>
										</tbody>
									</table>
								</div>
							</div>
							<!-- END TABLE NO PADDING -->
						</div>
					</div>
 <%@ include file="footer.jsp"%>