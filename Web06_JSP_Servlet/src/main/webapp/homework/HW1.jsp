<%@page import="java.util.Date"%>
<%@page import="edu.web.homework.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HW1</title>
</head>
<body>
	<%
		ArrayList<BoardVO> list = new ArrayList<>();
	
		// 게시글 데이터 5개를 list에 추가
		list.add(new BoardVO(1,"test1","mok",new Date()));
		list.add(new BoardVO(2,"test2","lim",new Date()));
		list.add(new BoardVO(3,"test3","kim",new Date()));
		list.add(new BoardVO(4,"test4","park",new Date()));
		list.add(new BoardVO(5,"test5","lee",new Date()));
	%>
	
	

	
	<!-- table을 생성하여 5개의 게시글 출력 -->
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
			</tr>
		</thead>
		<tbody>
			<%for(int i = 0;i < list.size(); i++){%>
				<tr>
					<td><%=list.get(i).getBoardId()%></td>
					<td><%=list.get(i).getBoardTitle()%></td>
					<td><%=list.get(i).getUserid() %></td>
					<td><%=list.get(i).getBoardRegDate() %></td>	
				</tr>
			<%} %>
		</tbody>
	</table>
	
</body>
</html>