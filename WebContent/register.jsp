<!DOCTYPE html>
<html>
<head>
<link href="bootstrap.min.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<style type="text/css">
	li
	{
		float: left;
	}
	ul
	{
	
		list-style-type: none;
		margin: 0;
		padding: 0;
		overflow: hidden;
		background-color:#333; 
	}
	li a
	{
		display: inline-block;
		color: white;
		text-align: center;
		padding: 14px 16px;
		text-decoration: none; 
	}
	li a:HOVER {
	background-color: aqua;
}
</style>
<title>HOME</title>

</head>
<body>
	<ul>
		<li> <a href="index.jsp">HOME</a></li>
		<li> <a href="login.jsp">LOGIN</a></li>
		<li> <a href="register.jsp">REGISTER</a></li>
		
		
	</ul>
	<%
		if(request.getParameter("msg")!=null)
			out.print(request.getParameter("msg"));
	%>
	<form action="com.controller.Register" method="post" onclick="check()">
		<pre>
			SIC/ID	 		: <input type="text" name="sic" required> <br>
			Password 		: <input type="password" name="password" required> <br>
			Confirm Password	: <input type="password" name="password2" required> <br>
			Name     		: <input type="text" name="name" required> <br>
			Branch 			: <select name="branch">
								<option value="CSE">CSE</option>
								<option value="ECE">ECE</option>
								<option value="IT">IT</option>
								<option value="EEE">EEE</option>
								<option value="MECH">MECH</option>
							  </select>
					<input type="submit" value="REGISTER" class="btn btn-primary">
		</pre>
	</form>		
</body>
</html>