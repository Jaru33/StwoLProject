package spms.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import spms.dao.MemberDao;
import spms.dto.MemberDto;

@WebServlet("/member/update")
public class BoardUpdateServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		Connection conn = null;

		String mNo = "";
		RequestDispatcher rd = null;

		try {
			mNo = req.getParameter("no");
			int no = Integer.parseInt(mNo);
			ServletContext sc = this.getServletContext();

			conn = (Connection) sc.getAttribute("conn");

			MemberDao memberDao = new MemberDao();
			memberDao.setConnection(conn);

			MemberDto memberDto = memberDao.memberSelectOne(no);
			req.setAttribute("memberDto", memberDto);

			rd = req.getRequestDispatcher("./MemberUpdateForm.jsp");
			rd.forward(req, res);

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			req.setAttribute("msg", "회원추가하다 오류남");

			rd = req.getRequestDispatcher("/Error.jsp");
			// 포워딩
			rd.forward(req, res);
		}

	}// doget end

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

//			req.setCharacterEncoding("UTF-8");
		MemberDto memberDto = null;
		Connection conn = null;

		try {
			String email = req.getParameter("email");
			String name = req.getParameter("name");
			String mNo = req.getParameter("no");
			int no = Integer.parseInt(mNo);
			
			memberDto = new MemberDto();
			memberDto.setEmail(email);
			memberDto.setName(name);
			memberDto.setNo(no);
			
			ServletContext sc = this.getServletContext();

			conn = (Connection) sc.getAttribute("conn");

			MemberDao memberDao = new MemberDao();
			memberDao.setConnection(conn);
			
			int result = memberDao.memberUpdate(memberDto);
			
			if(result == 0) {
				System.out.println("회원 정보 조회가 실패했습니다.");
			}
			
			res.sendRedirect("./list");

		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("msg", e);
			
			RequestDispatcher dispatcher = req.getRequestDispatcher("/Error.jsp");
			//포워딩
			dispatcher.forward(req, res);
		} 

	}
}
