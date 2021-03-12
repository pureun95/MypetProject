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
			</label><input type="button" value='로그인' class="btn login">
			</span>
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
        
    } else {
        $("header").removeClass("header-scroll");
        $(".pheadercontent2").css("background-image", "url(/mypet/resources/images/logo.png)");
        $(".menubar").removeClass("menubar-scroll");
        $(".menubar2").removeClass("menubar2-scroll");
        $(".login").removeClass("login-scroll")
    }
});

</script>
<!-- ########################## header 끝 ########################## -->
