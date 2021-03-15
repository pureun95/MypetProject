<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>MyPet :: 굿즈스토어</title>
	
<style>

    /* content */
    #content{
        width: 1300px;
        margin: 0px auto;
        margin-top: 210px;
        padding: 20px 50px;
        /* border: 1px solid rgb(230,229,235); */
        border: 1px solid black;
       
        /* margin-right: px; */
    }

    /* main의 너비가 커기면 위의 min-whith도 커져야 footer가 맞습니다.*/
    #content{
        height: 850px;
    }

    #contentnav {
        border: 1px solid black;
        width: 1200px;
        height: 100px;
        padding: 20px 20px;
    }
    
    .table {
    	text-align: center;
    }
    
    .pagination {
    	margin-left: 500px;
    }
    
    
</style>

<div id="content">
	<h2>내 주문내역 보기</h2>
	<hr>
	<div>
		<table class="table table-bordered">
			<tr class="active">
				<th>상품정보</th>
				<th>주문일자</th>
				<th>주문번호</th>
				<th>주문금액(수량)</th>
				<th>주문상태</th>
			</tr>
			<tr>
				<td>상품정보</td>
				<td>2021.03.14</td>
				<td>1</td>
				<td>66000(1)</td>
				<td>배송 중</td>
			</tr>
		</table>
		
		<ul class="pagination">
	   		<li>
	   			<a href="" aria-label="Next"><span aria-hidden="true">&laquo;</span></a>
			</li>
			<li>
				<a href="">1</a>
			</li>
			<li>
				<a href="">2</a>
			</li>
			<li>
	   			<a href="" aria-label="Next"><span aria-hidden="true">&raquo;</span></a>
			</li>
   		</ul>
	</div>
</div>