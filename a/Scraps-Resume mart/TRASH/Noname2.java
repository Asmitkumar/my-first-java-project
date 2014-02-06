import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import java.sql.*;
public class db extends HttpServlet
{
Connection con=null;
ResultSet rs=null;
Statement st=null;
public void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
{
res.setContentType("text/html");
PrintWriter out=res.getWriter();
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
}
catch(Exception e)
{
out.println("Exception in driver"+e);
}
try
{
con=DriverManager.getConnection("jdbc:odbc:data","root","root");
st=con.createStatement();
rs=st.executeQuery("insert into registration_seeker values(?,?,?,?,?,?,?,?,?,?,?)");

while (rs.next())
{
out.println(rs.getString(1));
out.println("&nbsp &nbsp"+rs.getString("password"));
}
}
catch(Exception m)
{
out.println("exception in connection" +m);
}
}
}
