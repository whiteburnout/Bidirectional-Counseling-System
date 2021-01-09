package spms.servlets;

import java.io.*;
import java.text.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import spms.dao.*;
import spms.vo.*;
import java.sql.Date;

@WebServlet("/join")
public class JoinServlet extends HttpServlet{
	
	@Override
	protected void doGet(
			HttpServletRequest request, HttpServletResponse response)
					throws ServletException, IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		RequestDispatcher rd = request.getRequestDispatcher(
		        "/join.jsp");
		    rd.forward(request, response);
		
	}

	@Override
	protected void doPost(
			HttpServletRequest request, HttpServletResponse response)
					throws ServletException, IOException {
	    try {
	        ServletContext sc = this.getServletContext();

	        UserDao userDao = (UserDao)sc.getAttribute("userDao");
	        try {
	        if(request.getParameter("password") == "") {
	        	throw new Exception();
	        }
	        }catch(Exception e) {
		        RequestDispatcher rd = request.getRequestDispatcher("/PasswordError.jsp");
		        rd.forward(request, response);	
	        }

	        userDao.insert(new User()
	          .setEmail(request.getParameter("email"))
	          .setPassword(request.getParameter("password"))
	          .setName(request.getParameter("name"))
	          .setPhonenumber(request.getParameter("phonenumber"))
	          .setBirth(java.sql.Date.valueOf((request.getParameter("birth"))
	          )));

	        response.sendRedirect("main");

	      } catch (Exception e) {
	        e.printStackTrace();
	        request.setAttribute("error", e);
	        RequestDispatcher rd = request.getRequestDispatcher("/Error.jsp");
	        rd.forward(request, response);
	      }
	    }
}
