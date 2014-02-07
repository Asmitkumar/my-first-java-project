<%@page import="java.sql.*" %>
<%
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
%>
<%

String name=(String)application.getAttribute("username");
String path=(String)application.getAttribute("path");
String paths=(String)application.getAttribute("paths");
System.out.println("value in dataform="+name);

try
   {
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
         con=DriverManager.getConnection("jdbc:odbc:data","root","");
    ps = con.prepareStatement("insert into resume values (?,?)");
    ps.setString(1,name);
    ps.setString(2,paths);

int r = ps.executeUpdate();
if(r>0)
{
 out.println("data inserted");
 }
else
    {
     out.println("sorry");
     }
}
catch(Exception e)
        {
     out.println("exception is:=="+e);
     }
%>


