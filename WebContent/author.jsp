<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <base href="<%=basePath%>">
  <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <link rel="stylesheet" href="browser/css/amazeui.min.css">
  <link rel="stylesheet" href="browser/css/wap.css">
  <title>小萌萌</title>
</head>
<body style="background:#ececec">
  <div class="pet_mian" >
    <div class="pet_head">
      <header data-am-widget="header"
          class="am-header am-header-default pet_head_block">
        <div class="am-header-left am-header-nav ">
          <a href="publicBrowser.do" class="iconfont pet_head_jt_ico">&#xe601;</a>
        </div>
<div class="pet_news_list_tag_name">${author.name }</div>
        <div class="am-header-right am-header-nav">
          <a href="javascript:;" class="iconfont pet_head_gd_ico">&#xe600;</a>
        </div>
      </header>
    </div>

    <div class="pet_content pet_content_list">
      <div class="pet_grzx">

          <div class="pet_grzx_nr">
              <div class="pet_grzx_ico">
                  <img src="browser/img/qq1.png" alt="">
              </div>
              <div class="pet_grzx_name">${author.name }</div>
              <div class="pet_grzx_map">中国</div>
              <div class="pet_grzx_num_font">
${author.signature }
              </div>
              <div class="pet_grzx_num">
                <span>${author.likes }<i>喜欢</i></span>
                <span>${author.follows }<i>关注</i></span>
                <span>${author.articles }<i>文章</i></span>
              </div>

          </div>
          
          
           <div class="pet_grzx_list">
             <div class="pet_content_main pet_article_like_delete">
          <div data-am-widget="list_news" class="am-list-news am-list-news-default am-no-layout">
            <div class="am-list-news-bd">
              <ul class="am-list">
                <!--缩略图在标题右边-->
                
                 <c:forEach items="${news}" var="news"  > 
		         <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-right pet_list_one_block">
		
		        <div class=" am-u-sm-8 am-list-main pet_list_one_nr" style="height: 145px;">
		            <h3 class="am-list-item-hd pet_list_one_bt"><a href="###" class="">${news.title }</a></h3>
		            <div class="am-list-item-text pet_list_one_text">${news.content }</div>
		
		        </div>
		        
		<!--         <div class=" am-u-sm-8 am-list-main pet_list_one_nr" style="height: 145px;">
            <h3 class="am-list-item-hd pet_list_one_bt"><a href="###" class="">十一长假哪也不去，宅在家里看电影！</a></h3>
            <div class="am-list-item-text pet_list_one_text">每逢长假，总有那么一群人选择远离人山人海，静静地呆在家，坐在电脑电视前。长时间的工作学习让他们感觉很疲惫，对什么都提不起劲，打开电脑却不知道干什么好…</div>

        </div> -->
		        
		        
		          <div class="am-u-sm-4 am-list-thumb">
		            <a href="###" class="">
		              <img src="browser/img/q1.jpg" class="pet_list_one_img" alt=""/>
		            </a>
		          </div>
		      </li>
		      </c:forEach>

                </ul>
              </div>

            </div>

          </div>

          </div>
<div class="pet_article_dowload">
      <div class="pet_article_dowload_title">关于我们</div>
      <div class="pet_article_dowload_content"><div class="pet_article_dowload_triangle"></div>
      <div class="pet_article_dowload_ico"><img src="browser/img/footdon.png" alt=""></div>
      <div class="pet_article_dowload_content_font">
We Are 年轻啊
      </div>
      <div class="pet_article_dowload_all">
        <a href="public.do" class="pet_article_dowload_Az am-icon-apple"> 控制台</a>
        <a href="###" class="pet_article_dowload_Pg am-icon-android"> Android</a>
      </div>
      </div>
  </div>
        </div>

        <div class="pet_article_footer_info">Copyright(c)2015 PetShow All Rights Reserved</div>
      </div>
    </div>
    <script src="js/jquery.min.js"></script>
    <script src="js/amazeui.min.js"></script>
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
    $('.pet_article_like li:last-child').css('border','none');
        function auto_resize(){
        $('.pet_list_one_nr').height($('.pet_list_one_img').height());
                // alert($('.pet_list_one_nr').height());
    }
        $('.pet_article_user').on('click',function(){
            if($('.pet_article_user_info_tab').hasClass('pet_article_user_info_tab_show')){
                $('.pet_article_user_info_tab').removeClass('pet_article_user_info_tab_show').addClass('pet_article_user_info_tab_cloes');
            }else{
                $('.pet_article_user_info_tab').removeClass('pet_article_user_info_tab_cloes').addClass('pet_article_user_info_tab_show');
            }
        });

        $('.pet_head_gd_ico').on('click',function(){
            $('.pet_more_list').addClass('pet_more_list_show');
       });
        $('.pet_more_close').on('click',function(){
            $('.pet_more_list').removeClass('pet_more_list_show');
        });
});

</script>
</body>
  </html>
