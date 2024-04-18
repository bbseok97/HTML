<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>jstl_form.jsp</title>
	</head>
	<body>
		<h2>if 절 확인</h2>	<%--단순 if --%>
		<form action="jstl_if.jsp">
			이름: <input type="text" name="name"><br>
			나이: <input type="text" name="age"><br>
			<input type="submit" value="확인">
		</form>
		
		<h2>choose 절 확인</h2>
		<form action="jstl_choose.jsp">
			이름: <input type="text" name="name"><br>
			나이: <input type="text" name="age"><br>
			<input type="submit" value="확인">
		</form>
		
		<h2>else if(choose)절 확인2</h2>
		<!-- 점수를 입력받아서 90점 이상이면 A, 80점 이상이면 B, 70점 이상이면 C, 
		60점 이상이면 D, 60점 미만이면  F -->
		<form action="jstl_choose2.jsp">
			점수: <input type="text" name="score"><br>
			<input type="submit" value="결과">
		</form>
	</body>
</html>