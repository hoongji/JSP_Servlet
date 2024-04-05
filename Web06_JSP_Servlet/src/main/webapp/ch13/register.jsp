<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<h2>회원 가입 페이지</h2>
	<form action="HW2_memberInfo.jsp" method="POST">
		<p>아이디</p>
		<input type="text" name="userId" placeholder="아이디 입력"
		required="required">
		<p>비밀번호</p>
		<input type="password" name="password" placeholder="비밀번호 입력"
		required="required">
		<p>이메일</p>
		<input type="email" name="email" placeholder="이메일 입력"
		required="required">
		<p>이메일 수신여부</p>
		<label><input type="radio" name="emailAgree" value="yes">예</label>
		<label><input type="radio" name="emailAgree" value="no"
		checked="checked">아니요</label>
		<p>관심 사항</p>
		<input type="checkbox" name="interest" value="IT">IT/인터넷 
	  	<input type="checkbox" name="interest" value="movie">영화
		<p>핸드폰</p>
		<input type="text" name="phone">
		<p>자기소개</p>
		<p><textarea cols="30" rows="4" name="introduce"
		placeholder="자기소개 입력" required="required"></textarea></p>
		<br>
		<input type="submit" value="전송">
	</form>
</body>
</html>