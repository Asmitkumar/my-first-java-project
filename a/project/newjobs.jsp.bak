<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
				<%!
Connection con=null;
PreparedStatement pst=null;
ResultSet rs=null;
%>


<%


try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:data","root","");
pst=con.prepareStatement("select * from job");
out.println("<html><body><table border='1'  cellpadding='0' cellspacing='0'>");
out.println("<tr><th>Company</th><th>Openings</th><th>Title</th><th>Job Description</th></tr>");
rs=pst.executeQuery();
while(rs.next())
	{
		out.println("<tr><td>"+rs.getString(1)+"</td>");
		out.println("<td>"+rs.getString(2)+"</td>");
		out.println("<td>"+rs.getString(3)+"</td>");
		out.println("<td>"+rs.getString(4)+"</td></tr>");
	}
	
}
catch (Exception e)
{
out.println("Exception is:=="+e);
}
out.println("</table></body></html>");
%>
