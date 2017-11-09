<!DOCTYPE html>
<html>
<head>
<title>QUESTION UPLOAD</title>
		<link rel="stylesheet" href="myBootstrap/bootstrap.min.css">
  		<script src="myBootstrap/jquery.min.js"></script>
  		<script src="myBootstrap/bootstrap.min.js"></script>
	</head>
<script type="text/javascript" src="js/jquery.min.js">
</script>
<%
String test=request.getParameter("test");
String subject = request.getParameter("subject");
if(request.getParameter("msg")!=null)
{ %>
	<script type="text/javascript">
    var msg = "<%=request.getParameter("msg")%>";
    alert(msg);
</script><%
	request.setAttribute("msg", null);
}
%>
<body >
<br><br>
<h2 class="text-danger">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;
		Upload Questions</h2>
<nav class="navbar navbar-inverse navbar-fixed-top">
		  <div class="container-fluid">
		    <div class="navbar-header">
		      <a class="navbar-brand" href="admin_portal.jsp">ONLINE EXAMINATION PORTAL</a>
		    </div>
		    <ul class="nav navbar-nav">
		      <li><a href="studentDetail.jsp">STUDENT DETAILS</a></li>
		      <li><a href="test_details.html">ADD QUIZ</a></li>
		      <li><a href="quizDetail.jsp">QUIZ DETAILS</a></li>
		    </ul>
		    <ul class="nav navbar-nav navbar-right">
		    <li><a href="com.controller.Logout"><span class="glyphicon glyphicon-log-in"></span>LogOut</a></li>
		    </ul>
		  </div>
		</nav>
<div class="container">
<form class="form-horizontal" action="SaveData" method="post" name="form" id="form">
	<input type="hidden" name="test" id="test"value=<%=test %>>
	<input type="hidden" name="subject"  id="subject" value=<%=subject %>>
	<h4 class="text-primary">Subject Name : <%=subject %> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 Test Name : <%=test %></h4>
	<br><br><br>
	
	<label class="control-label col-sm-2" for="email">QUESTION : </label>
	<div class="col-sm-7">
	<input class="form-control" type="text" name="question" placeholder="Enter Question here" id="namebox" required></div><br><br><br>
	
	<label class="control-label col-sm-2" for="email">OPTION 1 : </label>
	<div class="col-sm-5">
	<input class="form-control" type="text" name="option1" placeholder="Enter Option 1" required></div><br><br>
	
	<label class="control-label col-sm-2" for="email">OPTION 2 : </label>
	<div class="col-sm-5">
	<input class="form-control" type="text" name="option2" placeholder="Enter Option 2" required></div><br><br>
	
	<label class="control-label col-sm-2" for="email">OPTION 3 : </label>
	<div class="col-sm-5">
	<input class="form-control" type="text" name="option3" placeholder="Enter Option 3" required></div><br><br>
	
	<label class="control-label col-sm-2" for="email">OPTION 4 : </label>
	<div class="col-sm-5">
	<input class="form-control" type="text" name="option4" placeholder="Enter Option 4" required></div><br><br>
	
	
	<label class="control-label col-sm-2" for="email">CHOOSE ANSWER </label>
	<div class="col-sm-6">
	<div class="dropdown">
	<select name="answer" class="btn btn-default dropdown-toggle" >
		<option value="1">Option1</option>
		<option value="2">Option2</option>
		<option value="3">Option3</option>
		<option value="4">Option4</option>
	</select></div></div><br><br>
	<br>
	<div class="col-sm-10">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="submit" value="SUBMIT" class="btn btn-success"></input>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="reset" value="RESET" class="btn btn-warning"></input><br />
	</div>
</form>
</div>
<span class="error" style="display:none"> Please Enter Valid Data</span>
<span class="success" style="display:none"> Registration Successfully</span>

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