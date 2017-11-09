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

@WebServlet("/com.controller.Forgot")
public class Forgot extends HttpServlet 
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String sic=request.getParameter("sic");
		String name=request.getParameter("name");
		
		Users u =new Users();
		u.setName(name);
		u.setSic(sic);
		
		String password = UsersDao.getPassword(u);
		if(password==null)
			response.sendRedirect("forgot.jsp?msg=Invalid credentials ... Unable to reset password...");
		u.setPswd(password);
		
		out.println("<link href='bootstrap.min.css' rel='stylesheet' type='text/css'>");
		out.println("Your password is  : "+u.getPswd()+"<br>Login again to continue....");
		out.println("<form action='login.jsp' method='post'>"
						+ "<input type='submit' value='LOGIN' class='btn btn-primary'>"
						+ "</form>	");
	}
}
