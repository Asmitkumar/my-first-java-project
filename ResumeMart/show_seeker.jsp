



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
pst=con.prepareStatement("select * from registration_seeker");
rs=pst.executeQuery();
if(rs.next())
//file no longer required......move to trash	
{
	out.println(rs.getString(10));
	}
	}
catch (Exception e)
{
out.println("Exception is:=="+e);
}
%>