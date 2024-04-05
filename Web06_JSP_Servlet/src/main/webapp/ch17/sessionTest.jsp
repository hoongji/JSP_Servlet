<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session test</title>
</head>
<body>
	<%
		String userId = (String)session.getAttribute("userId");  // Attribute는 Object 타입이니깐 형변환(String)
	%>
	
	<h2><%=userId %>님, 환영합니다</h2>
</body>
</html>