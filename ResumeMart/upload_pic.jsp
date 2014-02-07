<%-- 
    Document   : upload_pic
    Created on : Sep 5, 2011, 7:19:11 PM
    Author     : rahul
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>

<%@page import="java.sql.*"%>

<%!
    Connection con=null;
    Statement stmt=null;
    PreparedStatement ptmt=null;
    String query=null;
    ResultSet rs=null;
    String html;
%>

<%
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    con=DriverManager.getConnection("Jdbc:Odbc:fb","root","root");
    Integer id = (Integer)session.getAttribute("id");
    
    //to get the content type information from JSP Request Header
	String contentType = request.getContentType();
	//here we are checking the content type is not equal to Null and as well as the passed data from mulitpart/form-data is greater than or equal to 0
	if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
 		DataInputStream in = new DataInputStream(request.getInputStream());
		//we are taking the length of Content type data
		int formDataLength = request.getContentLength();
		byte dataBytes[] = new byte[formDataLength];
		int byteRead = 0;
		int totalBytesRead = 0;
		//this loop converting the uploaded file into byte code
		while (totalBytesRead < formDataLength) {
			byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
			totalBytesRead += byteRead;
			}

		String file = new String(dataBytes);
		//for saving the file name                
		String saveFile = file.substring(file.indexOf("filename=\"") + 10);                               
		saveFile = saveFile.substring(0, saveFile.indexOf("\n"));                              
		saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
                
		int lastIndex = contentType.lastIndexOf("=");
		String boundary = contentType.substring(lastIndex + 1,contentType.length());
		int pos;
		//extracting the index of file 
		pos = file.indexOf("filename=\"");                
		pos = file.indexOf("\n", pos) + 1;                
		pos = file.indexOf("\n", pos) + 1;                
		pos = file.indexOf("\n", pos) + 1;                
		int boundaryLocation = file.indexOf(boundary, pos) - 4;                
		int startPos = ((file.substring(0, pos)).getBytes()).length;                
		int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
                
		// creating a new file with the same name and writing the content in new file
               // String dir = application.getInitParameter("pdf-dir");
                //String dir = ".."+config.getServletContext().getContextPath()+"/data";
                
                
                
                String album_name = request.getParameter("album_name");
                query = "select noofphotos from album_"+id+" where albumname='"+album_name+"'";
                stmt = con.createStatement() ;
                rs = stmt.executeQuery(query);
                rs.next();
                int noofphotos = rs.getInt("noofphotos")+1;
                String dir = config.getServletContext().getRealPath("/gallery_"+id+"/"+album_name+"/"+album_name+id+noofphotos+".jpg");
                                             
		FileOutputStream fileOut = new FileOutputStream(dir);
		fileOut.write(dataBytes, startPos, (endPos - startPos));
		fileOut.flush();
		fileOut.close();
                               }
                %>
