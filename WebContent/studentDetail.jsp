<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.db.Provider"
     %>
     <%@ page import="java.sql.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css" href="css/online.css">
<head>
<title>Online Examination Portal</title>
		<link rel="stylesheet" href="myBootstrap/bootstrap.min.css">
  		<script src="myBootstrap/jquery.min.js"></script>
  		<script src="myBootstrap/bootstrap.min.js"></script>
	</head>
	<body>
		<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="admin_portal.jsp">ONLINE EXAMINATION PORTAL</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="quizDetail.jsp">QUIZ DETAILS</a></li>
      <li><a href="test_details.html">ADD QUIZ</a></li>
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
		Available Student Details</h2>
<br>
<%
		if(request.getParameter("msg")!=null)
			out.print(request.getParameter("msg"));
		if(session.getAttribute("sic")==null) response.sendRedirect("login.jsp?msg=You are not logged In");
		if(!(session.getAttribute("sic").equals("admin"))) response.sendRedirect("login.jsp?msg=Unauthorised user");
		Connection con = Provider.getConnection();
		PreparedStatement pst = con.prepareStatement("select name,sic,branch from users where usertype = 'student'");
		ResultSet rs = pst.executeQuery();
		%>
		<div class="container">
		<table class="table table-hover table-bordered" >
		<tr class="success"><th>Name</th><th>SIC</th><th>BRANCH</th></tr>
		<%while(rs.next())
			{
				%>
					<tr><td><%=rs.getString(1) %></td><td><%=rs.getString(2) %></td><td><%=rs.getString(3) %></td></tr>
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