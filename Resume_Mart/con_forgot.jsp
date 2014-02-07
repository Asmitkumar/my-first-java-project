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
pst=con.prepareStatement("select * from registration_seeker where SEQ=? and SEQANS=?");
String x=request.getParameter("t15");
String y=request.getParameter("a1");
pst.setString(1,x);
pst.setString(2,y);
rs=pst.executeQuery();
out.println("Your Passsword is==");
if(rs.next())
	{
		// response.sendRedirect("show_seeker.jsp");
		out.println(rs.getString(10));
	}
	else
	{
		 response.sendRedirect("forgot_seeker.jsp");
	}

}
catch (Exception e)
{
out.println("Exception is:=="+e);
}
%>
<p>
<a href="loginseeker.jsp" target="_top">Click here to login again</a>
</p>