<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<title>MyPet :: 봉사활동신청</title>
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
        height: 1100px;
    }


	/* 제목 */
    .table {
        /* border: 1px solid black; */
        /* 버튼 아래 있을 때 */
        /* margin-top: 170px; */
        /* 버튼 위에 있을 때 */
       	margin-top: 60px;
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
    	min-height: 400px;
    }
    
    .board-content > span {
    	font-size: 20px;
    	font-weight: bold;
    	text-align: center;
    	display: block;
    	margin-top: 100px;
    	
    }
    
    
    /* 테이블 */
    .table-info {
    	width: 850px;
    	margin-left: 100px;
    	font-size: 14px;
    }
    
	
	.board-content > .table-info > .headtr > .firstth {
		background-color: white;
	}
	
	.headtr:last-child {
		border-bottom: 1px solid #e8e8e8;
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
        				<!-- <table class="table table-info">
        					<tr class="headtr">
        						<th class="firstth" colspan="1">봉사활동명</th>
        						<td colspan="9">희망의 연탄나르기</td>        						
        					</tr>
        					<tr class="headtr">
        						<th class="firstth">시작일</th>
        						<td>희망의 연탄나르기</td>
        						<th class="firstth">종료일</th>
        						<td>ㅇㅇㄴ</td>
        					</tr>
        					<tr class="headtr">
        						<th class="firstth">모집인원</th>
        						<td>희망의 연탄나르기</td>
        						<th class="firstth">신청인원</th>
        						<td>ㅇㅇㄴ</td>
        					</tr>
        					<tr class="headtr">
        						<th class="firstth">보호소</th>
        						<td>쫑쫑보호소</td>
        						<th class="firstth">주소</th>
        						<td>서울시 강동구 라라라</td>
        					</tr>
        				</table> -->
        			
        			
        			<!-- 상세내용 -->
        			사진이나 내용이 들어갈 공간
        			
        			
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
        
        
        <!-- <div class="btn-group">
        	<input type="button" class="btn common-btn" value="목록">
    		<input type="button" class="btn common-btn" value="수정">
        	<input type="button" class="btn common-btn" value="삭제">
    	</div> -->

        
        <!-- <div class="board-btn"><input type="button" class="btn common-btn" value="글쓰기"></div> -->
        
    </div>
   



    <script>


    </script>
