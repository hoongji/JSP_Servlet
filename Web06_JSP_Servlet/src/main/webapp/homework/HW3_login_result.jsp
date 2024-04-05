<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과 페이지</title>
</head>
<body>
	<!-- 
	- 세션에서 id 값을 꺼내서 HTML 태그에 출력 
	
	- 만약, 로그인을 하지 않고 url로 접속할 경우 '로그인 해주세요!!'라고 alert를 띄우고
      HW3.jsp 페이지로 이동 
    - alert 띄우는 코드 
     ㄴ out.print("<script>alert('로그인 해주세요!!');</script>"); -->
	<%
		String userId = (String)request.getAttribute("id"); 
	
	//세션에서 id 값을 꺼냄 
	// 로그인 안된다 -> session이 없다 -> if문으로
	
	if(userId == null){
		// 로그인 alert
		out.print("<script>alert('로그인 해주세요!!');</script>"); 
		// 로그인 페이지로 이동
		out.print("<script>location.href='HW3.jsp'</script>");  
	}
	
	%>
	
	<h1>로그인 결과 페이지</h1>
	<h2><%=userId %>님, 환영합니다.</h2>
	
</body>
</html>