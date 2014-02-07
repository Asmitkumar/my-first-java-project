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
pst=con.prepareStatement("select * from registration_provider where admin =? and password=?");
out.println("first");
String x=request.getParameter("c1");
String y=request.getParameter("c2");
pst.setString(1,x);
pst.setString(2,y);
rs=pst.executeQuery();
if(rs.next())
	{
	session.setAttribute("username", x );
	 response.sendRedirect("home_provider.jsp");
	}
	else
	{
		 response.sendRedirect("loginprovider.jsp");
	}

}
catch (Exception e)
{
out.println("Exception is:=="+e);
}
%>