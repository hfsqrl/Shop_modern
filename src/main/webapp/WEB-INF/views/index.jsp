<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="./template/bootstrap.jsp"></c:import>
<link href="./css/index.css" rel="stylesheet">
</head>
<body>
<h1>index</h1>

<div id="LeftMenu">
	<c:choose>
		<c:when test="${empty member}">
			<a href="../member/memberLogin">LOGIN</a> 
			<a href="../member/memberJoin">JOIN</a>
		</c:when>
		
		<c:otherwise>
			<a href="./member/memberLogout">LOGOUT</a>
			<a>MY PAGE</a>
		</c:otherwise>
	</c:choose>	
	
	
		
</div>
<h1><spring:message code="hello.main"></spring:message></h1>

<div class="container">contents</div>
</body>
</html>