<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
	

	/* 후에 template.css로 옮길 것 */
	.logo-scroll {
       	background-position: 50% 50%;
       	background-repeat: no-repeat;
    	background-size: contain;
    	margin-top: -7px;
	}
	
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
			<input type="button" value='로그인' class="btn login" onClick="location.href='/mypet/member/auth.action'">
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


	/* 브라우저 띄웠을 때 네비 없어짐 */
	$(document).ready(function() {
		$(".nav2").hide();
	})
	
	
	$(window).scroll(function() {
	    if($(this).scrollTop() > 100) {
	    	$("header").addClass("header-scroll");
	    	$("#headersub").css("height", "60px");
	    	$("#pheadercontent1").css("height", "50px");
	        $(".pheadercontent2").css("height", "35px").css("background-image", "url(/mypet/resources/images/logo2.png)").addClass("logo-scroll");
	        $(".pheadercontent3").css("height", "50px");
	        $(".menubar").addClass("menubar-scroll");
	        $(".menubar2").addClass("menubar2-scroll");
	        $(".login").addClass("login-scroll");
	        $(".nav2").addClass("nav2-scroll");
	        
	    } else {
	        $("header").removeClass("header-scroll");
	        $("#headersub").css("height", "200px");
	        $(".pheadercontent2").css("background-image", "url(/mypet/resources/images/logo.png)").css("height", "180px");
	        $(".pheadercontent3").css("height", "180px");
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
			$(".nav2").show();
		} else {
			$(".nav2").hide();
		}
	});
	

</script>
<!-- ########################## header 끝 ########################## -->
