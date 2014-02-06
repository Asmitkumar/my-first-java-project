<%@ page import="java.sql.*"%>
<html>
    <body>

        <form>
            Enter file
            <input type="file" name="f">
              <input type="submit" value="submit">
                  <%

Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
%>
<%
try

   {

    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
         con=DriverManager.getConnection("jdbc:odbc:abc","root","root");


ps = con.prepareStatement("insert into job values(?)");
ps.setString(1,request.getParameter("f"));
int u=ps.executeUpdate();
if(u>0)
    {
     out.println("ok");
     }

}
catch(Exception e)
{
 out.println("exception is:=="+e);
}
%>




        </form>


    </body>




</html>