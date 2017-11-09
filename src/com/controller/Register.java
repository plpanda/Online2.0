package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.db.Users;
import com.model.UsersDao;

@WebServlet("/com.controller.Register")
public class Register extends HttpServlet 
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		if(request.getParameter("password").equals(request.getParameter("password2")))
		{
			String sic = request.getParameter("sic");
			String pswd = request.getParameter("password");
			String name = request.getParameter("name");
			String branch = request.getParameter("branch");
			String usertype = "student";
			
			Users u =new Users();
			
			u.setBranch(branch);
			u.setName(name);
			u.setPswd(pswd);
			u.setSic(sic);
			u.setUsertype(usertype);
			
			int status=UsersDao.save(u);
			//A message to be popped as we have developed a new interface of login
			if(status>0)
				response.sendRedirect("login.jsp?msg=Yes Registered Successfully,Please Login to continue..");
			else
				response.sendRedirect("login.jsp?msg=No couldnot be registered..");
		}
		else
			response.sendRedirect("login.jsp?msg=passwords donot match..");
			
		
	}
}
