<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="com.db.Provider" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Results</title>
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
		      <li><a href="selectQuiz.jsp">APPEAR QUIZ</a></li>
		    </ul>
		    <ul class="nav navbar-nav navbar-right">
		    <li><a href="com.controller.Logout"><span class="glyphicon glyphicon-log-in"></span>LogOut</a></li>
		    </ul>
		  </div>
		</nav>
		<br><br><br>
<div class="container">		
		<h2 class="text-success">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     
		Your test Result</h2>
<%
int result = 0;
int n=Integer.parseInt(request.getParameter("noofques"));
for(int i=1;i<n;++i)
{
	String userans = request.getParameter("qn"+i);
	String corans= request.getParameter("ans"+i);
	if(userans==null)
		userans="_";
	if(userans.equals(corans))
	{
		%>
		<h4 class="text-primary">Question <%=i %>. Correct</h4>
		<%result++;
	}
	else
	{
		%>
		<h4 class="text-danger">Question <%=i %>. Wrong</h4>
		<%
	}
	%>
	<%
}
int perc=(result*100)/(n-1);
%>
<br><br><br><br><br><br><br><br>
<%if(perc > 50) 
{%>
<h3 class="text-success">Result:<%=result %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Percentage : <%=perc %>%</h3>
<%}
else if(perc == 50)
{%>
<h3 class="text-info">Result:<%=result %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Percentage : <%=perc %>%</h3>
<%
}
else{%>
<h3 class="text-danger">Result:<%=result %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Percentage : <%=perc+"%" %></h3>
</div>
<%}
Connection con = Provider.getConnection();
PreparedStatement pst = con.prepareStatement("insert into appear values(?,?,?,?)");
pst.setString(1, session.getAttribute("sic").toString());
pst.setString(2, request.getParameter("test"));
pst.setString(3, request.getParameter("subject"));
pst.setInt(4,perc);
int status = pst.executeUpdate();

%>
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