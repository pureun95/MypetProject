<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MyPet :: 입양하기</title>
	<tiles:insertAttribute name="asset"></tiles:insertAttribute>
	
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
	
	</style>
</head>
<body>
 <!-- ########################## header 시작 ########################## -->
    <tiles:insertAttribute name="header"></tiles:insertAttribute>
    <!-- ########################## header 끝 ########################## -->

    <!-- ########################## 좌측 nav 시작 ########################## -->
	<tiles:insertAttribute name="nav1"></tiles:insertAttribute>
    <!-- ########################## 좌측 nav 끝 ########################## -->
    
    <!-- ########################## 상단 nav 시작 ##########################-->
	<tiles:insertAttribute name="nav2"></tiles:insertAttribute>
    <!-- ########################## 상단 nav 끝 ########################## -->


    <div id="content">
    	여기!
    </div>


    <!-- ########################## footer 시작 ##########################-->
	<tiles:insertAttribute name="footer"></tiles:insertAttribute>
    <!-- ########################## footer 끝 ##########################-->
</body>
</html>