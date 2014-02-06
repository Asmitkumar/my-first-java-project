/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Control;


import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class uploadServlet extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 *
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//get the filename from the "file" parameter
	      String fileName = (String) request.getParameter("file");
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

	     } catch (Exception ioe){
	        System.out.println(ioe);
	       // throw new ServletException(ioe.getMessage( ));

	     } finally {

	     //close the input/output streams
	         if (stream != null)
	             stream.close( );
	          if (buf != null)
	          buf.close( );
	     }
	}

}
