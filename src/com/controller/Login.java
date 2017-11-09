package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.db.Users;
import com.model.UsersDao;

@SuppressWarnings("serial")
@WebServlet("/com.controller.Login")
public class Login extends HttpServlet 
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		
		String pswd=request.getParameter("password");
		String sic=request.getParameter("sic");
		
		Users u =new Users();
		
		u.setSic(sic);
		u.setPswd(pswd);
		int status=UsersDao.login(u);
		if(status==1)
		{
			HttpSession session= request.getSession();
			session.setAttribute("sic", sic);
			response.sendRedirect("student_portal.jsp");
		}
		else if(status==2)
		{
			HttpSession session= request.getSession();
			session.setAttribute("sic", sic);
			response.sendRedirect("admin_portal.jsp");
		}
		else
			response.sendRedirect("login.jsp?msg=Invalid email id or password");		
	}
}
