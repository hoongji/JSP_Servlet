package web.ch21.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/register.do")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static MemberDAO dao;  // DB 연결하려면 DAOImple에 연결
    
    
   
    public RegisterServlet() {
    	dao = MemberDAOImple.getInstance(); // DB 연결하려면 DAOImple에 연결
    	System.out.println("RegisterServlet()");
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// sendRedirect() : 특정 경로로 이동
		// request는 소멸되기 때문에 데이터를 전송할 수 없음 
		// 힌트!! 회원정보 조회 : server -> jsp 아님 반대로 보내야 하는데 그때는 RequestDispatcher 이용 (DetailServlet)
		response.sendRedirect("/Web06_JSP_Servlet/ch21/register.jsp"); //URL 이동할 때만 사용, 보내주는 용도* 
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 // 요청으로부터 파라미터를 읽어옴
		System.out.println("doPost()");
	    String userid = request.getParameter("userid");
	    String password = request.getParameter("password");
	    String email = request.getParameter("email");
	    String emailAgree = request.getParameter("emailAgree");
	    String[] interest = request.getParameterValues("interest"); // 여러 개의 값을 받기 위해 getParameterValues 사용
	    String phone = request.getParameter("phone");
	    String introduce = request.getParameter("introduce");
	    
	    
	    // 받아온 데이터를 MemberVO 객체에 저장
	    MemberVO member = new MemberVO(userid, password, email, emailAgree, interest, phone, introduce);
	    
	
	    // 여기에 다음으로 수행할 작업을 추가 (예: DB에 데이터 저장, 다른 페이지로 이동 등) - > DB 연결하려면 DAOImple에 연결 
	    
	    int result = dao.insert(member);
	    System.out.println(result);
	    
	}

}
