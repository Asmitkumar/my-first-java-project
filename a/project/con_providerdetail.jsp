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
System.out.println("value is:=="+request.getParameter("e1"));

try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:data","root","");
pst=con.prepareStatement("insert into registration_provider values (?,?,?,?,?,?,?,?,?,?)");
out.println("first");
pst.setString(1, request.getParameter("e1"));
pst.setString(2, request.getParameter("e2"));
String a=request.getParameter("t3");
String b=request.getParameter("t4");
String c=request.getParameter("t5");
String d= a+"/"+b+"/"+c;
pst.setString(3,d);
pst.setString(4,request.getParameter("e3"));
pst.setString(5,request.getParameter("e4"));
pst.setInt(6,Integer.parseInt(request.getParameter("e5")));
pst.setString(7,request.getParameter("e6"));
pst.setString(8,request.getParameter("e7"));
pst.setString(9,request.getParameter("e8"));
pst.setString(10,request.getParameter("e9"));
//rs=pst.executeQuery();*/
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