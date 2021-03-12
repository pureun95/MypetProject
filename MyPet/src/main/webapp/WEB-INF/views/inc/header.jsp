<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
		<div id="pheadercontent2" class="pheadercontent"></div>
		<div id="pheadercontent3" class="pheadercontent">
			<span class="head_list2"> 
			<label for="plist_bar2" class="menubar2">
				<input type="checkbox" id="plist_bar2" name="plist_bar2" style="display: none;">
			</label> <input type="button" value='로그인' class="btn login">
			</span>
		</div>
	</div>
</header>

<script>

$(window).scroll(function() {
    if($(this).scrollTop() > 100) {
        $("header").addClass("header-scroll");
        $(".header-ul").addClass("header-ul-scroll");
        $(".header-img").addClass("header-img-scroll");
        $(".header-ul2").addClass("header-ul2-scroll");            			
        $(".li-list").hover(function() {
            $(this).removeClass("li-list-hover");
            $(this).addClass("li-list-scroll-hover");
        }, function() {
            $(this).removeClass("li-list-hover");
            $(this).removeClass("li-list-scroll-hover");
        })

    } else {
        $("header").removeClass("header-scroll");
        $(".header-ul").removeClass("header-ul-scroll");
        $(".header-img").removeClass("header-img-scroll");
        $(".header-ul2").removeClass("header-ul2-scroll");                
        $(".li-list").hover(function() {
            $(this).removeClass("li-list-scroll-hover");
            $(this).addClass("li-list-hover");
        }, function() {
            $(this).removeClass("li-list-hover");
        })
    }
});

</script>
<!-- ########################## header 끝 ########################## -->
