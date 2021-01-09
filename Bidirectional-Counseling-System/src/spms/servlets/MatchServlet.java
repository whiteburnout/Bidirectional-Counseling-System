package spms.servlets;

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import spms.dao.*;
import spms.vo.*;

@WebServlet("/match")
public class MatchServlet extends HttpServlet {

	@Override
	protected void doPost
	(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			ServletContext sc = this.getServletContext();
			UserDao userDao = (UserDao)sc.getAttribute("userDao");

			request.setAttribute("users1", userDao.te_SelectList(new User()
					.setG_toeic(Integer.parseInt((request.getParameter("g_toeic"))))
					.setUser_id(Integer.parseInt(request.getParameter("user_id")))));
			
			request.setAttribute("users2", userDao.to_SelectList(new User()
					.setG_toefl(Integer.parseInt(request.getParameter("g_toefl")))
					.setUser_id(Integer.parseInt(request.getParameter("user_id")))));
			
			request.setAttribute("users3", userDao.h_SelectList(new User()
					.setG_hsk(Integer.parseInt(request.getParameter("g_hsk")))
					.setUser_id(Integer.parseInt(request.getParameter("user_id")))));
			
			request.setAttribute("users4", userDao.j_SelectList(new User()
					.setG_jlpt(Integer.parseInt(request.getParameter("g_jlpt")))
					.setUser_id(Integer.parseInt(request.getParameter("user_id")))));
			
			request.setAttribute("users5", userDao.certi_SelectList(new User()
					.setG_certification(request.getParameter("g_certification"))
					.setUser_id(Integer.parseInt(request.getParameter("user_id")))));
			
			request.setAttribute("users6", userDao.career_SelectList(new User()
					.setG_field(request.getParameter("g_field"))
					.setUser_id(Integer.parseInt(request.getParameter("user_id")))));

			response.setContentType("text/html; charset=UTF-8");
			RequestDispatcher rd = request.getRequestDispatcher(
					"/match.jsp");
			rd.include(request, response);

		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e);
			RequestDispatcher rd = request.getRequestDispatcher("/Error.jsp");
			rd.forward(request, response);
		}
	}
}
