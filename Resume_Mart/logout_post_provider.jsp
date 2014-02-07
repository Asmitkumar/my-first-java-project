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
						<li><a href="home.jsp" target="_top">Home</a></li>
      					<li ><a href="loginseeker.jsp" target="_top">Job Seeker</a></li>
      					<li id="current"><a href="loginprovider.jsp" target="_top">Job Provider</a></li>
      					<%--<li><a href="#">Job Ranking</a></li>--%>
      					<%--<li><a href="#">Tutorials</a></li>--%>
      					
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
					<h2>Hiring Advice:</h2>
				</div>	
				<div class="box">			
					<p><b>Powerful Job Interview</b>Want to hire great employees? How to conduct a safe, legal job interview that also enables you to select the best candidate for your open positions is important. The job interview is one of the significant factors in hiring because so many employers count on the job interview to help determine their best, most qualified candidates. Learn about job interviews in my free email class.Certainly the job interview is a key component in determining whether the candidate fits your company culture. This is so despite the fact that at least one research study indicates that selecting a candidate who performed well in an interview only increases your chances of hiring an employee who is successful by two percent.

So, perhaps the traditional job interview is accorded too much power in employee selection.</p>
				</div>
				<div class="box_bottom"></div>
			</div>
			<div class="right_side">
				<div class="article">
					<h2>JOB PROVIDER</h2>
					<h3>YOU HAVE BEEN SUCCESSFULLY LOGGED OUT</h3>
					
<head>
<base target="a3">
<script language ="Javascript">
function validate()

{

if(document.d.c1.value=="")
{
alert("plz fill the user name");
return false;
}


if(document.d.c2.value=="")
{

alert("plz fill the password");
return false;
}

return true;
}
</script>



</head>

<center>
<div class="grey_top"></div>
<div class="grey">
<form name="d" action="con_providerlogin.jsp" target="_top" method="post" onsubmit="return validate();">
<table border="0">
<br>
<tr><th>Enter admin name:</th>
<th><input type="textbox" name="c1"/></th></tr>
<tr><th>Enter your password:</th>
<th><input type="password" name="c2"/></th></tr>

</table>
<input type="submit" name="Signin" value="Sign in" />

</form>
</div>
<a href="forgot_provider.jsp"target="_top"><h3><u>FORGOT PASSWORD</u></h3></a>
</center>

				</div>
				
				<div></div>
				
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