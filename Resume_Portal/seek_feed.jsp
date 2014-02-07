<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
				<%!
Connection con=null;
PreparedStatement pst=null;
ResultSet rs=null;
%>


<%
System.out.println("value is:=="+request.getParameter("t111"));

try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:data","root","");
pst=con.prepareStatement("insert into seeker_feedback values (?,?)");
out.println("first");
pst.setString(1, request.getParameter("a"));
pst.setString(2, request.getParameter("b"));
//rs=pst.executeQuery();*/
int x=pst.executeUpdate();
if(x>0)
	{
	 response.sendRedirect("feed_submit.jsp");
	}
}
catch (Exception e)
{
out.println("Exception is:=="+e);
}
%>