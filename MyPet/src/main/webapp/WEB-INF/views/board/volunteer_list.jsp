<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>



 	body {
        font-family: 'NanumSquare';
	   	color: #301b01;
    }


    .logo {
        margin: 0px auto;
        /* border: 1px solid black; */
        width: 180px;
        height: 180px;
        background-image: url('../image/logo.png');
        background-size: cover;
        background-position: 50% 50%;
    }

    /* content */
 

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
        color: #301b01;
    }

    /* 테이블 css */
    table {
        font-size: 16px;
    }
    
    .tr2 {
    	cursor: pointer;
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
        width: 300px;
        text-align: center;
    }
    
    .fifthtd {
        width: 100px;
        text-align: center;
    }

   
    /* 번호, 날짜, 조회수 */
    .tr2 > .center  {
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
    }
    
    .common-btn {
        background-color: #b27208;
        color: white;
        float: left;
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
        margin-left: 1125px;
    }

</style>


    <div id="content">
        <span class="board-name">봉사활동신청</span>
        <div class="board-btn"><input type="button" class="btn common-btn" value="글쓰기"></div>
        <table class="table table-condensed">
            <tr class="headtr">
                <th class="firsttd">번호</th>
                <th class="sectd">제목</th>
                <th class="thirdtd">마감현황</th>
                <th class="fourthtd">기간</th>           
                <th class="thirdtd">작성일</th>
                <th class="fifthtd">조회수</th>
            </tr>
            <tr class="tr2" onclick="location.href='/mypet/board/volunteerView.action'">
                <td class="center">1</td>
                <td>[봉사활동명] 봉사활동 할 사람 모여라</td>
                <td class="center">마감</td>
                <td class="center">2021-01-01 ~ 2021-01-30</td>
                <td class="center">2021-01-01</td>
                <td class="center">32</td>
            </tr>
			<tr class="tr2">
                <td class="center">1</td>
                <td>[봉사활동명] 제목</td>
                <td class="center">마감</td>
                <td class="center">2021-01-01 ~ 2021-01-30</td>
                <td class="center">2021-01-01</td>
                <td class="center">32</td>
            </tr>
            <tr class="tr2">
                <td class="center">1</td>
                <td>[봉사활동명] 제목</td>
                <td class="center">마감</td>
                <td class="center">2021-01-01 ~ 2021-01-30</td>
                <td class="center">2021-01-01</td>
                <td class="center">32</td>
            </tr>
            <tr class="tr2">
                <td class="center">1</td>
                <td>[봉사활동명] 제목</td>
                <td class="center">마감</td>
                <td class="center">2021-01-01 ~ 2021-01-30</td>
                <td class="center">2021-01-01</td>
                <td class="center">32</td>
            </tr>
            

            <!-- 10개 vs 15개 -->
            
            <!--
            <tr class="tr2">
                <td>11</td>
                <td>공지사항 제목입니다.</td>
                <td>2021-01-01</td>
                <td>32</td>
            </tr>
            <tr class="tr2">
                <td>12</td>
                <td>공지사항 제목입니다.</td>
                <td>2021-01-01</td>
                <td>32</td>
            </tr>
            <tr class="tr2">
                <td>13</td>
                <td>공지사항 제목입니다.</td>
                <td>2021-01-01</td>
                <td>32</td>
            </tr>
            <tr class="tr2">
                <td>14</td>
                <td>공지사항 제목입니다.</td>
                <td>2021-01-01</td>
                <td>32</td>
            </tr>
            <tr class="tr2">
                <td>15</td>
                <td>공지사항 제목입니다.</td>
                <td>2021-01-01</td>
                <td>32</td>
            </tr>
            -->
        </table>

        <!-- 글쓰기 버튼 아래 -->
        <!-- <div class="board-btn"><input type="button" class="btn common-btn" value="글쓰기"></div> -->
        <!-- 페이지바/검색창 -->
        
        <div class="pageSearch">
            <!-- 페이지바 -->
            <ul class="pagination">
                <li><a href=\"#!\" aria-label=\"Previous\"><span aria-hidden=\"true\">&laquo;</span></a></li>
                <li><a>1</a></li>
                <li><a>2</a></li>
                <li><a>3</a></li>
                <li><a>4</a></li>
                <li><a>5</a></li>
                <li><a>6</a></li>
                <li><a>7</a></li>
                <li><a>8</a></li>
                <li><a>9</a></li>
                <li><a>10</a></li>
                <li><a href=\"#!\" aria-label=\"Next\"><span aria-hidden=\"true\">&raquo;</span></a></li>
            </ul>       

            <!-- 검색창 & 검색 버튼 -->
            <input type="text" class="form-control search-text">
            <input type="button" class="btn common-btn" value="검색">
        </div>
    </div>
   


    <script>


    </script>
