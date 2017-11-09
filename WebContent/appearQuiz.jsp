<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ page import="com.db.Provider" %>
 <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Quiz</title>
		<link rel="stylesheet" href="myBootstrap/bootstrap.min.css">
  		<script src="myBootstrap/jquery.min.js"></script>
  		<script src="myBootstrap/bootstrap.min.js"></script>
</head>
<%
		if(request.getParameter("msg")!=null)
			out.print(request.getParameter("msg"));
		if(session.getAttribute("sic")==null) response.sendRedirect("login.jsp?msg=You are not logged in");
%>
<body onload="f1()" >
<nav class="navbar navbar-default navbar-fixed-top" >
		   <div id="starttime"></div>         
		    <div id="showtime"></div>
		 
</nav>
<div class="container" id="time" style="background-silver" >
    <form id="form1" runat="server">
    <div>
      <table width="100%" align="center">
         <tr>
          <td>
            <div id="starttime"></div><br />
            <div id="endtime"></div><br />
            <div id="showtime"></div>
          </td>
        </tr>
      </table>
      <br />
   </div>
    </form>
    </div>
 <script language ="javascript" >
        var tim;
       
        var min = 02;
        var sec = 0;
        var f = new Date();
        function f1() {
            f2();
            document.getElementById("starttime").innerHTML = "Start time: " + f.getHours() + ":" + f.getMinutes();
             
          
        }
        function f2() {
            if (parseInt(sec) > 0) {
                sec = parseInt(sec) - 1;
                document.getElementById("showtime").innerHTML = "Time left :"+min+" Minutes ," + sec+" Seconds";
                tim = setTimeout("f2()", 1000);
            }
            else {
                if (parseInt(sec) == 0 )
                {
                	 if(parseInt(min)==1)
                		{
                	sec=60;
                }
                	min = parseInt(min) - 1;
                    if (parseInt(min) <= 0 && parseInt(sec)==0)
                    {
                        clearTimeout(tim);
                        document.exam_submit.submit();
                    }
                   
                    else {
                        sec = 60;
                        document.getElementById("showtime").innerHTML = "Your Left Time  is :" + min + " Minutes ," + sec + " Seconds";
                        tim = setTimeout("f2()", 1000);
                    }
                }
            }
        }
    </script>
<div class="container" style="overflow : auto">
<form action="evaluateTest.jsp" name="exam_submit" class="form-horizontal" method="post">
<%
		Connection con = Provider.getConnection();
		String param =request.getParameter("subject");
		String values[]=param.split("_");
		PreparedStatement pst = con.prepareStatement("select question,opt1,opt2,opt3,opt4,ans from questions where subject =? and test=?");
		pst.setString(1, values[1]);
		pst.setString(2, values[0]);
		ResultSet rs = pst.executeQuery();
		int i=1;
		while(rs.next())
		{
		%>
		
			<div class="container" align="left">
			<label class="control-label col-sm-0" for="email">Qn <%=i %> . <%=rs.getString(1) %></label></div>
		
			<div class="container" align="left">
			<label class="control-label col-sm-0" for="email">&nbsp;&nbsp;<input type="radio" name=<%="qn"+i %> value=<%=rs.getString(2) %>> &nbsp;&nbsp;A . <%=rs.getString(2) %></label></div>

			<div class="container" align="left">
			<label class="control-label col-sm-0" for="email">&nbsp;&nbsp;<input type="radio" name=<%="qn"+i %> value=<%=rs.getString(3) %>> &nbsp;&nbsp;B . <%=rs.getString(3) %></label></div>
			
			<div class="container" align="left">
			<label class="control-label col-sm-0" for="email">&nbsp;&nbsp;<input type="radio" name=<%="qn"+i %> value=<%=rs.getString(4) %>> &nbsp;&nbsp;C . <%=rs.getString(4) %></label></div>
			
			<div class="container" align="left">
			<label class="control-label col-sm-0" for="email">&nbsp;&nbsp;<input type="radio" name=<%="qn"+i %> value=<%=rs.getString(5) %>> &nbsp;&nbsp;D . <%=rs.getString(5) %></label></div>
			
			<input type="hidden" name=<%="ans"+i %> value=<%=rs.getString(6) %>>
		<%
		i++;
		}
%>

<br><br>
<input type="hidden" name="subject" value=<%=values[1] %>>
<input type="hidden" name="test" value=<%=values[0] %>>
<input type="hidden" name="noofques" value=<%=i %>>
<div class="col-sm-6" align="center" >
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" class="btn btn-success" value="Final Submit"><br><br>
</div>
</form>
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