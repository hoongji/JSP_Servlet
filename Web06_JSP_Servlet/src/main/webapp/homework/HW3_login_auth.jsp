<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 인증 페이지</title>
</head>
<body>
	<%
	//- 전송받은 id,pw를 확인하여 id는 "test", pw는 "1234"일 경우
	//String userId = (String)request.getAttribute("id");
	//String password = (String)request.getAttribute("pw");
	
	String userId =	request.getParameter("id");
	String password = request.getParameter("pw");
	
	out.println("전송받은 id,pw = " + userId + ", " + password);
	
	if(userId.equals("test") && password.equals("1234")){ // null.~는 에러남.. 아디,비번에 암것도 없이 로그인하면 에러남
		session.setAttribute("id", userId); // value = test 라고 해도 되고 userId를 쓰는게 더 동적임 	
    	out.println("id 세션을 생성(만료 시간은 자유롭게 설정)");
		session.setMaxInactiveInterval(20); // 20초
		//- 세션을 생성한 이후에 HW3_login_result.jsp 페이지로 이동 
		   //- 페이지 이동 코드 
		   out.print("<script>alert('로그인 성공');</script>");
		   out.print("<script>location.href='HW3_login_result.jsp'</script>");
	}else{
		out.println("<script>alert('로그인 실패');</script>");
		//- 전송받은 id, pw가 "test", "1234" 가 아닌 경우, HW3.jsp 페이지로 이동
		out.print("<script>location.href='HW3.jsp'</script>");  
	}
   //- 세션을 생성한 이후에 HW3_login_result.jsp 페이지로 이동 
   //- 페이지 이동 코드 
   //	out.print("<script>location.href='HW3_login_result.jsp'</script>");
   
	%>
   
   
</body>
</html>