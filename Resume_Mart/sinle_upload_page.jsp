<%@ page import="java.io.*" %>
<%String name=(String)application.getAttribute("username"); %>
<%
	//to get the content type information from JSP Request Header
	String contentType = request.getContentType();
    System.out.println("value is:=="+contentType);
	//here we are checking the content type is not equal to Null and as well as the passed data from mulitpart/form-data is greater than or equal to 0
	if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
 		DataInputStream in = new DataInputStream(request.getInputStream());
		//we are taking the length of Content type data
		int formDataLength = request.getContentLength();
        System.out.println("value 2:=="+formDataLength);
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
                String dir = config.getServletContext().getRealPath("/data");
                System.out.println("place:=="+dir);

		FileOutputStream fileOut = new FileOutputStream(dir+"/"+saveFile);
		fileOut.write(dataBytes, startPos, (endPos - startPos));
		fileOut.flush();
		fileOut.close();
//out.println("val:"+fileOut);
		%><Br><table border="2"><tr><td><b>You have successfully upload the file by the name of:</b>
		<% out.println(saveFile);
       // application.setAttribute("name","jagbinder");
	    //application.setAttribute("name","username");
		System.out.println("value in single upload page="+name);
        application.setAttribute("path",dir);
		System.out.println("send value in single upload page= "+dir);
         application.setAttribute("paths",saveFile);
        %></td></tr></table><h1>
<jsp:include page="dataform.jsp"/>
 <a href="./index.jsp">Index Page</a>
</h1> <%
		}
%>
