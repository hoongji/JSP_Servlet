<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
</head>
<body>
	<!-- HW2.jsp 에서 전송된 데이터를 출력 -->
	<%= request.setCharacterEncoding("UTF-8") %>
	<jsp:useBean id="member" class="edu.web.homework.MemberVO" />
	<jsp:setProperty property="*" name="member" />
	
	<%
		
	%>
	
	
	<h2>회원 정보</h2>
	<p>아이디 : <%=member.getUserid() %></p>
	<p>비밀번호 : <%=member.getPassword() %></p>
	<p>이메일 : <%=member.getEmail() %></p>
	<p>이메일 수신 여부 : <%=member.getEmailAgree() %></p>
	<p>관심사항 : <%=member.getInterest() %></p>
	
	<%=member.getInterestJoin() %>
	
	<p>핸드폰 : <%=member.getPhone() %></p>
	<p>자기소개 : <%=member.getIntroduce() %></p>
	
	
	<!--  
	자바빈 객체에 값 설정<br>
	<jsp:setProperty property="userid" name="member" value=""/>
	<jsp:setProperty property="password" name="member" value=""/>
	<jsp:setProperty property="email" name="member" value=""/>
	<jsp:setProperty property="emailAgree" name="member" value=""/>
	<jsp:setProperty property="interest" name="member" value=""/>
	<jsp:setProperty property="phone" name="member" value=""/>
	<jsp:setProperty property="introduce" name="member" value=""/>
	
	
	아이디 : <jsp:getProperty name="member" property="userid"/><br>
	비밀번호 : <jsp:getProperty name="member" property="password"/><br>
	이메일 : <jsp:getProperty name="member" property="email"/><br>
	이메일 수신여부 : <jsp:getProperty name="member" property="emailAgree"/><br>
	관심사항 : <jsp:getProperty name="member" property="interest"/><br>
	핸드폰 : <jsp:getProperty name="member" property="phone"/><br>
	자기소개 : <jsp:getProperty name="member" property="introduce"/><br>-->
	

	
	
</body>
</html>