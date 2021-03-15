<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>

/* 폰트 임시 */
<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
.nanumsquare {
    font-family: 'NanumSquare', sans-serif !important;
}


/* 바디역할, 전체 관련 css 시작*/
#bodydiv {
	/* border: 1px solid black; */
	width: 1300px;
	margin: auto;
	padding-top: 150px;
	font-family: 'NanumSquare', sans-serif !important;
	text-align: center;
	font-size: 16px;
	color: #301B01;
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
	/* 버튼 css 끝 */

/* 바디역할 div 관련 css 끝 */


/* 머릿글 관련 css 시작 */

#hd1 {
	font-family: 'Jal_Onuel';
	font-size: 24px;
	margin-top: 150px;
	margin-bottom: 10px;
}

.hd2 {
	font-size: 16px; 
	color: #F9820F;
	display: block;
	margin-bottom: 10px;
}

#h2 {
	font-size: 16px; 
	color: #F9820F;
	display: block;
}

.exptxt {
	text-align: center;
	font-size: 16px;
	color: #aaa;
}

/* 머릿글 관련 css 끝 */

/* 궁서체 쓸 곳 */
.infobox {
	margin: auto;
	width: 800px;
	height: 500 px;
	border: 5px solid #166517;
	border-radius: 10px;
	box-shadow: 5px 5px 5px 5px gray;
	margin-bottom: 100px;
}

/* 테이블 관련 css 시작 */

#tbl1 {
	margin-top: 100px;
	
}
#tbl1 th {
	text-align: center;
}

#tbl1 .underlinetxt {
	font-weight: bold;
	text-decoration: underline;
}

#tbl1 tr:hover {
	background-color: #F6DA42;
}


ul, li {
	margin: 0px;
}

.animalimg {
	width: 180px;
}

/* 테이블 관련 css 끝 */
/* 
.dropdown-menu {
	display: block;
} */

</style>


<!-- 마이페이지 바디 역할 div -->
<div id="bodydiv">
	
	<!-- form 태그 시작 -->
	<!-- <form method="POST" action=""> -->
	
	<!-- 헤더, 설명글 -->
	<div id="hd1">입양 예약 진행 현황</div>
	<small class="hd2">※ 예약번호를 클릭하면 작성한 입양예약신청서를 볼 수 있습니다.</small>
	
	<!-- main table  -->
	<table class="table table-bordered" id="tbl1">
		<tr style="background-color: #b27208; color: white;">
			<th>예약번호</th>
			<th>축종</th>
			<th>보호소/동물병원</th>
			<th>신청자</th>
			<th>신청일</th>
			<th>상태</th>
		</tr>
		<tr>
			<td><a href="/mypet/mypage/reservationview.action">000005</a></td>
			<td class="underlinetxt">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
					개/푸들
					<span class="caret"></span>
					</a>
					<ul class="dropdown-menu" role="menu">
						<li><a>품종 : 푸들</a></li>
						<li><a>분류 : 개</a></li>
						<li><a>나이 : 3살</a></li>
						<li><a>성별 : 여자</a></li>
						<li><a>중성화여부 : O</a></li>
						<li><a>접종여부 : O</a></li>
						<li><a>사진</a></li>
						<li class="divider"></li>
						<li><a><img class="animalimg" src="/mypet/resources/images/adoption/1.jpg"></a></li>
						<li class="divider"></li>
					</ul>
				</li>
			</td>
			<td class="underlinetxt">
				<li class="dropdown" >
					<a href="#" id="m1" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
					도그마루 잠실본점
					<span class="caret"></span>
					</a>
					<ul class="dropdown-menu" role="menu">
						<li><a>보호소명 : 도그마루 잠실본점</a></li>
						<li><a>운영시간 : 오전 9시 ~ 오후 18시</a></li>
						<li><a>나이 : 3살</a></li>
						<li><a>전화번호 : 02-4851-4541</a></li>
						<li><a>지도 <small style="float:right;">※ 지도를 클릭하여 움직이세요.</small></a></li>
						<div id="map" style="width:400px;height:200px;"></div>
						<button type="button" class="btn btnself" style="margin:30px; float:right;" id="btnnav">길찾기</button>
					</ul>
				</li>
			</td>
			<td>홍길동</td>
			<td>2021-03-07</td>
			<td class="underlinetxt">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
					거절
					<span class="caret"></span>
					</a>
					<ul class="dropdown-menu" role="menu">
						<li><a>거절사유 : 입양사유 불충분</a></li>
					</ul>
				</li>
			</td>
		</tr>
		
	</table>

	<!-- 버튼 -->
	
	<hr style="margin: 200px;">
	
	<!-- form태그 끝 -->
	<!-- </form> -->
	
 <!-- 바디역할 끝 -->
</div>

<script>
	/* 드롭다운 안닫히게 하기!!! */
	$('.dropdown-menu').click(function(e) {
	    e.stopPropagation();
	});

</script>


<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6202dce93896c77fd3201beee8e88961&libraries=services"></script>
<script>
	/* 카카오지도 api 관련 script */
	$('#m1').click(function(){
		
		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();
		
		// 주소로 좌표를 검색합니다
		geocoder.addressSearch('서울 송파구 석촌호수로 104', function(result, status) {
		
		    // 정상적으로 검색이 완료됐으면 
		     if (status === kakao.maps.services.Status.OK) {
				
		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		    	var addr = '도그마루 잠실본점,'+result[0].y+','+result[0].x;
				
		        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			    mapOption = {
			        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			        level: 5 // 지도의 확대 레벨
			    };  
			
				// 지도를 생성합니다    
				var map = new kakao.maps.Map(mapContainer, mapOption); 
				
		        
		        // 결과값으로 받은 위치를 마커로 표시합니다
		        var marker = new kakao.maps.Marker({
		            map: map,
		            position: coords
		        });
		
		        // 인포윈도우로 장소에 대한 설명을 표시합니다
		        var infowindow = new kakao.maps.InfoWindow({
		            content: '<div style="width:150px;text-align:center;padding:6px 0;">도그마루 잠실본점</div>'
		        });
		        
		        infowindow.open(map, marker);
		
		        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		        map.setCenter(coords);
		        
				$('#btnnav').click(function(){
					
			       	window.open('https://map.kakao.com/link/to/'+addr);
			       	
				})
		        
		        
		    } 
		});    
		
		
	})
	
	
</script>



	