<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
        /* border: 1px solid black; */
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
    	min-height: 400px;
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
    .imgbox {
    	margin-bottom: 50px;
    }
    .imgs {
    	height:200px;
    }

</style>


    <div id="content">
    
    	<div class="btn-group">
    		<input type="button" class="btn common-btn" value="목록" onclick="location.href='/mypet/board/adoptionreviewlist.action';">
    		<input type="button" class="btn common-btn" value="수정" onclick="location.href='/mypet/board/adoptionreviewedit.action';">
        	<input type="button" id="delete" class="btn common-btn" value="삭제">
    	</div>
    
        <table class="table table-condensed">
        	<tr class="headtr">
        		<td class="firstth" colspan="1">제목</td>
        		<td class="firsttd" colspan="9">입양후기1 제목입니다.</td>
        	</tr>
        	<tr class="headtr">
        		<td class="firstth" colspan="1">작성일</td>
        		<td class="firsttd" colspan="9">2021-01-01</td>
        	</tr>
        	<tr class="headtr">
        		<td class="firstth" colspan="1">조회수</td>
        		<td class="firsttd" colspan="9">13</td>
        	</tr>
        	<tr class="headtr">
        		<td class="firsttd" colspan="10" style="padding: 30px 50px">
        			<div class="board-content">
        				<div class="imgbox">
        					<img class="imgs" src="/mypet/resources/images/adoption/1.jpg">
        					<img class="imgs" src="/mypet/resources/images/adoption/2.jpg">
        					<img class="imgs" src="/mypet/resources/images/adoption/3.jpg">
        				</div>
        				내용 본문입니다.
        				
        			</div>
        		</td>
        	</tr>
        	
        	
        	<tr class="headtr">
        		<td class="firstth" colspan="1">이전글</td>
        		<td class="firsttd" colspan="9">이전글입니다.</td>
        	</tr>
        	<tr class="headtr">
        		<td class="firstth" colspan="1" style="border-bottom: 1px solid #e8e8e8">다음글</td>
        		<td class="firsttd" colspan="9" style="border-bottom: 1px solid #e8e8e8"><a href="">입양후기2 제목입니다.</a></td>
        	</tr>
        </table>
	
		<div class="modal" tabindex="-1" role="dialog" id="deletemodal">
	    	<div class="modal-dialog" role="document">
	    		<div class="modal-content" id="modal-content">
	   				<div class="modal-header">
	           			<h5 class="modal-title">입양후기 삭제하기</h5>
	           			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
	             		<span aria-hidden="true">&times;</span>
	           			</button>
	        		</div>
	         		<div class="modal-body">
	           			<p>입양후기를 정말 삭제하시겠습니까?</p>
	         		</div>
	         		<div class="modal-footer">
	            		<button type="submit" class="btn" id="delete">삭제</button>
	           			<button type="button" class="btn" id="cancel" data-dismiss="modal" >취소</button>           
	         		</div>
	      		</div>
	     	</div>
	   </div>
		
		   
	</div>


<script>
   $('#delete').click(function(e){
      e.preventDefault();
      $('#deletemodal').modal("show");
   });
</script>
        
        
   
