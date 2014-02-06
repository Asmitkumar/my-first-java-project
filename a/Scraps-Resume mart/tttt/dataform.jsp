<%@page import="java.sql.*" %>
<%
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
%>
<%

String name=(String)application.getAttribute("name");
String path=(String)application.getAttribute("path");
String paths=(String)application.getAttribute("paths");


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
 out.println("data insert");
 }
else
    {
     out.println("sorrey");
     }
}
catch(Exception e)
        {
     out.println("exception is:=="+e);
     }
%>
//brsPlanDocument.setPlanId(planId);
//brsPlanDocument.setFileName(fileName);
//brsPlanDocument.setFileBytes(fileBytes);



