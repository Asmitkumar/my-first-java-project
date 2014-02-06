<%@page import="java.sql.*" %>
<html>

    <body bgcolor="990099">

<%!
 Connection con=null;
 PreparedStatement pst=null;
 ResultSet rs=null;
 String j[];
    // String l="";
    String k="";
 %>
<%
String id=request.getParameter("code");
String ids=id.toUpperCase();
System.out.println(id);

  try
      {
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      }
  catch(Exception e)
          {
         out.println("exception in driver is:=="+e);
         }
           try
          {
            con=DriverManager.getConnection("jdbc:odbc:skill");
        PreparedStatement pst=con.prepareStatement("select * from jobinfo");// where emp_code=?");
        //pst.setString(1,id);

       rs=pst.executeQuery();
       while(rs.next())
           {
          //out.println(rs.getString(2)+"\t"+rs.getString(5));
          // out.println("<br><br><br>");
           String v=rs.getString(5);
          String m=rs.getString(1);
          String loc=rs.getString(3);
           j=v.split(",");
           int x=j.length;
           for(int i=0;i<x;i++)
               {
               if(j[i].equals("java")||j[i].equals("JAVA")&& ids.equals("JAVA"))
                 {
                   //out.println(m+"<br>");//String m=rs.getString(2);
                   k="JOBID:=="+m+"<b>&nbsp Tecnology:=</b>"+j[i]+"<br>Location:=="+loc;
                   out.println("<b>"+k+"<br>");
                  //out.println("select:=="+j[i]+"<br>");

                    }
               else if(j[i].equals("c++")||j[i].equals("C++")&&ids.equals("C++"))
                 {
                   //out.println(m+"<br>");//String m=rs.getString(2);
                   k="JOBID:=="+m+"<b>&nbsp Tecnology:=</b>"+j[i]+"<br>Location:=="+loc;
                   out.println("<b>"+k+"<br>");
                  //out.println("select:=="+j[i]+"<br>");

                    }
                 else if(j[i].equals("PHP")||j[i].equals("php")&&ids.equals("PHP"))
                 {
                   //out.println(m+"<br>");//String m=rs.getString(2);
                   k="JOBID:=="+m+"<b>&nbsp Tecnology:=</b>"+j[i]+"<br>Location:=="+loc;
                   out.println("<b>"+k+"<br>");
                  //out.println("select:=="+j[i]+"<br>");
                    }
            }
          request.setAttribute("result",k);
        }
           }


         
           catch(Exception e)
                   {
                out.println("exception in connection:=="+e);
                 }
           //out.println("<br><br>yahoo:=="+k);

           //RequestDispatcher dis=request.getRequestDispatcher("par.jsp");
           //dis.include(request,response);
%>
    </body>
</html>