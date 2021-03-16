<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<style>



 body {
      font-family: 'NanumSquare';
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
        height: 1000px;
    }


    .board-name {
        /* border: 1px solid black; */
        display: block;
        text-align: center;
        margin-top: 130px;
        margin-bottom: 50px;
        font-size: 30px;
        font-family: 'Jal_Onuel';
        /* font-family: 'NanumSquare';
        font-weight: bold; */
        color: #301b01;
    }

    /* 테이블 css */
    table {
        font-size: 16px;
    }

    .tr2:hover {
        background-color: #F6DA42;
    }
   
    .firsttd {
        width: 100px;
        text-align: center;
    }

    .sectd {
        width: 600px;
        text-align: center;
    }

    .thirdtd {
        width: 200px;
        text-align: center;
    }

    .fourthtd {
        width: 100px;
        text-align: center;
    }

   
    /* 번호, 날짜, 조회수 */
    .tr2 > td:nth-child(1), td:nth-child(3), td:nth-child(4) {
        text-align: center;
    }

    /* 제목 */
    .headtr > td:nth-child(2) {
        text-align: left;
    }

    /* 검색창 & 버튼 박스 */
    .pageSearch {
        /* border: 1px solid black; */
        width: 1200px;
        height: 130px;
        margin-top: 50px;
        padding: 0px 360px;
    }

    /* 게시판 검색창 공통 클래스 */
    .search-text {
        width: 340px;
        float: left;
        margin-right: 20px;
        font-size: 16px;
    }

    /* 버튼 공통 클래스 */

    .btn {
         font-family: 'Jal_Onuel';
         cursor: pointer;
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

    /* 페이지바 */

    .pagination {
        width: 700px;
        height: 40px;
    }
    .pagination> li > a {
		border-color : #ccc;
		color: #301b01;
        font-size: 16px;
        float: left;
	}

    .pagination>li>a:hover {
        background-color: #b27208;
        color: white;
    }

    .board-btn {
       /*  border: 1px solid black; */
        height: 50px;
    }

    .board-btn > input:nth-child(1) {
        margin-left: 1060px;
    }
    
    /* 캐러셀 세팅 */
    
    .carousel-indicators li {
    	border: 1px solid #a0a0a0;
    }
    
    .carousel-indicators .active {
    	background-color: #b27208;
    }
    
    .imgitems {
    	width: 254px !important;
    	height: 220px !important;
    	
    }
    
    .titlecover{
    	text-align: center;
    	border: 1px solid #aaa;
    	height: 60px;
    	border-radius: 5px;
    }
    
    .titlecover > div {
    	color: #aaa;
    }
    /* 버튼 css */
    
    
.btnself {
	font-family: 'Jal_Onuel';
	background-color: #b27208;
	color: white;
} 

.btnself:hover {
	background-color: #b27208;
	color: white;
}

</style>


    <div id="content">
        <span class="board-name">입양 후기 게시판</span>

        <table class="table table-condensed">
        	<tr>
        		<c:forEach items="${rlist}" var="dto" >
            	<td>
            		<div class="innerbox">
            			<div style="width:254px; height:301px; margin:auto;">
		
							<!-- 가운데 o 모양 페이지 표시 -->
							<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
								<!-- Wrapper for slides -->
								<div class="carousel-inner" role="listbox">
								<c:forEach items="${fn:split(dto.image, ',') }" var="img" varStatus="status">
									<div class="item <c:if test="${status.index==0}">active</c:if>">
										<img class="imgitems"src="/mypet${img}"   alt="1">
									</div>
								</c:forEach>
								</div>
								<div class="titlecover">
									<a href="/mypet/board/adoptionreviewview.action?seqAdoptionReview=${dto.seqAdoptionReview}">${dto.title}<span class="badge">${dto.viewcount}</span></a>
									<div>${dto.content}</div>
								</div>
							</div>
						</div>
            		</div>
            	</td>
            	</c:forEach>
            	<td>
            		<div class="innerbox">
            			<div style="width:254px; height:301px; margin:auto;">
		
							<!-- 가운데 o 모양 페이지 표시 -->
							<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
								<!-- Wrapper for slides -->
								<div class="carousel-inner" role="listbox">
									<div class="item active">
										<img class="imgitems"src="/mypet/resources/images/adoption/4.jpg"   alt="1">
									</div>
									<div class="item">
										<img class="imgitems"src="/mypet/resources/images/adoption/5.jpg"   alt="2">
									</div>
									<div class="item">
										<img class="imgitems"src="/mypet/resources/images/adoption/6.jpg"   alt="3">
									</div>
									<div class="titlecover">
										<a href="/mypet/board/adoptionreviewview.action">입양후기2 제목입니다.</a>
										<div>입양후기 내용입니다.</div>
									</div>
								</div>
							</div>
						</div>	
            		</div>
            	</td>
            	<td>
            		<div class="innerbox">
            			<div style="width:254px; height:301px; margin:auto;">
		
							<!-- 가운데 o 모양 페이지 표시 -->
							<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
								<!-- Wrapper for slides -->
								<div class="carousel-inner" role="listbox">
									<div class="item active">
										<img class="imgitems"src="/mypet/resources/images/adoption/7.jpg"   alt="1">
									</div>
									<div class="item">
										<img class="imgitems"src="/mypet/resources/images/adoption/8.jpg"   alt="2">
									</div>
									<div class="item">
										<img class="imgitems"src="/mypet/resources/images/adoption/9.jpg"   alt="3">
									</div>
									<div class="titlecover">
										<a href="/mypet/board/adoptionreviewview.action">입양후기3 제목입니다.</a>
										<div>입양후기 내용입니다.</div>
									</div>
								</div>
							</div>
						</div>
            		</div>
            	</td>
            	<td>
            		<div class="innerbox">
            			<div style="width:254px; height:301px; margin:auto;">
		
							<!-- 가운데 o 모양 페이지 표시 -->
							<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
								<!-- Wrapper for slides -->
								<div class="carousel-inner" role="listbox">
									<div class="item active">
										<img class="imgitems"src="/mypet/resources/images/adoption/10.jpg"   alt="1">
									</div>
									<div class="item">
										<img class="imgitems"src="/mypet/resources/images/adoption/11.jpg"   alt="2">
									</div>
									<div class="item">
										<img class="imgitems"src="/mypet/resources/images/adoption/12.jpg"   alt="3">
									</div>
									<div class="titlecover">
										<a href="/mypet/board/adoptionreviewview.action">입양후기4 제목입니다.</a>
										<div>입양후기 내용입니다.</div>
									</div>
								</div>
							</div>
						</div>
            		</div>
            	</td>
            </tr>
        
            <tr>
            	<td>
            		<div class="innerbox">
            			<div style="width:254px; height:301px; margin:auto;">
		
							<!-- 가운데 o 모양 페이지 표시 -->
							<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
								<!-- Wrapper for slides -->
								<div class="carousel-inner" role="listbox">
									<div class="item active">
										<img class="imgitems"src="/mypet/resources/images/adoption/13.jpg"   alt="1">
									</div>
									<div class="item">
										<img class="imgitems"src="/mypet/resources/images/adoption/14.jpg"   alt="2">
									</div>
									<div class="item">
										<img class="imgitems"src="/mypet/resources/images/adoption/15.jpg"   alt="3">
									</div>
									<div class="titlecover">
										<a href="/mypet/board/adoptionreviewview.action">입양후기5 제목입니다.</a>
										<div>입양후기 내용입니다.</div>
									</div>	
								</div>
							</div>
						</div>
            		</div>
            	</td>
            	<td>
            		<div class="innerbox">
            			<div style="width:254px; height:301px; margin:auto;">
		
							<!-- 가운데 o 모양 페이지 표시 -->
							<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
								<!-- Wrapper for slides -->
								<div class="carousel-inner" role="listbox">
									<div class="item active">
										<img class="imgitems"src="/mypet/resources/images/adoption/16.jpg"   alt="1">
									</div>
									<div class="item">
										<img class="imgitems"src="/mypet/resources/images/adoption/17.jpg"   alt="2">
									</div>
									<div class="item">
										<img class="imgitems"src="/mypet/resources/images/adoption/18.jpg"   alt="3">
									</div>
									<div class="titlecover">
										<a href="/mypet/board/adoptionreviewview.action">입양후기6 제목입니다.</a>
										<div>입양후기 내용입니다.</div>
									</div>
								</div>
							</div>
						</div>
            		</div>
            	</td>
            	<td>
            		<div class="innerbox">
            			<div style="width:254px; height:301px; margin:auto;">
		
							<!-- 가운데 o 모양 페이지 표시 -->
							<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
								<!-- Wrapper for slides -->
								<div class="carousel-inner" role="listbox">
									<div class="item active">
										<img class="imgitems"src="/mypet/resources/images/adoption/19.jpg"   alt="1">
									</div>
									<div class="item">
										<img class="imgitems"src="/mypet/resources/images/adoption/20.jpg"   alt="2">
									</div>
									<div class="item">
										<img class="imgitems"src="/mypet/resources/images/adoption/21.jpg"   alt="3">
									</div>
									<div class="titlecover">
										<a href="/mypet/board/adoptionreviewview.action">입양후기7 제목입니다.</a>
										<div>입양후기 내용입니다.</div>
									</div>
								</div>
							</div>
						</div>
            		</div>
            	</td>
            	<td>
            		<div class="innerbox">
            			<div style="width:254px; height:301px; margin:auto;">
		
							<!-- 가운데 o 모양 페이지 표시 -->
							<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
								<!-- Wrapper for slides -->
								<div class="carousel-inner" role="listbox">
									<div class="item active">
										<img class="imgitems"src="/mypet/resources/images/adoption/22.jpg"   alt="1">
									</div>
									<div class="item">
										<img class="imgitems"src="/mypet/resources/images/adoption/23.jpg"   alt="2">
									</div>
									<div class="item">
										<img class="imgitems"src="/mypet/resources/images/adoption/24.jpg"   alt="3">
									</div>
									<div class="titlecover">
										<a href="/mypet/board/adoptionreviewview.action">입양후기8 제목입니다.</a>
										<div>입양후기 내용입니다.</div>
									</div>
								</div>
							</div>
	            		</div>
            		</div>
            	</td>
            </tr>
            
        </table>

        <!-- 글쓰기 버튼 아래 -->
        <!-- <div class="board-btn"><input type="button" class="btn common-btn" value="글쓰기"></div> -->
        <!-- 페이지바/검색창 -->
        
        <div class="btnwrap" style="text-align: center;">
            <button id="btnmore" class="btn btnself" onclick="alert('밑으로 8개 더 만들기');">더보기</button>
            <button id="btnwrite" class="btn btnself" onclick="location.href='/mypet/board/adoptionreviewwrite.action';">글쓰기</button>
        </div>
    </div>
   



    <script>


    </script>
