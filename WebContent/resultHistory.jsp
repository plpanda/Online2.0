<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <%@ page import="com.db.Provider" %>
 <%@ page import="java.sql.*" %>
<%
		if(request.getParameter("msg")!=null)
			out.print(request.getParameter("msg"));
		if(session.getAttribute("sic")==null) response.sendRedirect("login.jsp?msg=You are not logged in");
	%>

<head>
<title>RESULT HISTORY</title>
		<link rel="stylesheet" href="myBootstrap/bootstrap.min.css">
  		<script src="myBootstrap/jquery.min.js"></script>
  		<script src="myBootstrap/bootstrap.min.js"></script>
	</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
		  <div class="container-fluid">
		    <div class="navbar-header">
		      <a class="navbar-brand" href="student_portal.jsp">ONLINE EXAMINATION PORTAL</a>
		    </div>
		    <ul class="nav navbar-nav">
		      <li><a href="selectQuiz.jsp">APPEAR QUIZ</a></li>
		      
		    </ul>
		    <ul class="nav navbar-nav navbar-right">
		      <li><a href="selectQuiz.jsp">SIC:<%=session.getAttribute("sic") %></a></li>
		      
		    </ul>
		    <ul class="nav navbar-nav navbar-right">
		    <li><a href="com.controller.Logout"><span class="glyphicon glyphicon-log-in"></span>LogOut</a></li>
		    </ul>
		  </div>
		</nav>
		<br><br><br>
		<h2 class="text-danger">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;
		Your Score Card</h2>
<%
Connection con = Provider.getConnection();
PreparedStatement pst=con.prepareStatement("select test,subject,result from appear where sic=?");
pst.setString(1, session.getAttribute("sic").toString());
ResultSet rs=pst.executeQuery();
%>
<div class="container">
		<table class="table table-hover table-bordered">
		<tr class="success"><th>TEST NAME</th><th>SUBJECT NAME</th><th>SCORE</th></tr>
<% 
while(rs.next())
{
	%>
	<tr><td><%=rs.getString(1) %></td><td><%=rs.getString(2)%></td><td><%=rs.getString(3)+" %"%></td></tr>
	<%
}
%>
</table>
</div>
</body>


<nav class="navbar navbar-fixed-bottom">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;
      Silicon Institute Of Technology 2017</a>
    </div>
  </div>
</nav>
</html>