package edu.web.homework;

public class MemberVO {

	// 아이디(userid), 패스워드(password), 이메일(email) , 이메일 수신여부(emailAgree), 관심사항(interest), 핸드폰(phone), 자기소개(introduce)
	// 주의) useBean을 위한 VO를 생성할 경우, parameter name과 변수명이 같아야 함
	private String userid;
	private String password;
	private String email;
	private String emailAgree;
	private String[] interest; // String[] interest; (관심사항은 배열로 변수 선언)
	private String phone;
	private String introduce;
	
	
	// 기본 생성자
	public MemberVO() {}

	
	// 매개변수 생성자 
	public MemberVO(String userid, String password, String email, String emailAgree, String[] interest, String phone,
			String introduce) {
		super();
		this.userid = userid;
		this.password = password;
		this.email = email;
		this.emailAgree = emailAgree;
		this.interest = interest;
		this.phone = phone;
		this.introduce = introduce;
	}
	
	

	


	public String getUserid() {
		return userid;
	}


	



	public void setUserid(String userid) {
		this.userid = userid;
	}

	


	public String getPassword() {
		return password;
	}
	
	
	public void setPassword(String password) {
		this.password = password;
	}
	

	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getEmailAgree() {
		return emailAgree;
	}


	public void setEmailAgree(String emailAgree) {
		this.emailAgree = emailAgree;
	}


	public String[] getInterest() {
		return interest;
	}

	public String getInterestJoin() {
		/*String interest = null;
		if(getInterest() == null){
			interest = "";
		}else{
			interest = String.join(", ",getInterest());
		}
		return interest; 를 줄이면*/
		
		return(interest == null) ? "없음" : String.join(", ", interest);
	}
	
	public void setInterest(String[] interest) {
		this.interest = interest;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getIntroduce() {
		return introduce;
	}


	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	
	
	// - String[] interest; (관심사항은 배열로 변수 선언)
	// - request.getParameterValues() : checkbox로 선택된 여러 개의 데이터를 저장
	
	
	
}//end MemberVO
