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
pst=con.prepareStatement("select * from registration_seeker where FN =? and PASS=?");
out.println("first");
String x=request.getParameter("t1");
String y=request.getParameter("t2");
System.out.println(x+y);
pst.setString(1,x);
pst.setString(2,y);
rs=pst.executeQuery();
if(rs.next())
	{
	session.setAttribute("username", x );
	application.setAttribute("username",x);
	System.out.println("name in con2.jsp="+x);
	// response.sendRedirect("home1.jsp");
	RequestDispatcher dis=request.getRequestDispatcher("home1.jsp");
dis.forward(request,response);
	}
	else
	{
		 response.sendRedirect("loginseeker.jsp");
	}

}
catch (Exception e)
{
out.println("in con2.jspException is:=="+e);
}
%>