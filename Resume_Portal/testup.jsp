<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%String contentType = request.getContentType();%>
				<%!
Connection con=null;
PreparedStatement pst=null;
ResultSet rs=null;
%>


<%

System.out.println("value is:=="+request.getParameter("e1"));

try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:data","root","");
pst=con.prepareStatement("insert into upload values (?,?)");
out.println("submitted");
String c=request.getParameter("F");
String d=request.getParameter("F1");
pst.setString(1,c);
pst.setString(2,d);
int x=pst.executeUpdate();
if(x>0)
	{
	out.println("ok");
	}
}
catch (Exception e)
{
out.println("Exception is:=="+e);
}
%>