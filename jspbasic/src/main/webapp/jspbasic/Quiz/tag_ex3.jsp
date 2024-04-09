<%@page import="java.util.Collections"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	ArrayList<Integer> lotto = new ArrayList<>();
	Random rand = new Random();
	while(lotto.size() <6){
		int num = rand.nextInt(45)+1;
		
		if(!lotto.contains(num)){
			lotto.add(num);
		}
	}
	Collections.sort(lotto);	//Collection의 정렬기능을 활용.
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>tag_ex3</title>
	</head>
	<body>
		출력 결과 <br>
		이번주 로또번호 <%=lotto %>
		<!-- 
		ArrayList를 사용하여 1 ~ 45까지 랜덤한 번호를 발생시키고 리스트에 담으세요.
		
		body 태그에서
		이번주 로또번호 [1,2,3,4,5,6] 형식으로 출력
	
		단, list.contains(값) => 중복을 피하면 됩니다.
		Collections.sort(리스트) => 오름차순 정렬
		 -->
	</body>
</html>