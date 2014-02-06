package Control;


import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.ServletContext;
public class dataservlet extends HttpServlet {

	Connection con=null;
	PreparedStatement pst=null;
	ResultSet rs=null;
	 ServletOutputStream stream = null;
	     BufferedReader buf = null;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        ServletContext ctx=getServletContext();

		String e=(String)ctx.getAttribute("name");
		System.out.println(e);
            
		//get the filename from the "file" parameter
	    /*  String fileName = (String) request.getParameter("file");
          System.out.println(fileName);
	      if (fileName == null || fileName.equals(""))
	         throw new ServletException("Invalid or non-existent file parameter in SendPdf servlet.");*/
			 try
			 {
				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
				con=DriverManager.getConnection("jdbc:odbc:load","root","root");
				pst=con.prepareStatement("select * from  resume where  user=?");
				pst.setString(1,e);
              rs=pst.executeQuery();
			  if(rs.next())
				 {
				  //where are PDFs kept?
	            String fileName=rs.getString(2);
	    	 //String fileName = (String) request.getParameter("file");
          System.out.println(fileName);
	      if (fileName == null || fileName.equals(""))
	         throw new ServletException("Invalid or non-existent file parameter in SendPdf servlet.");


	      //where are PDFs kept?
	     String pdfDir = getServletContext( ).getRealPath("/data");
	     if (pdfDir == null || pdfDir.equals(""))
	           throw new ServletException(
	             "Invalid or non-existent 'fileDir' context-param.");

	     ServletOutputStream stream = null;
	     BufferedInputStream buf = null;
	     try{

	     stream = response.getOutputStream( );
	     File pdf = new File(pdfDir + "/" + fileName);

	     //set response headers
	     if(fileName.indexOf(".pdf")!=-1)
	        response.setContentType("application/pdf");
	     else if(fileName.indexOf(".doc") != -1)
	         response.setContentType("application/doc");
	      else if(fileName.indexOf(".jpg") != -1)
	         response.setContentType("image/jpeg");
	      else if(fileName.indexOf(".wmv") != -1)
	            response.setContentType("vedio/wmv");

	     response.addHeader(
	        "Content-Disposition","attachment; filename="+fileName );

	     response.setContentLength( (int) pdf.length( ) );
	     //int t = this.insertRow(pdf);

	     FileInputStream input = new FileInputStream(pdf);
	     buf = new BufferedInputStream(input);
	     int readBytes = 0;

	     //read from the file; write to the ServletOutputStream
	     while((readBytes = buf.read( )) != -1)
	        stream.write(readBytes);


              }
              catch (Exception ioe){
	        System.out.println(ioe);
	       // throw new ServletException(ioe.getMessage( ));
         }
              }
             }
         catch(Exception ee)
         {
              System.out.println("exception in connection:=="+ee);
         }



         finally {

	     //close the input/output streams
	         if (stream != null)
	             stream.close( );
	          if (buf != null)
	          buf.close( );
	     }
	}
    }