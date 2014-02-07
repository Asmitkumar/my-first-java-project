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
pst=con.prepareStatement("select * from registration_provider where answer=? and question=?");
String x=request.getParameter("a2");
String y=request.getParameter("a3");
pst.setString(1,x);
pst.setString(2,y);
rs=pst.executeQuery();
out.println("Your Passsword is==");
if(rs.next())
	{
		// response.sendRedirect("show_seeker.jsp");
		out.println(rs.getString(8));
	}
	else
	{
		 response.sendRedirect("forgot_provider.jsp");
	}

}
catch (Exception e)
{
out.println("Exception is:=="+e);
}
%>
<p>
<a href="loginprovider.jsp" target="_top">Click here to login again</a>
</p>