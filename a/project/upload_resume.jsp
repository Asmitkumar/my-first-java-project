<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta name="author" content="Luka Cvrk (www.solucija.com)" />
	<meta http-equiv="content-type" content="text/html;charset=iso-8859-2" />
	<link rel="stylesheet" href="images/style.css" type="text/css" />
	<title>Internet Market</title>
</head>
<body>
	<div class="content">
		<div class="header_top"></div>
		<div class="header">
			<div class="sf_right">
				<div id="nav">
    				<ul>
						<li><a href="home1.jsp">Home</a></li>
      					<li id="current"><a href="upload_resume.jsp" target="_top">Post Resume</a></li>
      					<li><a href="view_jobs.jsp" target="_top">New jobs</a></li>
      					<li><a href="seeker_feedback.jsp">Feedback</a></li>
						<li><a href="viewres.jsp" target="_top">Resume</a></li>
      					<li><a href="logout.jsp">Logout</a></li>
					</ul>
				</div>
				<div class="sf_search">
					<form method="post" action="search.jsp">
						<p><b>Search:</b> <select name="search" class="search" >
						<option>tcs</option>
						<option>hcl</option>
						<option>l&t</option>
						<option>mahindra</option>
						</select>
						<input type="submit" value="Go" class="submit" /> &nbsp; Explore the possibilities!</p>
					</form>
				</div>
			</div>
			<div class="sf_left">
				<h1><a href="#">Naukripao.com</a></h1>
			</div>
		</div>
		<div class="header_bottom"></div>
		<div class="subheader">
			<p><h2>Welcome,
 <%= session.getAttribute("username") %>&nbsp !!!!</p></h2>
		</div>
		<div class="header_top"></div>
		<div class="left">
			<div class="left_side">
				<div class="box_top">
					<h2>Career Advice:</h2>
				</div>	
				<div class="box">			
					<p><b>Use Cleverness with Caution in the Interview

</p></b><p>Well-meaning job seekers sometimes get too creative when making their cases to potential employers, such as the candidate who said he was "allergic to unemployment."

The contrived allergy and other wacky pitches were revealed by hiring executives in a survey by Accountemps, a large staffing service for financial professionals.
</p>

<p><b><u>Creativity Can Backfire</u></b></p>
<p>The group of 150 senior executives offered several other examples of candidates going too far in their attempts to stand out:

    "One candidate said that we should hire him because he would be a great addition to our softball team."
     
    "A candidate sang all her responses to interview questions."
     
    "One individual said we had nice benefits, which was good because he was going to need to take a lot of leave in the next year."
     
    

The statements above reflect poor approaches to a common interview question: "Why should I hire you?"  Career experts offer several alternatives that can help job candidates respond more successfully.
</p>
				</div>
				<div class="box_bottom"></div>
			</div>
			<div class="right_side">
				<div class="article">
					<h2>Post a resume</h2>
					<h3></h3>
					<p><img src="images/question.gif" alt="Exclamation mark" />
 
<form name="r"  action="upload_page.jsp" target="_top" enctype
="multipart/form-data" id="aaa" method="post" >
 <%--<h2>your email<h2>
 <input type= "text" name="F">--%> 
 <h2>Upload your Resume Document:</h2>
  <input name="F1" type="file">
   <p><h3>Supported Formats: doc, docx, rtf. Max file size: 300 Kb</h3></p>
  &nbsp &nbsp &nbsp &nbsp<p><input type="submit" value="Upload"></p>



<%String name=(String)application.getAttribute("username");
System.out.println("value in upload page="+name);
%>



				</div>
				<div class="article">
					
				</div>
				<div class="grey_top"></div>
				<div class="grey">
					<table border="0" cellpadding="0" cellspacing="8">
<tr><td><a href="#"><img src="images/logo1.gif"></a></td><td><a href="#"><img src="images/logo2.gif"></a></td><td><a href="#"><img src="images/logo3.gif"></a></td></tr>
  <tr><td><a href="#"><img src="images/logo4.gif"></a></td><td><a href="#"><img src="images/logo5.gif"></a></td><td><a href="#"><img src="images/logo6.gif"></a></td></tr>
   <tr><td><a href="#"><img src="images/logo7.jpg"></a></td><td><a href="#"><img src="images/logo8.gif"></a></td><td><a href="#"><img src="images/logo10.jpg"></a></td></tr>
    <tr><td><a href="#"><img src="images/logo11.jpg"></a></td><td><a href="#"><img src="images/logo12.jpg"></a></td><td><a href="#"><img src="images/logo13.gif"></a></td></tr>
</table>
				</div>
			</div>
		</div>	
		<div class="right">
			<div class="box_top">
				<h2>Fresh Articles:</h2>
			</div>	
			<div class="box">			
				<p><b>3i Infotech Opportunities / SEO Freshers Openings</b> CV CareersValley Daily Newsletter Nov 20 - 2011 Click Here To Know How Placement Success Book (hard copy) Can Help You In Your Preparation Latest On CV How Placement Success Can Help You In Your Preparation? C Pointers Arithmetic Simple Interview Questions Submit Resume For IT Recruitment Information Latest On CV 3i Infotech Software Trainee Opportunities SEO Freshers Openings At DPFOC How Placement Success Can Help You In Your Preparation? Dear Reader, By preparing with Placement Success Book, you will be able to tackle questions of any difficulty...</p>
				<p><a href="#">Read more</a></p>
			</div>
			<div class="box_bottom"></div>
			
			
			<div class="box_top">
				<h2>Links:</h2>
			</div>	
			<div class="box">			
				<p><a href="home.jsp">Home</a><br />
				<a href="loginseeker.jsp">Loginseeker</a><br />
				<a href="loginprovider.jsp">Loginprovider</a><br />
				
				
				</p>
			</div>
			<div class="box_bottom"></div>
		</div>
		<div class="header_bottom"></div>
		<div class="footer">
			<%--<p><a href="#">RSS Feed</a> | <a href="#">Contact</a> | <a href="#">Accessibility</a> | <a href="#">Products</a> | <a href="#">Disclaimer</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a> and <a href="http://validator.w3.org/check?uri=referer">XHTML</a><br />--%>
			&copy;<b> Copyright 2011 Naukripao.com, Designed by:Asmit Kumar,Nasruddin,Ravi Verma</b>  
		</div>
	</div>
</body>
</html>