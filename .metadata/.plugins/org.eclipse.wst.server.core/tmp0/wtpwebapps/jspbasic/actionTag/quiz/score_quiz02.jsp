<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		1. 앞에서 넘어온 폼값을 받아서 평균을 구합니다.
		2. 평균이 60점 이상이면 score_quiz03.jsp로 이동
			"~~님 평균 xx점 합격" 을 출력
		3. 평균이 60점 미만이면 score_quiz04.jsp로 이동
			"~~님 평균 xx점 불합격" 을 출력
			
			조건) 세션 사용 X
	*/
	request.setCharacterEncoding("utf-8");
	
	String name = request.getParameter("name");
	String sKo = request.getParameter("ko");
	String sEn = request.getParameter("en");
	String sMath = request.getParameter("math");
	
	int ko = Integer.parseInt(sKo);
	int en = Integer.parseInt(sEn);
	int math = Integer.parseInt(sMath);
	
	double avg = (double)(ko + en + math) / 3;
		
	
	if(avg >= 60){
		request.setAttribute("avg", avg);
		request.getRequestDispatcher("score_quiz03.jsp")
		.forward(request, response);
		
	}else { %>
		<jsp:forward page="">
			<jsp:param value="<%=avg %>" name="avg"/>
		</jsp:forward>
	<%} %>
	
