package spms.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import spms.dao.BoardDao;
import spms.dto.BoardDto;



@WebServlet("/sampleBoard/search")
public class BoardSerachServlet extends HttpServlet{
	
	private static final long SerialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, 
		HttpServletResponse response) 
		throws ServletException, IOException {
		Connection conn = null;
		String searchVal1 = "";
		String searchVal2 = "";
		searchVal1 = request.getParameter("searchVal1");
		System.out.println("sevletsearchval:"+searchVal1);
		searchVal2 = request.getParameter("searchVal2");
		System.out.println("sevletsearchval:"+searchVal2);
		try {
			ServletContext sc = this.getServletContext();
			
			
			conn = (Connection)sc.getAttribute("conn");
			
			BoardDao boardDao = new BoardDao();
			boardDao.setConnection(conn);
			
			ArrayList<BoardDto> boardList = null;
			
			boardList = (ArrayList<BoardDto>)boardDao.searchList(searchVal1, searchVal2);
			
			int showPageCnt = 5; //게시판 페이지당 보여질 게시물 수
			int totalPages = (int)Math.ceil((double)boardList.size()/showPageCnt);//전체 페이지
			int currentPage = 1;//현재 페이지수
			request.setAttribute("totalPages", totalPages);
			request.setAttribute("boardList", boardList);
			
			if(request.getParameter("pno") == null ) {//초기값 
				int pno = 0;
				request.setAttribute("currentPage", currentPage);
				request.setAttribute("bi", (pno*5)+0);//ei값  수정하면 완벽할듯
				request.setAttribute("startPagesNo", (pno*5)+0);
				
				if(totalPages < 4) {
					request.setAttribute("ei", totalPages);
					request.setAttribute("endPagesNo", totalPages);
				}else {
					request.setAttribute("ei", (pno*5)+4);
					request.setAttribute("endPagesNo", (pno*5)+4);
				}
			} else {//페이지 번호를 받아오는경우
				String pnoStr = request.getParameter("pno");
				int pno = Integer.parseInt(pnoStr);
				currentPage = pno;
				request.setAttribute("currentPage", currentPage);
				//해당 페이지별 출력할 게시물 인덱스번호 지정
				request.setAttribute("bi", ((pno)*5)+0);//c:foreach begin값
				request.setAttribute("ei", ((pno)*5)+4);//c:foreach end값
				int pages = (int)(pno/5);//페이지 번호 부여하기(5개씩출력)
				request.setAttribute("startPagesNo", (pages*5)+0);//페이지번호 begin값
				if(4 > totalPages) {//페이지번호 end값
					request.setAttribute("endPagesNo", totalPages);
				}else {
					request.setAttribute("endPagesNo", (pages*5)+4);
				}
				
			}
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("/sampleBoard/BoardSearchView.jsp");
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
