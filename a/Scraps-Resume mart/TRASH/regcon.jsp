<%@ page import="java.sql.*"%>
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
pst=con.PrepareStatement("insert into registration_seeker (FN,LN,DOB,GENDER,COUNTRY,STATE,PA,PHONE,EMAIL,PASS,SEQANS) values (?,?,?,?,?,?,?,?,?,?,?)");
pst.setString(1,request.getParameter("t111"));
pst.setString(2,request.getParameter("t222"));
pst.setString(3,request.getParameter("t3"));
pst.setString(4,request.getParameter("t4"));
pst.setString(5,request.getParameter("t5));
pst.setString(6,request.getParameter("t6"));
pst.setString(7,request.getParameter("t7"));
pst.setString(8,request.getParameter("t14"));
pst.setString(9,request.getParameter("t12"));
pst.setString(10,request.getParameter("t13"));
pst.setString(11,request.getParameter("t16"));
rs=pst.executeQuery();
}
catch(Exception e)
{
out.println("Exception is:=="+e);
}
%>