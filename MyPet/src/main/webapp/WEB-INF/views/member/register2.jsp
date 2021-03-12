<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>MyPet::회원가입</title>
	
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
    
</style>

<div id="content">
	<div class="property-box">
			<div class="board-name">회원가입</div>
		 	
		 	
  		<form method="post" id="form2" action="/#">
   		
   		<!-- 시작 -->
			
			 <div class="infomlist">  
			
			<span>아이디</span>
	       <input type="text" class="form-control form-weight readonly" id="userid" name="id"> 
			
			<span>이름</span>
			<input type="text" class="form-control form-weight readonly" id="username" name="name">
		
      		<span>주민번호</span> 
			<input type="text" class="form-control ssn readonly" id="ssn1" maxlength=6 name="ssn"> -
			<input type="text" class="form-control ssn readonly" id="ssn2" maxlength=7 name="ssn"> 
			
			<span>비밀번호</span> 
	       <input type="password" class="form-control form-weight" id="" name="password">
			
			<span>비밀번호확인</span>
			<input type="password" class="form-control form-weight" id="search-text" name="repassword">
			
			<span>주소</span>
			<input type="text" class="form-control search-text" name="address">
			
			<span>전화번호</span> 
			<input type="text" class="form-control tel" id="userTel1" maxlength=3 name="tel1">-
			<input type="text" class="form-control tel" id="userTel2" maxlength=4 name="tel2">-
			<input type="text" class="form-control tel" id="userTel3" maxlength=4 name="tel3">
			
			<span>이메일</span>
			<input type="text" class="form-control search-text" name="email">
			
			 <span>관심매물</span>
         	<select class="form-control multiple">
            	<option val="1">원룸</option>
           		<option val="2">투룸</option>
            	<option val="3">오피스텔</option>
         	</select>
			
			
			<span><label for="siCode2">관심지역</label></span>
			<select title="시/도 선택"  id="frontsel" name="frontsel" class="form-control multiple" id="from" style="width:250px">
				<c:forEach var="front" items="${front }" varStatus="status">
					<option value="${front.location }">${front.location }</option>
				</c:forEach> 
			</select>		
			
			<select title="시/군/구 선택"  id="middlesel" name="middlesel" class="form-control multiple" id="middle" style="width:250px">
				
			</select>		
			
			<select title="동/읍/면 선택"  id="endsel" name="endsel" class="form-control multiple" id="end" style="width:250px">
			
			</select>
       		

			</div>
			
			<input type="submit" class="btn btn-outline-secondary" type="button" id="btn-register" value="회원가입">
       		
       		
       	
       		
       	</form>
       
        
          
          
          <!-- property-box -->
          </div>
</div>
<!-- content -->

<script>
	
</script>

