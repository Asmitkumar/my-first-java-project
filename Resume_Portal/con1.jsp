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
System.out.println("value is:=="+request.getParameter("t111"));

try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:data","root","");
pst=con.prepareStatement("insert into registration_seeker values (?,?,?,?,?,?,?,?,?,?,?,?)");
out.println("first");
pst.setString(1, request.getParameter("t111"));
pst.setString(2, request.getParameter("t222"));
String a=request.getParameter("t3");
String b=request.getParameter("m");
String c=request.getParameter("y");
String d= a+"/"+b+"/"+c;
pst.setString(3,d);
pst.setString(4,request.getParameter("t4"));
pst.setString(5,request.getParameter("t5"));
pst.setString(6,request.getParameter("t6"));
pst.setString(7,request.getParameter("t7"));
pst.setInt(8,Integer.parseInt(request.getParameter("t14")));
pst.setString(9,request.getParameter("t12"));
pst.setString(10,request.getParameter("t13"));
pst.setString(11,request.getParameter("t16"));
pst.setString(12,request.getParameter("t15"));
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