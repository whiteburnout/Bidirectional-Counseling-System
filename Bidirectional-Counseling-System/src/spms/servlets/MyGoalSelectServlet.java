package spms.servlets;

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import spms.dao.*;
import spms.vo.*;

@WebServlet("/mygoal_select")
public class MyGoalSelectServlet extends HttpServlet {

	@Override
	protected void doGet
	(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			ServletContext sc = this.getServletContext();

			UserDao userDao = (UserDao)sc.getAttribute("userDao");

			User user = userDao.g_selectone(
					Integer.parseInt(request.getParameter("user_id")));

			request.setAttribute("user", user);


			response.setContentType("text/html; charset=UTF-8");
			RequestDispatcher rd = request.getRequestDispatcher(
					"/mygoal_select.jsp");
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

	        int a =Integer.parseInt(request.getParameter("g_career_month"))+1;
	        
	        UserDao userDao = (UserDao)sc.getAttribute("userDao");
	        if(a>12) {
	        	a = 12;
	        }
	        String temp3 =  request.getParameter("g_career_year") + "-"
	        				+ a + "-01";
	        
	        userDao.g_update(new User()
	        .setUser_id(Integer.parseInt(request.getParameter("user_id")))
	        .setG_field(request.getParameter("g_field"))
	        .setG_field_date(java.sql.Date.valueOf(temp3))
	        .setG_certification(request.getParameter("g_certification"))
	        .setG_education(request.getParameter("g_education"))
	        .setG_toeic(Integer.parseInt(request.getParameter("g_toeic")))
	        .setG_toefl(Integer.parseInt(request.getParameter("g_toefl")))
	        .setG_hsk(Integer.parseInt(request.getParameter("g_hsk")))
	        .setG_jlpt(Integer.parseInt(request.getParameter("g_jlpt")))
	        .setMygoal(request.getParameter("mygoal")));

	        response.sendRedirect("main");

	      } catch (Exception e) {
	        e.printStackTrace();
	        request.setAttribute("error", e);
	        RequestDispatcher rd = request.getRequestDispatcher("/Error.jsp");
	        rd.forward(request, response);
	      }
	    }
}
