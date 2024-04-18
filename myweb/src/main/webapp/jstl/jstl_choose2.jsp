<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
	</head>
	<body>
		<c:choose>
			<c:when test="${param.score > 100 }">
				잘못된 입력입니다.
			</c:when>
			<c:when test="${param.score >= 90 }">
				A 입니다.
			</c:when>
			<c:when test="${param.score >= 80 }">
				B 입니다.
			</c:when>
			<c:when test="${param.score >= 70 }">
				C 입니다.
			</c:when>
			<c:when test="${param.score >= 60 }">
				D 입니다.
			</c:when>
			<c:otherwise>
				F 입니다.
			</c:otherwise>
		</c:choose>
	</body>
</html>