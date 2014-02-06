package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class SingleJSP_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.apache.jasper.runtime.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.apache.jasper.runtime.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<HTml>\n");
      out.write("<HEAD><TITLE>Display file upload form to the user</TITLE></HEAD>  \n");
 //  for uploading the file we used Encrypt type of multipart/form-data and input of file type to browse and submit the file 
      out.write("\n");
      out.write("  <BODY> <FORM  ENCTYPE=\"multipart/form-data\" ACTION=\"sinle_upload_page.jsp\" METHOD=POST>\n");
      out.write("\t\t<br><br><br>\n");
      out.write("\t  <center><table border=\"2\" >\n");
      out.write("                    <tr><center><td colspan=\"2\"><p align=\"center\"><B>PROGRAM FOR UPLOADING THE FILE</B><center></td></tr>\n");
      out.write("                    <tr><td><b>Choose the file To Upload:</b></td>\n");
      out.write("\n");
      out.write("                    <td><INPUT NAME=\"F1\" TYPE=\"file\"></td>\n");
      out.write("\t\t\t\t\t<td colspan=\"2\"><p align=\"right\"><INPUT TYPE=\"submit\" VALUE=\"Send File\" ></p></td></tr>\n");
      out.write("             <table>\n");
      out.write("     </center>      \n");
      out.write("     </FORM>\n");
      out.write("     \n");
      out.write("    <h1>\n");
      out.write(" <a href=\"./index.jsp\">Index Page</a>\n");
      out.write("</h1>\n");
      out.write("</BODY>\n");
      out.write("</HTML>\n");
      out.write("    ");

    application.setAttribute("name","jagbinder");
    
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
