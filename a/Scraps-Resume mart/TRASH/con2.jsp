<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
				<%!
Connection con=null;
PreparedStatement pst=null;
PreparedStatement pst1=null;
ResultSet rs=null;
ResultSet rs1=null;
%>


<%


try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:data","root","");
pst=con.prepareStatement("select * from registration_seeker where FN =? and PASS=?");
out.println("first");
String x=request.getParameter("t1");
String y=request.getParameter("t2");
pst.setString(1,x);
pst.setString(2,y);
rs=pst.executeQuery();
if(rs.next())
	{
	 response.sendRedirect("home.html");
	}
	else
	{
		 response.sendRedirect("loginseeker.html");
	}

}
catch (Exception e)
{
out.println("Exception is:=="+e);
}
%>