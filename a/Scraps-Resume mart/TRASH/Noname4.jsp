

 <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<HTML>
<HEAD>
  <TITLE>insert data using prepared statement </TITLE>
</HEAD>
    <BODY bgcolor="#ffffcc">
  <font size="+3" color="green"><br>abcd</font>
  <FORM action="prepared_statement_query.jsp" method="get">
    <TABLE style="background-color: #ECE5B6;" WIDTH="30%" >
         <TR>
              <TH width="50%">Name</TH>
                  <TD width="50%"><INPUT TYPE="text" NAME="name"></TD>
          </tr>
      <TR>
             <TH width="50%">City</TH>
                 <TD width="50%"><INPUT TYPE="text" NAME="city"></TD>
          </tr>
          <TR>
             <TH width="50%">Phone</TH>
                 <TD width="50%"><INPUT TYPE="text" NAME="phone"></TD>
          </tr>
                  <TR>
              <TH></TH>
                  <TD width="50%"><INPUT TYPE="submit" VALUE="submit"></TD>
          </tr>
   </TABLE>
   <%!
Connection con=null;
PreparedStatement pst=null;
PreparedStatement pst1=null;
ResultSet rs=null;
ResultSet rs1=null;
%>
<%
   String name = request.getParameter("name");
   String city = request.getParameter("city");
   String phone = request.getParameter("phone");
  
   <%
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:asmit","root","");

    
              String queryString =("INSERT INTO asmit (name,password,phone) VALUES (?, ?, ?)");
                      /* createStatement() is used for create statement
              object that is used for 
                sending sql statements to the specified database. */
              pst = con.prepareStatement(queryString);
              pst.setString(1, name);
                          pst.setString(2, city);
                          pst.setString(3, phone);
              updateQuery = pst.executeUpdate();
                            if (updateQuery != 0) { %>
                   <br>
                   <TABLE style="background-color: #E3E4FA;" 
                   WIDTH="30%" border="1">
                      <tr><th>Data is inserted successfully 
                    in database.</th></tr>
                   </table>
              <%
              }
            } 
            catch (Exception ex) {
            out.println("Unable to connect to batabase.");
   
               }
            finally {
                // close all the connections.
                pst.close();
                con.close();
            }
          }
        }
%>
  </FORM>
 </body> 
</html>

