<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>


</style>
<!-- ########################## header 시작 ########################## -->
<header id="header">
	<div id="headersub">
		<div id="pheadercontent1" class="pheadercontent">
			<span class="head_list"> <label for="plist_bar1"
				class="menubar"> <input type="checkbox" id="plist_bar1"
					style="display: none;">
			</label>
			</span>
		</div>
		
		<div class="pheadercontent pheadercontent2"></div>
		<div class="pheadercontent pheadercontent3">
			<span class="head_list2"> 
			<label for="plist_bar2" class="menubar2">
				<input type="checkbox" id="plist_bar2" name="plist_bar2" style="display: none;">
			</label>
			<input type="button" value='로그인' class="btn login">
			</span>
		</div>
		
		
		
		 <div class="nav2">
		    <div class="menu">
				<div class="memu-img" id="img-first"></div>
				<span>회원정보</span>
			</div>               
		       <div class="menu">
				<div class="memu-img" id="img-sec"></div>
				<span>찜하기</span>
			</div> 
			<div class="menu">
				<div class="memu-img" id="img-third"></div>
				<span>주문내역</span>
			</div> 
			<div class="menu">
				<div class="memu-img" id="img-fourth"></div>
				<span>봉사활동</span>
			</div> 
			<div class="menu">
				<div class="memu-img" id="img-fifth"></div>
				<span>추가분</span>
			</div> 
	 </div>	
	</div>
	
	
	
	
	
	
</header>



 

<script>

$(window).scroll(function() {
    if($(this).scrollTop() > 100) {
    	$("header").addClass("header-scroll");
        $(".pheadercontent2").css("background-image", "none");
        $(".menubar").addClass("menubar-scroll");
        $(".menubar2").addClass("menubar2-scroll");
        $(".login").addClass("login-scroll");
        $(".nav2").addClass("nav2-scroll");
        
    } else {
        $("header").removeClass("header-scroll");
        $(".pheadercontent2").css("background-image", "url(/mypet/resources/images/logo.png)");
        $(".menubar").removeClass("menubar-scroll");
        $(".menubar2").removeClass("menubar2-scroll");
        $(".login").removeClass("login-scroll");
        $(".nav2").removeClass("nav2-scroll");
    }
});


	$("#plist_bar2").click(function() {
	console.log(123);
	if ($("#plist_bar2").prop("checked")) {
		$(".nav2").css("opacity", 1).css("z-index", "99");
	} else {
		$(".nav2").css("opacity", 0).css("z-index", "-1");
	}
	});

</script>
<!-- ########################## header 끝 ########################## -->
