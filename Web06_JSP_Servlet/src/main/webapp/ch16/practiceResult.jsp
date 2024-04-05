<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과 페이지</title>
</head>
<body>
	<%
		String userId = request.getParameter("id");
		String password = request.getParameter("pw");
		String saveAgreed = request.getParameter("saveAgreed"); //input -> request.getParameter()로 받는다 
		
		
		// practiceLogin.jsp에서 saveAgreed가 체크가 되어 있으면 
		if (saveAgreed != null){ 
		// id,pw에 대한 쿠키를 생성한다.
			Cookie idCookie = new Cookie("id",userId);
			Cookie pwCookie = new Cookie("pw",password);
		// 쿠키 만료 시간은 10분으로 설정.
			 idCookie.setMaxAge(60*10);
			 pwCookie.setMaxAge(60*10);
			 
			 response.addCookie(idCookie); // 다시 보내기
			 response.addCookie(pwCookie);
			 
		}else{
			out.println("<h2>쿠키를 찾지 못했습니다.</h2>");
		}	
	%>

	<h2>로그인 결과 화면</h2>
	<p><%=request.getParameter("id") %>님, 환영합니다.</p>
</body>
</html>