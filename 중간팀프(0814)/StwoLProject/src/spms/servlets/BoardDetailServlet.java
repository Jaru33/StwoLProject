package spms.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import spms.dao.BoardDao;
import spms.dao.MemberDao;
import spms.dto.BoardDto;



@WebServlet("/sampleBoard/detail")
public class BoardDetailServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		Connection conn = null;

		String bNo = "";
		RequestDispatcher rd = null;

		try {
			bNo = req.getParameter("no");
			int no = Integer.parseInt(bNo);
			
			ServletContext sc = this.getServletContext();

			conn = (Connection) sc.getAttribute("conn");

			BoardDao boardDao = new BoardDao();
			boardDao.setConnection(conn);

			BoardDto boardDto = boardDao.boardDetailView(no);
			
			req.setAttribute("boardDto", boardDto);

			rd = req.getRequestDispatcher("./BoardDetailForm.jsp");
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

}
