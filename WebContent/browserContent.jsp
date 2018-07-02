<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <link rel="stylesheet" href="browser/css/amazeui.min.css">
    <link rel="stylesheet" href="browser/css/wap.css">
    <title>${news.title }</title>
</head>
<body style="background:#ececec">
<div class="pet_mian" >
    <div class="pet_head">
  <header data-am-widget="header"
          class="am-header am-header-default pet_head_block">
      <div class="am-header-left am-header-nav ">
          <a href="publicBrowser.do" class="iconfont pet_head_jt_ico">&#xe601;</a>
      </div>

      <h1 class="am-header-title pet_article_user">
      <div class="pet_article_user_info_tab">
        <div class="pet_article_user_info_tab_font">
        <div class="pet_article_user_info_tab_font_triangle"></div>
        <div class="pet_article_user_info_tab_font_center"><i>文章</i><span>16篇</span></div>
<!--         <div class="pet_article_user_info_tab_font_center"><i>涂鸦</i><span>89张</span></div>
        <div class="pet_article_user_info_tab_font_center_line"></div>
        <div class="pet_article_user_info_tab_font_center"><a href="###">查看全部资料</a></div> -->
        </div>
      </div>
      <span class="pet_article_user_ico"><img src="browser/img/a1.png" alt="" class=""></span>
      <span class="pet_article_user_name">${news.author }</span>
      </h1>

      <div class="am-header-right am-header-nav">
          <a href="javascript:;" class="iconfont pet_head_gd_ico">&#xe600;</a>
      </div>
  </header>
</div>




<div class="pet_content">
<div class="pet_content_block">
  <article data-am-widget="paragraph" class="am-paragraph am-paragraph-default pet_content_article" data-am-paragraph="{ tableScrollable: true, pureview: true }">
  <h1 class="pet_article_title">${news.title }</h1>
  <div class="pet_article_user_time">发表于：${news.okTime }</div>
      <p class=paragraph-default-p><img src="browser/img/a3.jpg" /><p>${news.content}</p>
		
  </article>
        <ul class="like_share_block">
        <li><a class="link_share_button" href="###"><i class="iconfont share_ico_link">&#xe62f;</i>1460</a></li>
        <li><a class="link_share_button" href="###"><i class="iconfont share_ico_wx">&#xe630;</i>微信</a></li>
        <li><a class="link_share_button" href="###"><i class="iconfont share_ico_pyq">&#xe62e;</i>朋友圈</a></li>
      </ul>
    <div class="pet_article_dowload">
      <div class="pet_article_dowload_title">关于我们</div>
      <div class="pet_article_dowload_content"><div class="pet_article_dowload_triangle"></div>
      <div class="pet_article_dowload_ico"><img src="img/footdon.png" alt=""></div>
      <div class="pet_article_dowload_content_font">
我们年轻，有时间，有希望，对未来无限可能！
      </div>
      <div class="pet_article_dowload_all">
        <a href="###" class="pet_article_dowload_Az am-icon-apple"> App store</a>
        <a href="###" class="pet_article_dowload_Pg am-icon-android"> Android</a>
      </div>
      </div>
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
