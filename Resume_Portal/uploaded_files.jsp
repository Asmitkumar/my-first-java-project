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
      					<li><a href="loginprovider.html" target="_top">Job Provider</a></li>
      					<li><a href="#">Job Ranking</a></li>
      					<li><a href="logout.jsp">Logout</a></li>
      					
					</ul>
				</div>
				<div class="sf_search">
					<form method="post" action="?">
						<p><b>Search:</b> <input type="text" name="search" class="search" /> <input type="submit" value="Go" class="submit" /> &nbsp; Explore the possibilities!</p>
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
					<p><b>Rssssssss

</p></b><p> dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>
				</div>
				<div class="box_bottom"></div>
			</div>
			<div class="right_side">
				<div class="article">
				<h1>UPLOADED FILES:</h1>
					<%@page import="java.io.*"%>
					<%
                    String dir = config.getServletContext().getRealPath("/data");
                    File file = new File(dir);
                    String []list = file.list();
					String str;
				        for(int i=0;i<list.length;i++)//String str=null; : list)
                        {
							str=list[i];
								
                     %>

     <a href="http://localhost:7001//project//uploadServlet?file=<%=str%>"> <%=str%> </a><br/>


                        <%

                    }
                    
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
				<p><a href="http://www.solucija.com/">Solucija</a><br />
				<a href="http://snews.solucija.com/">sNews CMS</a><br />
				<a href="http://www.conceptnova.com/">Concept Nova</a><br />
				
				
				</p>
			</div>
			<div class="box_bottom"></div>
		</div>
		<div class="header_bottom"></div>
		<div class="footer">
			<p><a href="#">RSS Feed</a> | <a href="#">Contact</a> | <a href="#">Accessibility</a> | <a href="#">Products</a> | <a href="#">Disclaimer</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a> and <a href="http://validator.w3.org/check?uri=referer">XHTML</a><br />
			&copy; Copyright 2006 Internet Market, Design: Luka Cvrk - <a href="http://www.solucija.com/" title="What's your solution?">Solucija</a></p>
		</div>
	</div>
</body>
</html>