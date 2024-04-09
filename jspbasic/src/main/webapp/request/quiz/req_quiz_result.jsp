<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//	post 방식으로 들어온 데아터를 인코딩 처리...
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	double height = Double.parseDouble(request.getParameter("height"));
	double weight = Integer.parseInt(request.getParameter("weight"));
	
	//BMI 공식 => kg / (cm/100 * cm/100)
	double bmi = weight / (height/100 * height/100);
	
	//	소수점 2자리까지만 구하기..
	bmi = (int)(bmi * 100) / 100.0;
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>req_quiz_result.jsp</title>
	</head>
	<body>
		<p>
			이름 : <%=name %><br>
			키 : <%=height %><br>
			몸무게 : <%=weight %><br>
			BMI : <%=bmi %>)<br>
		</p>
			<%
			if(bmi >= 25){
			%>	
			과체중 입니다.
			<% 
			}else if(bmi <= 18){
			%>	
			저체중 입니다.
			<% 
			}else{
			%>	
			정상입니다.
			<%
			}
			%>
	</body>
</html>