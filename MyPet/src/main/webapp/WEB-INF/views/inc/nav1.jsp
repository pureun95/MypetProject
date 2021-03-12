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

/* 원본 */
 
/* $(".head_list").click(function(){

    if($("#plist_bar1").prop("checked")){     
        $("html").scrollTop(0);
        $(".nav1").css("left","0%").css("z-index","99").css("opacity","1").css("backgound","white");
        $("body").css("overflow-y","hidden");
    } else{
        $(".nav1").css("left","-100%");
        $("body").css("overflow-y","scroll");
    }
});
 */
 
 
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
     console.log(height);
     
     $("#plist_bar1").prop("checked",false);
     $(".nav1").css("background-color", "transparent");
     $(".nav1").css("left", "-100%");
     
  });

</script>