<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="nav1">
	<ul>
		<li><a href="/mypet/mypetintroduce/introduce.action">mypet은?</a></li>
		<li><a href="/mypet/goods/list.action">굿즈 스토어</a></li>
		<li><a href="/mypet/vet/list.action">동물병원/보호소</a></li>
		<li><a href="/mypet/adoption/list.action">입양하기</a></li>
		<li><a href="/mypet/sponsor/view.action">후원하기</a></li>
		<li><a href="">게시판</a></li>
		<li><a href="/mypet/stat/view.action">유기동물 통계</a></li>
	</ul>
</div>

<script>

 $(".head_list").click(function() {
     var height = $(document).scrollTop();
     
     if ( height > 130) {
        if ($("#plist_bar1").prop("checked")) {

           $(".nav1").css("left", "0%").css("z-index", "99").css("top",height+10+"px");

        } else {
           $(".nav1").css("left", "-100%");
        }
     }else {
        
        if ($("#plist_bar1").prop("checked")) {

           $(".nav1").css("left", "0%").css("z-index", "99").css("top","150px");

        } else {
           $(".nav1").css("left", "-100%");
        }
     }
  });

  
  $(window).scroll(function() {
     var height = $(document).scrollTop();
     //console.log(height);
     
     $("#plist_bar1").prop("checked",false);
     $(".nav1").css("background-color", "transparent");
     $(".nav1").css("left", "-100%");
     
  });

</script>