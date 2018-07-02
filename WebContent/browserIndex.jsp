<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html>
<head>
	<base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <link rel="stylesheet" href="browser/css/amazeui.min.css">
    <link rel="stylesheet" href="browser/css/wap.css?2">
    <title>首页</title>
</head>
<body>
<div data-am-widget="gotop" class="am-gotop am-gotop-fixed">
    <a href="#top" title="">
        <img class="am-gotop-icon-custom" src="browser/img/goTop.png" />
    </a>
</div>

<div class="pet_mian" id="top">
  <div data-am-widget="slider" class="am-slider am-slider-a1" data-am-slider='{"directionNav":false}' >
  <ul class="am-slides">
      <li>
      <a href="contentBrowser.do?id=41">
            <img src="browser/img/fl01.png">
            <div class="pet_slider_font">
                <span class="pet_slider_emoji"> (╭￣3￣)╭♡   </span>
                <span>“大白”有望成为现实：充气机器人研究取得进展</span>
            </div>
            <div class="pet_slider_shadow"></div>
            </a>
      </li>
      <li><a href="contentBrowser.do?id=42">
            <img src="browser/img/fl02.png">
            <div class="pet_slider_font">
                <span class="pet_slider_emoji"> []~(￣▽￣)~*　</span>
                <span>已然魔性的雪橇犬哈士奇 —《雪地狂奔》</span>
            </div>
            <div class="pet_slider_shadow"></div>
            </a>
      </li>
      <li><a href="contentBrowser.do?id=43">
            <img src="browser/img/fl03.png">
            <div class="pet_slider_font">
                <span class="pet_slider_emoji"> (｡・`ω´･)　</span>
                <span>《星际争霸2:虚空之遗》国服过审!</span>
            </div>
            <div class="pet_slider_shadow"></div>
            </a>
      </li>
  </ul>
</div>


<div class="pet_circle_nav">
    <ul class="pet_circle_nav_list">
        <li><a href="cotentList.do?type=政治" class="iconfont pet_nav_xinxianshi ">&#xe61e;</a><span>政治</span></li>
        <li><a href="cotentList.do?type=科技" class="iconfont pet_nav_zhangzhishi ">&#xe607;</a><span>科技</span></li>
        <li><a href="cotentList.do?type=娱乐" class="iconfont pet_nav_kantuya ">&#xe62c;</a><span>娱乐</span></li>
        <li><a href="cotentList.do?type=体育" class="iconfont pet_nav_mengzhuanti ">&#xe622;</a><span>体育</span></li>

    </ul>
<div class="pet_more_list"><div class="pet_more_list_block">
    <div class="iconfont pet_more_close">×</div>
    <div class="pet_more_list_block">
        <div class="pet_more_list_block_name">
            <div class="pet_more_list_block_name_title">阅读 Read</div>

                                   
        </div>
         
    </div>

    </div></div>
</div>
<div class="pet_content_main">
  <div data-am-widget="list_news" class="am-list-news am-list-news-default" >
  <div class="am-list-news-bd">
  <ul class="am-list">
  
  
   <c:forEach items="${news}" var="news"  > 
									     <%--      	<tr>
													<td>${news.id }</td>
													<td></td>
													<td><a href="content.do?id=${news.id }">查看具体内容</a></td>
													<td>${news.type }</td>
													<td>${news.isTop }</td>
													<td>${news.okTime }</td>
													<td><a class="info" href="edit.do?id=${news.id }">编辑</a> | 
														<a class="danger" href="delete.do?id=${news.id }">删除</a>
													</td>
												</tr> --%>
					
									    
									    
									    
  	
		<li class="am-g am-list-item-desced pet_list_one_block">
	              <div class="pet_list_one_info">
	            <div class="pet_list_one_info_l">
	                <div class="pet_list_one_info_ico"><img src="browser/img/a4.png" alt=""></div>
	                <div class="pet_list_one_info_name">
	                	<a href="author.do?name=${news.author }">${news.author }</a>发表于 ${news.okTime }
	                </div>
	            </div>
	            <div class="pet_list_one_info_r">
	                <div class="pet_list_tag pet_list_tag_zzs">${news.type }</div>
	            </div>
	        </div>
	        <div class=" am-list-main">
	            <h3 class="am-list-item-hd pet_list_one_bt"><a href="###" class=""><a href="contentBrowser.do?id=${news.id }">${news.title }</a></h3>
	
	
	            <div class="am-list-item-text pet_list_two_text">${news.content }</div>
	
	        </div>
      </li>
      
</c:forEach>
      
      
      
       </ul>
  </div>

    </div>

</div>
 <div class="pet_article_dowload pet_dowload_more_top_off">
      <div class="pet_article_dowload_title">关于我们</div>
      <div class="pet_article_dowload_content pet_dowload_more_top_bg"><div class="pet_article_dowload_triangle pet_dowload_more_top_san"></div>
      <div class="pet_article_dowload_ico"><img src="img/footdon.png" alt=""></div>
      <div class="pet_article_dowload_content_font">
我们年轻，有时间，有希望，对未来无限可能！ </div>
      <div class="pet_article_dowload_all">
        <a href="public.do" class="pet_article_dowload_Az am-icon-apple"> 控制台</a>
        <a href="###" class="pet_article_dowload_Pg am-icon-android"> Android</a>
      </div>
      </div>
      
      
</div>
</div>

<script src="browser/js/jquery.min.js"></script>
<script src="browser/js/amazeui.min.js"></script>
<script>
$(function(){

    // 动态计算新闻列表文字样式
    auto_resize();
    $(window).resize(function() {
        auto_resize();
    });
    $('.am-list-thumb img').load(function(){
        auto_resize();
    });

    $('.am-list > li:last-child').css('border','none');
    function auto_resize(){
        $('.pet_list_one_nr').height($('.pet_list_one_img').height());

    }
        $('.pet_nav_gengduo').on('click',function(){
            $('.pet_more_list').addClass('pet_more_list_show');
       });
        $('.pet_more_close').on('click',function(){
            $('.pet_more_list').removeClass('pet_more_list_show');
        });
});

</script>
</body>
</html>