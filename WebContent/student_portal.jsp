<!DOCTYPE html>
<html>
	<%
		if(request.getParameter("msg")!=null)
			out.print(request.getParameter("msg"));
		if(session.getAttribute("sic")==null) response.sendRedirect("login.jsp?msg=You are not logged in");
	%>
<head>
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v4.3.0, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="Site Generator Description">
  <title>Student Protal</title>
  <link rel="stylesheet" href="assets/web/assets/mobirise-icons/mobirise-icons.css">
  <link rel="stylesheet" href="assets/tether/tether.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="assets/dropdown/css/style.css">
  <link rel="stylesheet" href="assets/theme/css/style.css">
  <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
<style type="text/css">
	li	{ float: left;	}
	ul	{	list-style-type: none;	margin: 0;	padding: 0;	overflow: hidden;	background-color:#333;	}
	li a {	display: inline-block;	color: white;	text-align: center;	padding: 14px 16px;	text-decoration: none;	}
	li a:HOVER { background-color: aqua; }
	ri { float: right; }
	ri a {	display: inline-block;	color: white; text-align: center;	padding: 14px 16px;	text-decoration: none;	}
	li a:HOVER { background-color: aqua; }
	ri a:HOVER { background-color: red; }
</style>
<title>HOME</title>

</head>
<body>
	
	<section class="menu cid-qxEmMwFYVe" once="menu" id="menu1-t" data-rv-view="37">
   <nav class="navbar navbar-expand beta-menu navbar-dropdown align-items-center navbar-fixed-top navbar-toggleable-sm">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <div class="hamburger">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </div>
        </button>
        <div class="menu-logo">
            <div class="navbar-brand">
                
                <span class="navbar-caption-wrap"><a class="navbar-caption text-white display-4" href="">HELLO <%=session.getAttribute("sic") %></a></span>
            </div>
        </div>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            
            <div class="navbar-buttons mbr-section-btn"><a class="btn btn-sm btn-primary display-4" href="com.controller.Logout"><span class="mbri-logout mbr-iconfont mbr-iconfont-btn"></span>
                    &nbsp; Log Out</a></div>
        </div>
    </nav>
</section>

<section class="engine"><a href="">bootstrap buttons</a></section><section class="features3 cid-qxUwyUtsY6" id="features3-u" data-rv-view="39">

    

    
    <div class="container">
        <div class="media-container-row">
            <div class="card p-3 col-12 col-md-6 col-lg-4">
                <div class="card-wrapper">
                    <div class="card-img">
                        <img src="assets/images/01.jpg" alt="Mobirise" media-simple="true">
                    </div>
                    <div class="card-box">
                        <h4 class="card-title mbr-fonts-style display-7">Appear QUIZ</h4>
                        <p class="mbr-text mbr-fonts-style display-7"></p>
                    </div>
                    <div class="mbr-section-btn text-center"><a href="selectQuiz.jsp" class="btn btn-primary display-4">&nbsp; &nbsp; &nbsp; &nbsp; Goto Quiz &nbsp; &nbsp; &nbsp;&nbsp;</a></div>
                </div>
            </div>

            <div class="card p-3 col-12 col-md-6 col-lg-4">
                <div class="card-wrapper">
                    <div class="card-img">
                        <img src="assets/images/03.jpg" alt="Mobirise" media-simple="true">
                    </div>
                    <div class="card-box">
                        <h4 class="card-title mbr-fonts-style display-7">
                            Previous Quiz Details</h4>
                        <p class="mbr-text mbr-fonts-style display-7"></p>
                    </div>
                    <div class="mbr-section-btn text-center"><a href="resultHistory.jsp" class="btn btn-primary display-4">View
                        </a></div>
                </div>
            </div>

            
        </div>
    </div>
</section>

<section once="" class="cid-qxUy8Kb6cE" id="footer6-v" data-rv-view="42">

    

    

    <div class="container">
        <div class="media-container-row align-center mbr-white">
            <div class="col-12">
                <p class="mbr-text mb-0 mbr-fonts-style display-7">
                    © Copyright 2017 SIT BBSR - All Rights Reserved
                </p>
            </div>
        </div>
    </div>
</section>


  <script src="assets/web/assets/jquery/jquery.min.js"></script>
  <script src="assets/popper/popper.min.js"></script>
  <script src="assets/tether/tether.min.js"></script>
  <script src="assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="assets/smooth-scroll/smooth-scroll.js"></script>
  <script src="assets/dropdown/js/script.min.js"></script>
  <script src="assets/touch-swipe/jquery.touch-swipe.min.js"></script>
  <script src="assets/theme/js/script.js"></script>
  
  
		
</body>
</html>