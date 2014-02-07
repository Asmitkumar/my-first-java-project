<%-- 
    Document   : index
    Created on : dec 15, 2011, 11:54:59 AM
    Author     : asmit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.io.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Uploaded files</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
                    String dir = config.getServletContext().getRealPath("/data");
                    File file = new File(dir);
                    String []list = file.list();
					String str;
				        for(int i=0;i<list.length;i++)//String str=null; : list)
                        {
							str=list[i];
								
                     %>

     <%--<a href="http://localhost:7001//project//uploadServlet?file=<%=str%>"> <%=str%> </a><br/>--%>
	   
<a href="http://localhost:7001//project//dataservlet?file=<%=str%>"> <%=str%> </a><br/>

                        <%

                    }
                    
        %>

        <h1><a href="./upload_resume.jsp"> Upload Files</a></h1>
        
    </body>
</html>
