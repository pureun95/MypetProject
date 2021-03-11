<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="nav1">
	<ul>
		<li>1</li>
		<li>2</li>
		<li>3</li>
		<li>4</li>
		<li>5</li>
		<li>6</li>
		<li>7</li>
		<li>8</li>
	</ul>
</div>


<script>

$(".head_list").click(function(){

    if($("#plist_bar1").prop("checked")){     
        $("html").scrollTop(0);

        $(".nav1").css("left","0%").css("z-index","99").css("opacity","1").css("backgound","white");
        $("body").css("overflow-y","hidden");
    } else{
        $(".nav1").css("left","-100%");
        $("body").css("overflow-y","scroll");
    }
});
</script>