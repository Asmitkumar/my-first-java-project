<%@ page import="java.io.*"%>

<%
try
        {
File file = new File("C:\\abc.txt");//temp\\downloadfilename.csv");
FileInputStream fileIn = new FileInputStream(file);
ServletOutputStream fout = response.getOutputStream();

byte[] outputByte = new byte[4096];
//copy binary contect to output stream
while(fileIn.read(outputByte, 0, 4096) != -1)
{
	fout.write(outputByte, 0, 4096);
}
fileIn.close();
fout.flush();
fout.close();
}
catch(Exception e)
        {
    }
%>