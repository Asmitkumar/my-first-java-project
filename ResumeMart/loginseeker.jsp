<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
	<meta name="author" content="Luka Cvrk (www.solucija.com)" />
	<meta http-equiv="content-type" content="text/html;charset=iso-8859-2" />
	<link rel="stylesheet" href="images/style.css" type="text/css" />
	<title>Career Options.com</title>
</head>
<body>
	<div class="content">
		<div class="header_top"></div>
		<div class="header">
			<div class="sf_right">
				<div id="nav">
    				<ul>
						<li><a href="home.jsp" target="_top">Home</a></li>
      					<li id="current"><a href="loginseeker.jsp" target="_top">Job Seeker</a></li>
      					<li><a href="loginprovider.jsp" target="_top">Job Provider</a></li>
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
			<p>Thousands of employers search for resumes here every day. Help them find yours. Post a resume today.</p>
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
					<h2>JOB SEEKER</h2>
					<h3>FRESH NEWS FROM THE MARKET</h3>
					<head>
<base target="a3">
<script language ="Javascript">
function validate()

{

if(document.d.t1.value=="")
{
alert("plz fill the user name");
return false;
}


if(document.d.t2.value=="")
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
<form name="d" action="con2.jsp" target="_top" method="post" onsubmit="return validate();">
<table border="0">
<br>
<tr><th>Enter username:</th>
<th><input type="text" name="t1"/></th></tr>
<tr><th>Enter your password:</th>
<th><input type="password" name="t2"/></th></tr>

</table>
<input type="submit" name="Signin" value="Sign in" />

</form>
</div>
<a href="forgot_seeker.jsp"target="_top"><h3><u>FORGOT PASSWORD</u></h3></a>
</center>

				</div>
				
				
				<div></div>
				<div>
				<h2>NOT A MEMBER YET</h2>
			<h3>CREATE YOUR PROFILE</h3>	

<script language="javascript">
function valid()
{
var a=document.f.t12.value;
var b=document.f.t14.value;
 if(document.f.t111.value=="")
   {
    alert("ENTER YOUR FIRST NAME");
    return false;
   }
   if(document.f.t222.value=="")
   {
   alert("ENTER LAST NAME");
   return false;
   }
    if(document.f.t5.value=="")
   {
   alert("ENTER YOUR COUNTRY");
   return false;
   }
  if(document.f.t6.value=="")
   {
   alert("ENTER YOUR STATE");
   return false;
   }
 if(document.f.t7.value=="")
   {
   alert("ENTER PERMANENT ADDRESS");
   return false;
   }
if(document.f.t14.value=="")
   {
   alert("ENTER PHONE NUMBER");
   return false;
   }
if(b.length>10)
   {
   alert("NUMBER SHOULD CONTAIN 10 DIGITS");
   return false;
   }
if(b.length<10)
 {
 alert("ENTER 10 DIGIT NUMBER");
 return false;
 }
 if(document.f.t12.value=="")
   {
   alert("ENTER EMAIL ID");
   return false;
   }
if(a.indexOf("@")==-1)
{
    alert("invalid email");
    return false;
}
if(a.indexOf(".")<2)
{
    alert("invalid email");
    return false;
}
if(document.f.t13.value=="")
   {
   alert("ENTER PASSWORD");
   return false;
   }

if(document.f.t16.value=="")
   {
   alert("ENTER YOUR ANSWER");
   return false;
   }
return true;
}
</script>
</head>
<center>
<body>
<div class="grey_top"></div>
<div class="grey">
<form name="f" action="con1.jsp" method="get" onsubmit="return valid();">
<table border="0" bgcolor="">
<tr><td><font size="3" color="black">Your personal details</font></td></tr>
<tr><td>Enter your first name:</td><td>
<input type="text" name="t111"/></td></tr>
</p>
<p><tr><td>Enter your last name:</td>
<td><input type="text" name="t222"/></td></tr>
</p> 
<p><tr><td>Date of birth</td>
<td><select name="t3">
<option>1</optiion>
<option>2</optiion>
<option>3</optiion>
<option>4</optiion>
<option>5</optiion>
<option>6</optiion>
<option>7</optiion>
<option>8</optiion>
<option>9</optiion>
<option>10</optiion>
<option>11</optiion>
<option>12</optiion>
<option>13</optiion>
<option>14</optiion>
<option>15</optiion>
<option>16</optiion>
<option>17</optiion>
<option>18</optiion>
<option>19</optiion>
<option>20</optiion>
<option>21</optiion>
<option>22</optiion>
<option>23</optiion>
<option>24</optiion>
<option>25</optiion>
<option>26</optiion>
<option>27</optiion>
<option>28</optiion>
<option>29</optiion>
<option>30</optiion>
<option>31</optiion>
</select>
<select name="m">
<option>January</optiion>
<option>February</optiion>
<option>March</optiion>
<option>April</optiion>
<option>May</optiion>
<option>June</optiion>
<option>July</optiion>
<option>August</optiion>
<option>September</optiion>
<option>October</optiion>
<option>November</optiion>
<option>December</optiion>
</select>
<select name="y">
<option>2010</optiion>
<option>2009</optiion>
<option>2008</optiion>
<option>2007</optiion>
<option>2006</optiion>
<option>2005</optiion>
<option>2004</optiion>
<option>2003</optiion>
<option>2002</optiion>
<option>2001</optiion>
<option>2000</optiion>
<option>1999</optiion>
<option>1998</optiion>
<option>1997</optiion>
<option>1996</optiion>
<option>1995</optiion>
<option>1994</optiion>
<option>1993</optiion>
<option>1992</optiion>
<option>1991</optiion>
<option>1990</optiion>
<option>1989</optiion>
<option>1988</optiion>
<option>1987</optiion>
<option>1986</optiion>
<option>1985</optiion>
<option>1984</optiion>
<option>1983</optiion>
<option>1982</optiion>
<option>1981</optiion>
<option>1980</optiion>
</select></td></tr>
<p><tr><td>Gender</td><td>
<select name="t4">
<option>male</option>
<option>female<option>
</select></td></tr>
<tr><td><hr></td><td><hr></td></tr>
<tr><td><font size="3" color="black">Your contact information<font></td></tr>
<p><tr><td>
Enter your country:</td><td>
<input type="text"name="t5"/></td></tr>
</p>
<p><tr><td>
Enter your state:</td><td>
<input type="text"name="t6"/></td></tr>
</p>
<p><tr><td>
Enter your permanenet address:</td><td>
<input type="text"name="t7"/></td></tr>
</p>
 <p><tr><td>Enter a phone number :</td><td> 
                  <input type="text" name="t14"/></td></tr>
                </p>
				<tr><td><hr></td><td><hr></td></tr>
<tr><td><font size="3" color="black">Your login information<font></td></tr>
<p>
<p><tr><td>Your Email Address :</td><td> 
                  <input type="text" name="t12"/></td></tr>
                </p>
		<p><tr><td>Enter your desired password:</td><td>
<input type="password"name="t13"/></td></tr>
</p>             		
               
<p><tr><td>
Security question</td><td><select name="t15"><option>What is your nickname</option>
<option>Whatis your favourite teachers name</option>
<option>What is your pet name</option>
<option>What is your favourite sport</option>
</select></td></tr><p><tr><td>
Enter your answer</td><td><input type="text" name="t16" /></td></tr>
</p>
<tr><td><hr></td><td><hr></td></tr>
</table>
              <p> 
                  <input type="submit" name="Signup" value="Sign up">
                </p>
				</form>

				
			              
						 
				</div>		  
</center>


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