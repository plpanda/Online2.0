


<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8" />
        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
        <title>Online Examination Portal</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
		<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
<title>HOME</title>

</head>
<body>
	<%
		if(request.getParameter("msg")!=null)
			out.print(request.getParameter("msg"));
	%>
	<div class="container">
			<header>
				<h1 style="color:white;">ONLINE EXAM PORTAL</h1>
			</header>
			<section>				
                <div id="container_demo" >
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form  action="com.controller.Login" method="post" autocomplete="on"> 
                                <h1>Log in</h1> 
                                <p> 
                                    <label for="username" class="uname" data-icon="u" > Your SIC or ID </label>
                                    <input id="username" name="sic" required="required" type="text" placeholder="cs155xxx"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> Your password </label>
                                    <input id="password" name="password" required="required" type="password" placeholder="eg. X8df!90EO" /> 
                                </p>
                                <p class="login button"> 
                                    <input type="submit" value="Login" /> 
								</p>
                                <p class="change_link">
									Not a member yet ?
									<a href="#toregister" class="to_register">Join us</a>
								</p>
                            </form>
                        </div>

                        <div id="register" class="animate form">
                            <form  action="com.controller.Register" method="post" autocomplete="on"> 
                                <h1> Sign up </h1> 
                                <p> 
                                    <label for="usernamesignup" class="uname" data-icon="u">Name</label>
                                    <input id="usernamesignup" name="name" required="required" type="text" placeholder="Barney Stinson" />
                                </p>
                                <p> 
                                    <label for="emailsignup" class="youmail" data-icon="e" >SIC</label>
                                    <input id="emailsignup" name="sic" required="required" type="text" placeholder="cs155xxx"/> 
                                </p>
                                <p> 
                                    <label for="passwordsignup" class="youpasswd" data-icon="p">Your password </label>
                                    <input id="passwordsignup" name="password" required="required" type="password" placeholder="eg. X8df!90EO"/>
                                </p>
                                <p> 
                                    <label for="passwordsignup_confirm" class="youpasswd" data-icon="p">Please confirm your password </label>
                                    <input id="passwordsignup_confirm" name="password2" required="required" type="password" placeholder="eg. X8df!90EO"/>
                                </p>
                                <p> 
                                    <label for="passwordsignup_confirm" class="youpasswd">Select Your Branch </label>
                                    <select id="dropdown1" name="branch" required>
										<option selected disabled="disabled">Select Branch</option>
										<option value="cse">CSE</option>
										<option value="it">IT</option>
										<option value="eee">EEE</option>
										<option value="ece">ECE</option>
										<option value="aei">AEI</option>
										<option value="mca">MCA</option>
									</select>
                                </p>
                                <p class="signin button"> 
									<input type="submit" value="Sign up"/> 
								</p>
                                <p class="change_link">  
									Already a member ?
									<a href="#tologin" class="to_register"> Go and log in </a>
								</p>
                            </form>
                        </div>
						
                    </div>
                </div>  
            </section>
		</div>
		<a href="forgot.jsp" id="ne">FORGOT PASSWORD ?</a>
		<div class="footer">
			<div id="footer-base" class="footer">English(US)<br><br>
				Silicon Institute of Technology&copy; &nbsp;&nbsp;2017
			</div>
	</div>		
</body>
</html>