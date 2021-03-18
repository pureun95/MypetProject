<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<style>

    /* content */
    #content1{
        width: 100%
        margin: 0px auto;
        margin-top: 210px;
        /* border: 1px solid rgb(230,229,235); */
        border: 1px solid black;
       
        /* margin-right: px; */
    }

    /* main의 너비가 커기면 위의 min-whith도 커져야 footer가 맞습니다.*/
    #content{
        height: 1050px;
    }

    #contentnav {
        border: 1px solid black;
        width: 1200px;
        height: 100px;
        padding: 20px 20px;
    }
    
    .img_area{
    	border: 1px solid black;
    	width: 1;
    	height: 500px;
    	padding: 10px 10px;
    	
    }
    
    .review {
    	border-left: 1px solid black;
    	border-right: 1px solid black;
    	border-bottom: 1px solid black;
    	width: 1200px;
    	height: 700px;
    	margin-left: 350px;
    }
    
    #slideImg {
    	width: 100%;
    }
    
    .talent {
    	/* border:1px solid black; */
    	width: 100%;
    	height: 500px;
    }
    
    .img {
    	padding-top: 100px;
    	padding-bottom: 100px;
    	position: absolute;
    }
    
    #img2 {
    	margin-left: -450px;
    }
    
    #img3 {
    	margin-left: -900px;
    }
    
    #img4 {
    	margin-left: -1350px;
    }

    
    
</style>

<div id="content1">
	<img src="/mypet/resources/images/intro/5.jpg" id="slideImg">
</div> 

<div class="review">
	입양 후기
</div>

<div class="talent">
	<img src="/mypet/resources/images/talent/1.jpg" id="img1" class="img">
	<img src="/mypet/resources/images/talent/2.jpg" id="img2" class="img">
	<img src="/mypet/resources/images/talent/3.jpg" id="img3" class="img">
	<img src="/mypet/resources/images/talent/4.jpg" id="img4" class="img">
</div>

<script>


	var imgAry = [5,7,8,9,10,11,12,13];
	var imgIdx = 0;
	
	function changeImg() {
		$("#slideImg").attr("src", "/mypet/resources/images/intro/"+imgAry[imgIdx]+".jpg");
		imgIdx++;
		if(imgIdx >= imgAry.length) {
			imgIdx = 0;
		}
	}
	
	setInterval(changeImg, 3000);
	
    //부모의 넓이
    var width = $(".img").parent().width();
    
    console.log(width)

   // console.log($(".img").width());

    var timer = setInterval(function() {

        $("#img1").css('left', $("#img1").offset().left + 50);
        $("#img2").css('left', ($("#img2").offset().left) + 500);
        $("#img3").css('left', ($("#img3").offset().left) + 950);
        $("#img4").css('left', ($("#img4").offset().left) + 1400);

        if((($("#img1").offset().left)+200) > width) {
        	console.log($("#img1").offset().left+400);
            $("#img1").css('left', 0);
        }
         if((($("#img2").offset().left)+200) > width) {
            $("#img2").css('left', $("#img1").offset().left);
        }
        if((($("#img3").offset().left)+200) > width) {
            $("#img3").css('left', $("#img1").offset().left);
        }
         if((($("#img4").offset().left)+200) > width) {
            $("#img4").css('left', $("#img1").offset().left);
        } 
    }, 800);
	
</script>








