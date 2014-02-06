<%-- 
    Document   : index
    Created on : Jul 21, 2010, 7:54:59 AM
    Author     : ankur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.io.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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

     <a href="http://localhost:7001//test1//uploadServlet?file=<%=str%>"> <%=str%> </a><br/>

                        <%

                    }
                    
        %>

        <h1><a href="./SingleJSP.jsp"> Upload Files</a></h1>
        <h1><a href="./jk.jsp"> Back</a></h1>
    </body>
</html>
