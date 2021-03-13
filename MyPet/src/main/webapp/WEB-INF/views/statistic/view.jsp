<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!--  이거는 스타일 수정 -->
<style>
#content {
	font-size: 16px;
	height: 1100px;
	overflow: hidden;
	transition: 1s all;
}

#stattbl, th, td {
	
}

#stattbl {
	width: 1100px;
	height: 600px;
	margin: 0px auto;
}

/*지도 칸 가장 중요하다.*/
#statmap {
	width: 600px;
	height: 450px;
}

.statimg {
	position: relative;
	margin: 0px auto;
}

.statbar {
	float: left;
	width: 20px;
	background-color: #A593E0;
	border-radius: 5px;
	transition: 1s all;
}

.statbar>textarea {
	background-color: transparent;
	border: 0;
	margin-left: 25px;
	font-weight: bolder;
	resize: none;
	padding: 0px;
	width: 0px;
	overflow:hidden;
	transition: 0.5s all;
	outline: none;
}

.statbar:hover {
	background-color: blueviolet;
}

.statbar:hover>textarea {
	width: 85px;
}

/* 각 지역들의 차트 그래프 넣기 */
.seoul {
	/*top+height 높이가 -345가 될 수 있도록한다.*/
	height: 20px;
	position: relative;
	top: -365px;
	left: 180px;
}

.daegu {
	height: 40px;
	/*top+height 높이가 -210가 될 수 있도록한다.*/
	position: relative;
	top: -250px;
	left: 340px;
}

.incheon {
	height: 30px;
	/*top+height 높이가 -350가 될 수 있도록한다.*/
	position: relative;
	top: -380px;
	left: 75px;
}

.busan {
	height: 25px;
	/*top+height 높이가 -150가 될 수 있도록한다.*/
	position: relative;
	top: -175px;
	left: 340px;
}

.busan {
	
}

.gwaunggu {
	height: 50px;
	/*top+height 높이가 -155가 될 수 있도록한다.*/
	position: relative;
	top: -205px;
	left: 75px;
}

.daejun {
	height: 35px;
	/*top+height 높이가 -245가 될 수 있도록한다.*/
	position: relative;
	top: -280px;
	left: 125px;
}

/*옆에 있는 css*/
.statmapbtn {
	width: 400px;
	padding: 10px;
	vertical-align: top;
}

.statsel {
	padding: 10px;
	outline: none;
	padding-top: 0px;
	margin-top: 10px;
}

.statsel option {
	outline: none;
	text-align: center;
}

.statsel select {
	width: 100px;
	text-align: center;
	border: 0;
	outline: none;
}

.statsearchinfo input[type=text] {
	outline: none;
	width: 100px;
	border: 0;
	background-color: transparent;
	text-align: center;
	margin-left: 30px;
}

.statsearchinfo input[type=button] {
	width: 60px;
	border: 0;
	text-align: center;
	font-size: 16px;
	background-color: #b27208;
	border-radius: 3px;
	color: aliceblue;
}

/*subtable map*/
.statmapsubtbl {
	width: 380px;
	margin: 0px auto;
}

.statmapsubtbl th {
	width: 90px;
	height: 50px;
	text-align: center;
}

.statmapsubtbl td {
	width: 90px;
}

.statmapsubtbl td input[type=text] {
	width: 90px;
	text-align: center;
	border: 0;
}

#subtbltr {
	text-align: right;
	padding-right: 10px;
}

#statmypetaddinfo:hover {
	color: #A593E0;
}

/*여기서 부터 파이펫통계 */
#content .statmypet {
	width: 1200px;
	margin: 0px auto;
	border: 0;
}

#content .statmypet td {
	border: 0;
}

.well div {
	font-size: 16px;
	margin-top: 5px;
}

.maintext_two {
	background-color: #b27208;
	border-color: #b27208;
	color: white;
	font-size: 24px;
	font-weight: bolder;
	width: 1200px;
}

.statmypetinfo {
	font-size: 18px;
	font-weight: bolder;
	color: #301b01;
	border-color: #e3e3e3;
	background-color: #e3e3e3;
	transition: 1s all;
}

.statmypetinfo div {
	margin-top: 5px;
}

/*두번쨰 중 메인 통계 자료 부분 */
#statmypetmaininfo {
	opacity: 0;
}

#statmypetmaininfo>td:first-child {
	width: 720px;
}

/*반달 차트 상위 */
#stathalf {
	padding: 50px;
	padding-top: 0px;
	vertical-align: middle;
}

/* 반달 차트  */
.stathalfpie {
	margin: 0 auto;
	margin-top: 75px;
	padding: 0;
	list-style-type: none;
	overflow: hidden;
	position: relative;
	width: 500px;
	height: 250px;
}
/*350 175*/
.stathalfpie *, .stathalfpie::before {
	box-sizing: border-box;
}

.stathalfpie::before {
	position: absolute;
	content: '';
	width: inherit;
	height: inherit;
	border: 70px solid rgba(211, 211, 211, .3);
	border-bottom: none;
	border-top-left-radius: 250px;
	border-top-right-radius: 250px;
}

@keyframes chartAni1{
    0%{transform: rotateZ(0);}
    25%{transform: rotateZ(10deg)}
    100%{transform: rotateZ(40deg)}
}

@keyframes chartAni2{
    0%{transform: rotateZ(0);}
    25%{transform: rotateZ(35deg);}
    50%{transform: rotateZ(70deg);}
    100%{transform: rotateZ(140deg);}
}
@keyframes chartAni3{
    0%{transform: rotateZ(0);}
    25%{transform: rotateZ(45deg)}
    50%{transform: rotateZ(90deg)}
    100%{transform: rotateZ(180deg)}
}


.statanimaltext {
	font-size: 24px;
	color: #301b01;
	font-weight: bolder;
	font-style: unset;
	margin: 30px;
	margin-top: 60px;
}

/*파이 차트 */
.statanimalpie {
	display: inline-block;
	margin-top: 0px;
	margin-left: 40px;
	width: 370px;
	height: 370px;
	border-radius: 50%;
	transition: 0.3s;
}

/*단어들 수정 입니다 */
#subinfotext1, #subinfotext2, #subinfotext3 {
	float: left;
	transition: 1s all;
}

#subinfotext1>textarea, #subinfotext2>textarea, #subinfotext3>textarea {
	resize: none;
	width: 90px;
	border: 0px;
	background-color: transparent;
	font-weight: bolder;
}

#subinfotext1 {
	position: relative;
	top: -70px;
	left: 80px;
	opacity: 0;
	z-index: 10;
}

#subinfotext2 {
	position: relative;
	top: -210px;
	left: 250px;
	opacity: 0;
	z-index: 10;
}

#subinfotext3 {
	position: relative;
	top: -75px;
	left: 280px;
	opacity: 0;
	z-index: 10;
}

#subinfoanitext1, #subinfoanitext2, #subinfoanitext3 {
	float: right;
	font-weight:bolder;
	z-index: 10;
	opacity: 0;
	transition: 1.5s all;
}

#subinfoanitext1>textarea, #subinfoanitext2>textarea, #subinfoanitext3>textarea
	{
	outline: none;
	resize: none;
	width: 60px;
	border: 0;
	background-color: transparent;
}

#subinfoanitext1 {
	position: relative;
	top: -230px;
	left: -300px;
}

#subinfoanitext2 {
	position: relative;
	top: -300px;
	left: -80px;
}

#subinfoanitext3 {
	position: relative;
	top: -130px;
	left: 20px;
}

.statanimalpieaddinfo {
	display: none;
	font-size: 18px;
	font-weight: bolder;
}
</style>
<!-- 요 칸안에 내용작성하세요 -->
<div id="content">
	<div id="contentnav">주의 환기 문구를 넣어야지!!그래야지</div>

	<table id="stattbl">
		<tr>
			<th colspan="4">
				<div class="well maintext_two">
					유기 동물 전국 통계 -<small> 입양율</small>
				</div>
				</div>

			</th>
		</tr>
		<tr>
			<td class="statimg" colspan="3"><img id="statmap"
				src="/mypet/resources/images/statistic/mapmain.jpg" alt="">

				<div class="statmainbar">
					<div class="seoul statbar">
						<textarea name="" class="stattext">서울특별시15%</textarea>
					</div>

					<div class="daegu statbar">
						<textarea name="" class="stattext">대구광역시15%</textarea>
					</div>

					<div class="incheon statbar">
						<textarea name="" class="stattext">인천광역시 15%</textarea>
					</div>

					<div class="busan statbar">
						<textarea name="" class="stattext">부산광역시 15%</textarea>
					</div>
					<div class="gwaunggu statbar">
						<textarea name="" class="stattext">광주광역시 15%</textarea>
					</div>
					<div class="daejun statbar">
						<textarea name="" class="stattext">대전광역시 15%</textarea>
					</div>
					<!-- 전국 넣기 못하겠지?..-->
					<div style="clear: both;"></div>

				</div></td>

			<td class="statmapbtn">
				<div class="alert alert-warning" style="text-align: center;">
					<b>통계 자료 상세 검색</b>
				</div>

				<div class="statsel" style="text-align: center;">
					<label for="location"> 지 역 &nbsp; &nbsp; &nbsp; &nbsp;
						&nbsp; &nbsp;&nbsp; &nbsp; <select name="location" id="">
							<option value="">선택&nbsp;</option>
							<option value="서울특별시">서울특별시&nbsp;</option>
							<option value="인천광역시">인천광역시&nbsp;</option>
							<option value="경기도">경기도&nbsp;</option>
							<option value="부산광역시">부산광역시&nbsp;</option>
							<option value="광주광역시">광주광역시&nbsp;</option>
							<option value="대전광역시">대전광역시&nbsp;</option>
							<option value="울산광역시">울산광역시&nbsp;</option>
							<option value="대구광역시">대구광역시&nbsp;</option>
					</select>
					</label>
				</div>

				<div class="statsel" style="text-align: center;">
					<label for="yearmonth"> 연 도 &nbsp; &nbsp; &nbsp;&nbsp;
						&nbsp; &nbsp; &nbsp; &nbsp; <select name="yearmonth" id="">
							<option value="">선택&nbsp;</option>
							<option value="2020">2020&nbsp;</option>
							<option value="2019">2019&nbsp;</option>
							<option value="2018">2018&nbsp;</option>
							<option value="2017">2017&nbsp;</option>
							<option value="2016">2016&nbsp;</option>
					</select>
					</label>
				</div>
				<div class="alert alert-warning  statsearchinfo">
					<input type="button" value="검색"> <input type="text" name=""
						id="statlocationname" value="" disabled> <input
						type="text" name="" id="statdate" value="" disabled>
				</div> <!--미니 테이블 이것 검색 결과 반환용도 -->
				<table class="table table-bordered statmapsubtbl">
					<tr>
						<th>안락사</th>
						<td><input type="text" name="euthanasia" id="" value=""
							disabled></td>
						<th>입 양</th>
						<td><input type="text" name="adoption" id="" value=""
							disabled></td>
						</td>
					</tr>
					<tr>
						<th>자연사</th>
						<td><input type="text" name="death" id="" value="" disabled></td>
						<th>반 환</th>
						<td><input type="text" name="return" id="" value="" disabled></td>
						</td>
					</tr>
					<tr>
						<th>방 생</th>
						<td><input type="text" name="semifarming" id="" value=""
							disabled></td>
						<th>보 호</th>
						<td><input type="text" name="protection" id="" value=""
							disabled></td>
						</td>
					</tr>
					<tr>
						<th>기 증</th>
						<td><input type="text" name="donation" id="" value=""
							disabled></td>
						<th>전 체</th>
						<td><input type="text" name="stattotal" id="" value=""
							disabled></td>
						</td>
					</tr>
					<tr>
						<th colspan="4" id="subtbltr">위의 통계는 오차범위 10%가 있습니다. <small>
								(단위 : 두) </small></th>
					</tr>

				</table>


			</td>


		</tr>

	</table>
	<!-- 차트 테이블 위에가 1번 끝. -->
	<hr>
	<div class="well maintext_two">MYPET 통계자료</div>
	<table class="table table-bordered statmypet">
		<tr>
			<td colspan="2">
				<div class="alert alert-info statmypetinfo">
					<div class="totaluser">
						전체 회원 수 : 10000 명 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <span
							class="statmypetsubinfo">입양신청 회원 수 : 5050 명 감사합니다.!</span>
					</div>
					<div class="totalanimal">
						전체 동물 수 : 11234 마리 &nbsp; &nbsp; <span class="statmypetsubinfo">입양된
							동물 수 : 5000 마리 &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
							&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;입양가능 동물
							수 : 2000마리 </span>
						<div id="statmypetaddinfo" style="float: right;">더 들여다보기</div>
						<div style="clear: both;"></div>
					</div>
				</div>
			</td>
		</tr>


		<tr id="statmypetmaininfo">
			<td>
				<div id="stathalf">
					<div style="font-size: 16px; font-weight: bolder;">
						MYPET의 전체 동물입양 자료입니다. <small>( 입양가능 동물에 마우스를 올려보세요. )</small><br>
					</div>
					<hr>
					<ul class="stathalfpie">
						<li class="abled"></li>
						<li></li>
						<li></li>
					</ul>
					<div id="subinfotext1">
						<textarea>입양가능15%</textarea>

					</div>
					<div id="subinfotext2">
						<textarea>입양완료50%</textarea>
					</div>
					<div id="subinfotext3">
						<textarea>기타사항10%</textarea>
					</div>
					<div style="clear: both;"></div>
				</div>
			</td>
			<td>
				<div class="statanimaltext well">생명과 함께한다는 결심에 신중!</div>
				<div class="statanimaltext well">생명을 '사랑하기'
					&nbsp;&nbsp;&nbsp;약속 ♡</div>
				<div class="alert alert-warning statanimalpieaddinfo">사랑스런 동물이
					기다리고 있어요!</div>
				<div class="statanimalpie"></div>
				<div id="subinfoanitext1">
					<textarea>강아지50%</textarea>

				</div>
				<div id="subinfoanitext2">
					<textarea>고양이35%</textarea>
				</div>
				<div id="subinfoanitext3">
					<textarea>기타15%</textarea>
				</div>

				<div style="clear: both;"></div>

			</td>
		</tr>

	</table>

</div>



<script>
	/* 글자 값 받기 */
	$(".statsel select[name='location']").change(function() {
		$("#statlocationname").val($(this).val());
	})
	$(".statsel select[name='yearmonth']").change(function() {
		$("#statdate").val($(this).val());
	})

	/* */

	$("#statmypetaddinfo").mousedown(
			function() {
				console.log(123);
				$("#content").css("height", "1500px");

				$('body,html').animate({
					scrollTop : $("#content").height()
				}, 500);

				$("#statmypetmaininfo").css("opacity", "1");
				$("#subinfotext1,#subinfotext2,#subinfotext3").css("opacity",
						"1");

				/*[자바스크립트플러그인] 참고!*/
				/* 반달 용 반달  */

				$(".stathalfpie li").css("position", "absolute").css("top",
						"100%").css("left", "0").css("width", "inherit").css(
						"height", "inherit").css("margin", "0").css("border",
						"70px solid").css("border-top", "none").css(
						"border-bottom-left-radius", "250px").css(
						"border-bottom-right-radius", "250px").css(
						"transform-origin", "50% 0");

				$(".stathalfpie li:nth-child(1)").css("z-index", "4").css(
						"border-color", "#ffc9c9").css("animation",
						"chartAni1 2s linear 1 forwards");

				$(".stathalfpie li:nth-child(2)").css("z-index", "3").css(
						"border-color", "rgb(158, 247, 106)").css("animation",
						"chartAni2 2s linear 1 forwards");

				$(".stathalfpie li:nth-child(3)").css("z-index", "2").css(
						"border-color", "rgb(113, 185, 243)").css("animation",
						"chartAni3 2s linear 1 forwards");

			});

	/* 호버 느낌인데 이건 하지 말자
	 $(".stathalfpie li:nth-child(1)").mouseover(function(){
	 $("#subinfotext1").css("opacity","1");
	 });
	 $(".stathalfpie li:nth-child(1)").mouseout(function(){
	 $("#subinfotext1").css("opacity","0");
	 });

	 */

	/*반달 올렸을떄 호버같은 역할 하기  둥근달 용 색상 조잘*/

	$(".abled").mouseover(
			function() {
				$(".statanimaltext").css("display", "none");
				$("#subinfoanitext1,#subinfoanitext2,#subinfoanitext3").css(
						"opacity", "1");
				$(".statanimalpieaddinfo").css("display", "block");

				var i = 1;
				var func1 = setInterval(function() {
					if (i < 30) {
						color1(i);
						i++;
					} else if (i < 50) {
						color2(i);
						i++;
					} else if (i < 101) {
						color3(i);
						i++;
					} else {
						clearInterval(func1);
					}
				}, 10);

			});

	function color1(i) {
		$(".statanimalpie").css(
				{
					"background" : "conic-gradient(#A593E0 0% " + i
							+ "%, #ffffff " + i + "% 100%)"
				});

	}

	function color2(i) {
		$(".statanimalpie")
				.css(
						{
							"background" : "conic-gradient(#A593E0 0% 30%, #E0E3DA 30% "
									+ i + "%, #ffffff " + i + "% 100%)"
						});

	}

	function color3(i) {
		$(".statanimalpie")
				.css(
						{
							"background" : "conic-gradient(#A593E0 0% 30%, #E0E3DA 30% 50%, #21f3d6 50% "
									+ i + "%, #ffffff " + i + "% 100%)"
						});

	}
</script>
