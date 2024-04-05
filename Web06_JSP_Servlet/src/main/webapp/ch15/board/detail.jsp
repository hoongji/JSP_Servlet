<%@page import="web.ch15.board.BoardBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 조회</title>
</head>
<body>
	<%
		// request 객체에서 getAttribute를 이용하여 board 데이터 참조
		BoardBean board = (BoardBean) request.getAttribute("board"); // 형변환 :board의 클래스 이름 :BoardBean 
		// getattribute()는 Object 타입, Object는 모든 객체들의 부모 클래스이므로 (BoardBean)으로 형변환이 필요.  
		
	%>

	<p>번호 : <%=board.getNo() %></p>
	<p>제목 : <%=board.getTitle() %></p>
	<p>작성자 : <%=board.getWriter() %></p>
	<p>내용 : <%=board.getContent() %></p>
	<p>작성일 : <%=board.getRegDate() %></p>
	
</body>
</html>