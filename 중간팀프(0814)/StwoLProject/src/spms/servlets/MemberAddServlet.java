package spms.servlets;

import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import spms.dao.MemberDao;
import spms.dto.MemberDto;

@WebServlet("/member/signup")
public class MemberAddServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req
		, HttpServletResponse res) 
			throws ServletException, IOException {
		
		res.sendRedirect("./MemberSignUpForm.jsp");
		
	}//doget end
	
	@Override
	protected void doPost(HttpServletRequest req
		, HttpServletResponse res) 
			throws ServletException, IOException {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String nameStr = req.getParameter("name");
		System.out.println("nameStr"+ nameStr);
		String idStr = req.getParameter("id");
		String pwdStr = req.getParameter("pwd");
		String phoneNumberStr = req.getParameter("phoneNumber1")
			+ req.getParameter("phoneNumber2")
			+ req.getParameter("phoneNumber3");
		int phoneNumber = Integer.parseInt(phoneNumberStr);
		
		String email = req.getParameter("email");
		
		try {
			MemberDto memberDto = new MemberDto();
			
			memberDto.setMname(nameStr);
			memberDto.setMid(idStr);
			memberDto.setPwd(pwdStr);
			memberDto.setPhoneNum(phoneNumber);
			memberDto.setEmail(email);
			
			ServletContext sc = this.getServletContext();
			
			conn = (Connection) sc.getAttribute("conn");

			MemberDao memberDao = new MemberDao();
			
			memberDao.setConnection(conn);
			
			int resultNum = 0;
			
			resultNum = memberDao.memberInsert(memberDto);
			
			if(resultNum == 0) {
				System.out.println("회원가입 실패");
			}else if(resultNum == 1) {
				System.out.println("회원가입 성공");
			}
			
			res.sendRedirect("./MemberSignUpSuccess.jsp");//메인페이지로 이동
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			req.setAttribute("error", e);

			RequestDispatcher dispatcher 
				= req.getRequestDispatcher("/Error.jsp");

			dispatcher.forward(req, res);
		}
		
	}//dopost end
	
	
}
