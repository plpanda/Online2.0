<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="com.db.Provider" %>
 <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
		if(request.getParameter("msg")!=null)
			out.print(request.getParameter("msg"));
		if(session.getAttribute("sic")==null) response.sendRedirect("login.jsp?msg=You are not logged in");
%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Select The Quiz</title>
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
		      <li><a href="resultHistory.jsp">RESULT HISTORY</a></li>
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
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     
		Select a Quiz</h2>

<%
		Connection con = Provider.getConnection();
		PreparedStatement pst = con.prepareStatement("select distinct concat(test,' ',subject) from questions;"),
					pst1 = con.prepareStatement("select distinct concat(test,' ',subject) from appear where sic=?");
		pst1.setString(1, session.getAttribute("sic").toString());
		ResultSet rs = pst.executeQuery(),rs1 =pst1.executeQuery();
		String str1[]=new String[100];
		int n=0;
		while(rs1.next())
		{
			str1[n++]=rs1.getString(1);
		}
%>
<form action="appearQuiz.jsp" class="form-horizontal" method="post">
<div class="container" style="align:center" align="center">
<div class="col-sm-6" style="text-align:center">

		<table class="table table-hover table-bordered">
		<tr class="success"><th style="text-align:center">TEST NAME</th><th style="text-align:center">SUBJECT NAME</th></tr>
		<%while(rs.next())
			{
				int flag=0;
				for(int i=0;i<n;++i)
					if(str1[i].equals(rs.getString(1)))
					{
						flag=1;
						break;
					}
				if(flag==1)
					continue;
				String val[]=rs.getString(1).split(" ");
				%>
					<tr><td><%=val[0] %></td><td><input type="radio" name="subject" value=<%=val[0]+"_"+val[1]%>><%=val[1]%></td></tr>
				<%
			}
		%>
</table>
</div>
</div>
<div class="col-sm-6" align="center" >
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" class="btn btn-success" value="Start Quiz"><br><br>
</div>
</form>
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