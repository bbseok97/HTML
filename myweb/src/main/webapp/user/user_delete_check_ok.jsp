<%@page import="com.myweb.user.model.UserVO"%>
<%@page import="com.myweb.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	/*
		1. 폼값을 받습니다.
		2. login(id,pw) 메서드를 재활용해서 비밀번호가 맞는지 확인
		3. login 메서드가 0을 반환하면, "비밀번호를 확인하세요" 출력 후 마이페이지로 이동
		   login 메서드가 1을 반환하면, delete()를 실행
		   
		4. 삭제 성공 시 "회원 탈퇴처리 되었습니다." 출력. 세션을 전부 삭제
			/Myweb으로 이동
			삭제 실패 시 "회원 탈퇴에 실패했습니다." 출력. 마이페이지로 이동
			
			sql = "delete from user where id = ?";
	*/
	
	if(session.getAttribute("user_id") == null){
		response.sendRedirect("user_login.jsp");
	}
	
	String id = (String)session.getAttribute("user_id");
	String pw = request.getParameter("pw");
	
	UserDAO dao = UserDAO.getInstance();
			
	int result = dao.login(id, pw);
			
	if(result == 0){	//	비밀번호가 틀린 경우 %>
		<script>
			alert("비밀번호를 확인하세요.");
			location.href="user_mypage.jsp";
		</script>
	<%}else { 	//	삭제 성공 시	
		int result2 = dao.delete(id);
		if(result2 == 1){
			session.invalidate(); %>
			<script>
			alert("회원 탈퇴에 성공했습니다.");
			location.href='/myweb'
			</script>
		<%}else { %>
			<script>
				alert("회원 탈퇴에 실패했습니다.");
				location.href='user_mypage.jsp';
			</script>
	<%} %>
		
	<%}
	%>
%>