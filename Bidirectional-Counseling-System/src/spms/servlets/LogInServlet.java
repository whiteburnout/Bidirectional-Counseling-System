package spms.servlets;

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import spms.dao.*;
import spms.vo.*;

@WebServlet("/login")
public class LogInServlet extends HttpServlet{

	@Override
	protected void doGet(
			HttpServletRequest request, HttpServletResponse response)
					throws ServletException, IOException {
	  RequestDispatcher rd = request.getRequestDispatcher(
	            "/login.jsp");
	  rd.forward(request, response);
		
	}
	
	@Override
	protected void doPost(
			HttpServletRequest request, HttpServletResponse response)
					throws ServletException, IOException {
	    try {
	        ServletContext sc = this.getServletContext();

	        UserDao userDao = (UserDao)sc.getAttribute("userDao");
	        
	        User user = userDao.exist(
	            request.getParameter("email"), 
	            request.getParameter("password"));
	        if (user != null) {
	          HttpSession session = request.getSession();
	          session.setAttribute("userID", user);
	          response.sendRedirect("main");

	        } else {
	          RequestDispatcher rd = request.getRequestDispatcher(
	              "/auth/LogInFail.jsp");
	          rd.forward(request, response);
	        }
	      } catch (Exception e) {
	        throw new ServletException(e);

	      }
	    }
}
