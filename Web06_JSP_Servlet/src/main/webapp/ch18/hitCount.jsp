<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Hit Count</title>
</head>
<body>
	<%
		Integer hitsCount = 
			(Integer) application.getAttribute("hitCounter"); //get을 쓰는 이유 : 다시 방문했을 때 카운트를 읽어주려고
	
		if(hitsCount == null || hitsCount == 0){
			out.println("첫 방문을 환영합니다.");
			hitsCount = 1;
		}else{
			out.println("재방문을 환영합니다.");
			hitsCount += 1;
		}
		application.setAttribute("hitCounter",hitsCount);
	%>
	
	<p>전체 방문 횟수 : <%=hitsCount %></p>
	
</body>
</html>