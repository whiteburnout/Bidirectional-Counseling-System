package spms.servlets;

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import spms.dao.*;
import spms.vo.*;

@WebServlet("/mygoal")
public class MyGoalServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			ServletContext sc = this.getServletContext();
			
			UserDao userDao = (UserDao)sc.getAttribute("userDao");
			
			User user = userDao.g_selectone(
					Integer.parseInt(request.getParameter("user_id")));
			
			request.setAttribute("user", user);
		
		
		response.setContentType("text/html; charset=UTF-8");
		RequestDispatcher rd = request.getRequestDispatcher(
		        "/mygoal.jsp");
		rd.forward(request, response);
		
	    } catch (Exception e) {
	        e.printStackTrace();
	        request.setAttribute("error", e);
	        RequestDispatcher rd = request.getRequestDispatcher("/Error.jsp");
	        rd.forward(request, response);
	      }
		
	}

}
