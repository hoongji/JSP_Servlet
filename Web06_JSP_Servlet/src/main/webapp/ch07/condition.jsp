<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Condition</title>
</head>
<body>
	<%
		int day = 1; // 지역 변수
		
	%>
	
	<% 
		if(day == 1 || day == 7){
	%>
		<p>오늘은 주말입니다.</p>
	<%
		}else{
	%>
		<p>오늘은 평일입니다.</p>
	<%
		}
	%>
</body>
</html>