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
    	width: 1200px;
    	height: 700px;
    	margin-left: 350px;
    }
    
    #slideImg {
    	width: 100%;
    }
    
    .talent {
    	border:1px solid black;
    	width: 100%;
    	height: 500px;
    }
    
</style>

<div id="content1">
		<img src="/mypet/resources/images/intro/5.jpg" id="slideImg">
</div> 

<div class="review">
	입양 후기
</div>

<div class="talent">

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
	
</script>








