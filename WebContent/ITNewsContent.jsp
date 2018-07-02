						<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
						<%@ include file="header.jsp"%>
						<div class="col-md-8">
						<div class="panel panel-headline" style="margin:0 auto">
								
								<div class="panel-body">
									<h2 style="text-align:center">${news.title }</h2>
									<p>
									${news.content }
									</p>
								</div>
							</div>
					<%@ include file="footer.jsp"%>