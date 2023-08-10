package spms.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdk.internal.org.objectweb.asm.commons.SerialVersionUIDAdder;
import spms.dao.MemberDao;
import spms.dto.MemberDto;

@WebServlet("/member/list")
public class BoardListServlet extends HttpServlet{
	
	private static final long SerialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) 
			throws ServletException, IOException {
		
		Connection conn = null;
	
		try {
			
			ServletContext sc = this.getServletContext();
			
			conn = (Connection)sc.getAttribute("conn");
			
			MemberDao memberDao = new MemberDao();
			memberDao.setConnection(conn);
			
			ArrayList<MemberDto> memberList = null;
			
			memberList = (ArrayList<MemberDto>)memberDao.selectList();
			
			request.setAttribute("memberList", memberList);
			
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("/member/MemberListView.jsp");
			//인클루딩
			dispatcher.forward(request, response);
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			
			request.setAttribute("error", e);
			request.setAttribute("msg", "Sorry but I love you");
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/Error.jsp");
			//포워딩
			dispatcher.forward(request, response);
		}
	}//doget 끝
	
	@Override
	protected void doPost(HttpServletRequest req, 
			HttpServletResponse resp) 
			throws ServletException, IOException {
		
	}
	

}
