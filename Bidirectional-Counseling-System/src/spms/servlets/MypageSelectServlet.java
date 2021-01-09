package spms.servlets;

import java.io.*;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import spms.dao.*;
import spms.vo.*;

@WebServlet("/mypage_select")
public class MypageSelectServlet extends HttpServlet {

	@Override
	protected void doGet
	(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			ServletContext sc = this.getServletContext();

			UserDao userDao = (UserDao)sc.getAttribute("userDao");

			User user = userDao.selectOne(
					Integer.parseInt(request.getParameter("user_id")));

			request.setAttribute("user", user);


			response.setContentType("text/html; charset=UTF-8");
			RequestDispatcher rd = request.getRequestDispatcher(
					"/mypage_select.jsp");
			rd.forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e);
			RequestDispatcher rd = request.getRequestDispatcher("/Error.jsp");
			rd.forward(request, response);
		}

}
	
	@Override
	protected void doPost
	(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	    try {
	        ServletContext sc = this.getServletContext(); 
	        
	        int a = Integer.parseInt(request.getParameter("f_start_month"))+1;
	        UserDao userDao = (UserDao)sc.getAttribute("userDao");
	        
	        if(a>12) {
	        	a = 12;
	        }
	        String temp1 =  request.getParameter("f_start_year") + "-"
	        				+ a + "-01";
	        
	        a = Integer.parseInt(request.getParameter("f_end_month"))+1;
	        if(a>12) {
	        	a = 12;
	        }
	        String temp2 =  request.getParameter("f_end_year") + "-"
    						+ a + "-01";
	           
	        userDao.update(new User()
	        .setUser_id(Integer.parseInt(request.getParameter("user_id")))
	        .setField(request.getParameter("field"))
	        .setF_start(java.sql.Date.valueOf(temp1))
	        .setF_end(java.sql.Date.valueOf(temp2))
	        .setF_period(Integer.parseInt(request.getParameter("f_period")))
	        .setCertification1(request.getParameter("certification1"))
	        .setCertification2(request.getParameter("certification2"))
	        .setCertification3(request.getParameter("certification3"))
	        .setCertification4(request.getParameter("certification4"))
	        .setEducation(request.getParameter("education"))
	        .setMajor(request.getParameter("major"))
	        .setToeic(Integer.parseInt(request.getParameter("toeic")))
	        .setToefl(Integer.parseInt(request.getParameter("toefl")))
	        .setHsk(Integer.parseInt(request.getParameter("hsk")))
	        .setJlpt(Integer.parseInt(request.getParameter("jlpt")))
	        .setIntroduction(request.getParameter("introduction")));
	        

	        response.sendRedirect("main");

	      } catch (Exception e) {
	        e.printStackTrace();
	        request.setAttribute("error", e);
	        RequestDispatcher rd = request.getRequestDispatcher("/Error.jsp");
	        rd.forward(request, response);
	      }
	    }
}
