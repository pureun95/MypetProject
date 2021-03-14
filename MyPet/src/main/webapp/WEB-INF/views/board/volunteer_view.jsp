<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<title>MyPet :: 봉사활동신청</title>
<style>



	body {
	   font-family: 'NanumSquare';
	   color: #301b01;
	}
     

    #content{        
        width: 1300px;
        margin: 0px auto;
        margin-top: 150px;
        padding: 20px 50px;
        /* border: 1px solid rgb(230,229,235); */
        border: 1px solid black;
       }


    /* main의 너비가 커기면 위의 min-whith도 커져야 footer가 맞습니다.*/
    #content{
        height: auto;
    }


	/* 제목 */
    .table {
        /* border: 1px solid black; */
        /* 버튼 아래 있을 때 */
        /* margin-top: 170px; */
        /* 버튼 위에 있을 때 */
       	margin-top: 20px;
        font-size: 16px;
        ont-family: 'NanumSquare';
        color: #301b01;
    }
    
    table > tbody > tr > .firstth {
    	padding: 10px;
    	border-right: 1px solid #e8e8e8;
    	text-align: center;
    	background-color: #f9f9f9;
    } 
    
    table > tbody > tr > .firsttd {
    	padding: 10px 15px;
    } 
    
   .firstth {
    	width: 150px;
    	padding: 10px;
    }
    
    .board-content {
    	border: 1px solid black;
    	min-height: 800px;
    	width: 1100px;
    	float: left;
    }
    
    .board-content > span {
    	font-size: 24px;
    	font-weight: bold;
    	text-align: center;
    	display: block;
    	margin-top: 100px;
    	margin-bottom: 30px;
    	
    }
    
    
    .info {
    	/* border: 1px solid #e8e8e8; */
	    width: 450px;
	    height: 400px;
	    background-image: url(/mypet/resources/images/volunteer/memo.png);
	    background-size: contain;
	    background-position: 50% 50%;
	    background-repeat: no-repeat;
	    margin-bottom: 120px;
	    margin-left: 320px;
	    padding: 100px 70px;
	    
    }
    
    .info > span {
    	display: block;
	    /* border: 1px solid; */
	    width: 300px;	 
	    margin-bottom: 8px; 
    	
    }
    
    .info > input {
    	margin-top: 30px;
    	margin-left: 120px;
    }
    
    
    .img-volunteer {
    	/* border: 1px solid #e8e8e8; */
	    width: 900px;
	    height: 600px;
	    margin-left: 100px;
    }
    
    .img-volunteer > span {
    	font-size: 24px;
    	font-weight: bold;
    	display: block;
    	text-align: center;
    	/* margin-bottom: 20px; */
    }
    
    .photo-icon {
    	/* border: 1px solid black; */
	    border: 0px;
	    width: 80px;
	    height: 80px;
	    margin-left: 0px;
	    margin-bottom: 20px;
	    margin-right: 20px;
	    background-size: contain;
	    background-position: 50% 50%;
	    background-repeat: no-repeat;
	    opacity: .8;
	    transform: rotate(-15deg);
    }
    
    .img {
    	border: 1px solid #e8e8e8;
	    width: 900px;
	    max-height: 500px;
	    background-size: contain;
	    background-position: 50% 50%;
	    background-repeat: no-repeat;
    }
    
    .arrow1 {
    	/* border: 1px solid #e8e8e8; */
    	width: 50px;
    	height: 50px;
    	background-image: url(/mypet/resources/images/volunteer/arrow1.png);
    	background-size: contain;
	    background-position: 50% 50%;
	    background-repeat: no-repeat;
	    float: left;
	    position: relative;
	    left: -70px;
	    top: 280px;
	    opacity: .2;
	    cursor: pointer;
    }
    
    .arrow2 {
    	/* border: 1px solid #e8e8e8; */
    	width: 50px;
    	height: 50px;
    	background-image: url(/mypet/resources/images/volunteer/arrow2.png);
    	background-size: contain;
	    background-position: 50% 50%;
	    background-repeat: no-repeat;
	    float: right;
	    position: relative;
	    right: -70px;
	    top: 280px;
	    opacity: .2;
	    cursor: pointer;
    }
    
    .board-content > .desc {
    	font-size: 16px;
	    font-weight: normal;
	    display: block;
	    margin-top: 200px;
    }

    /* 버튼 공통 클래스 */

    .btn {
        font-family: 'NanumSquare';
    }
    
    .btn-group {
    	/* 
    	아래 있을 때
    	margin-top: 20px;
        margin-bottom: 50px;
        margin-left: 1050px; */
        
        /* 위에 있을 때 */
        margin-top: 130px;
        /* margin-bottom: 50px; */
        margin-left: 1000px;
        
    }
    
    .common-btn {
        background-color: #b27208;
        color: white;
        float: left;
        margin-right: 10px;
        font-family: 'Jal_Onuel';
    }

    .common-btn:hover {
        color: white;
        outline: none;
    }

    .common-btn:active {
        outline: none !important;
    }


    .board-btn > input:nth-child(1) {
        margin-left: 1060px;
    }

</style>


    <div id="content">
    
    	<div class="btn-group">
    		<input type="button" class="btn common-btn" value="목록">
    		<input type="button" class="btn common-btn" value="수정">
        	<input type="button" class="btn common-btn" value="삭제">
    	</div>
    
        <table class="table table-condensed">
        	<tr class="headtr">
        		<td class="firstth" colspan="1">제목</td>
        		<td class="firsttd" colspan="9">[봉사활동명] 제목이다.</td>
        	</tr>
        	<tr class="headtr">
        		<td class="firstth" colspan="1">작성일</td>
        		<td class="firsttd" colspan="9">2021-01-01</td>
        	</tr>
        	<tr class="headtr">
        		<td class="firstth" colspan="1">마감현황</td>
        		<td class="firsttd" style="width: 700px">모집중</td>        		
        		<td class="firstth" colspan="1">조회수</td>
        		<td class="firsttd" colspan="1">13</td>
        	</tr>
        	<tr class="headtr">      	
        		<td class="firsttd" colspan="10" style="padding: 30px 50px">
        			
        			<div class="board-content">
        				
        				<!-- 봉사활동 기본정보 -->
        				<span>봉사활동 안내</span>
        				
        				<div class="info">
        					<span><b>봉사활동명:</b> 희망의 연탄나르기</span>
        					<span><b>기간:</b> 2020-01-01 ~ 2020-02-01</span>
        					<span><b>모집인원:</b> 6명</span>
        					<span><b>신청인원:</b> 5명</span>
        					<span><b>보호소:</b> 쫑쫑보호소</span>
        					<span><b>주소:</b> 서울시 동작구 네네동</span>
        					
        					<input type="button" class="btn common-btn" value="신청하기">
        				</div>
        				
        				
        				<div class="img-volunteer">
        					<span><img class="photo-icon" src="../resources/images/photo.png">쫑쫑보호소 봉사활동 앨범</span>
        					<div class="arrow1"></div>
        					<div class="arrow2"></div>
        					<img class="img" src="../resources/images/volunteer/1.jpg">
        				</div>
        				
        				<span class="desc">봉사활동의 시즌이 왔습니다~</span>

        			</div>     
        			
        			   		
        		</td>
        	</tr>
        	
        	<!-- 첨부파일?! -->
        	<tr class="headtr">      	
        		<td class="firstth" colspan="1">첨부파일</td>
        		<td class="firsttd" colspan="9">일단 넣었습니다~</td>
        	</tr>
        	<tr class="headtr">      	
        		<td class="firstth" colspan="1">이전글</td>
        		<td class="firsttd" colspan="9">이전글입니다.</td>
        	</tr>
        	<tr class="headtr">      	
        		<td class="firstth" colspan="1" style="border-bottom: 1px solid #e8e8e8">다음글</td>
        		<td class="firsttd" colspan="9" style="border-bottom: 1px solid #e8e8e8">다음글입니다.</td>
        	</tr>
        </table>
                
    </div>
   



    <script>

    
    /* 화살표 누르면 사진 바꾸기 */
    
    var i = 1;
    
    $(".arrow2").click(function() {
    	
    	i++;
    	
    	if(i > 10) {
    		alert("다음 사진이 없습니다.");
    		i = 10;
    	}
    	
    	$(".img").prop("src", "../resources/images/volunteer/" + i + ".jpg");
    	
    	/* 데이터 이미지 배열만큼 할 것  */
    	
    	
    })
    
    $(".arrow1").click(function() {
   		
    	i--;
    	
    	if(i < 1) {
    		alert("이전 사진이 없습니다.");
    		i = 1;
    	}
    	
    	$(".img").prop("src", "../resources/images/volunteer/" + i + ".jpg");
    })

    </script>
