<%@page import="java.sql.*" %>
<%
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
%>
<%
byte fileBytes[]=new byte[2042];
String fileName=null;
try
   {
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
         con=DriverManager.getConnection("jdbc:odbc:abc","root","root");
    String sqlString = "SELECT * FROM job";

ps = con.prepareStatement(sqlString);

rs = ps.executeQuery();
while (rs.next()) {
    String a=rs.getString(1);
    out.println(a);
fileBytes = a.getBytes();
fileName = a;
}}
catch(Exception e)
        {
     out.println("exception is:=="+e);
     }

//brsPlanDocument.setPlanId(planId);
//brsPlanDocument.setFileName(fileName);
//brsPlanDocument.setFileBytes(fileBytes);



/* Code for download */

 //fileName = .getFileName();
try
        {
String fileType = fileName.substring(fileName.indexOf(".")+1,fileName.length());


if (fileType.trim().equalsIgnoreCase("txt"))
{
response.setContentType( "text/plain" );
}
else if (fileType.trim().equalsIgnoreCase("doc"))
{
response.setContentType( "application/msword" );
}
else if (fileType.trim().equalsIgnoreCase("xls"))
{
response.setContentType( "application/vnd.ms-excel" );
}
else if (fileType.trim().equalsIgnoreCase("pdf"))
{
response.setContentType( "application/pdf" );
}
else if (fileType.trim().equalsIgnoreCase("ppt"))
{
response.setContentType( "application/ppt" );
}
else
{
response.setContentType( "application/octet-stream" );
}

response.setHeader("Content-Disposition","attachment; filename=\""+fileName+"\"");
response.setHeader("cache-control", "no-cache");

//byte[] fileBytes=brsPlanDocument.getFileBytes();

ServletOutputStream outs = response.getOutputStream();
outs.write(fileBytes);
outs.flush();
outs.close();
}
catch(Exception e)
        {
    }

%>