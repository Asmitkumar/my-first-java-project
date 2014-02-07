<%@ page contentType="image/jpeg; chaoResult=iso-8859-1" language="java" %>
<%@ page session="false" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.io.*" %>

<html>
<body>

<%
    File img= new File(request.getParameter("image"));

    Connection con = null;
PreparedStatement pst=null;
ResultSet rs=null;
	try{
      
    //response.setContentType("image/jpeg");
       Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:data","root","");
pst=con.prepareStatement("insert into upload values (?,?)");
out.println("submitted");
String c=request.getParameter("F");
String d=request.getParameter("F1");
pst.setString(1,c);
InputStream is = new FileInputStream(img);
pst.setBinaryStream( 2, is, (int)(img.length()));
//set the Blob
pst.executeUpdate();
is.close();




   pst.close();
    pst = null;
    }

    finally {
        if (con != null )
        {
            con.close();
        }
    }

%>
</BODY>
</HTML>
