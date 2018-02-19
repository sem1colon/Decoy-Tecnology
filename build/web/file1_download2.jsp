
<%@ page import="java.sql.*, javax.sql.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<html>
<head>
<title>File Download</title>
<script language="JavaScript">

</script>
</head>

<body>		
<%
 try
   {
    String fpath =(String)session.getAttribute("filepath");	 
    String fname = (String)session.getAttribute("fname");
     
response.setContentType("application/octet-stream");
response.setHeader("Content-Disposition","Attachment; Filename=\""+fname+"\"");

File file = new File(fpath);
FileInputStream fileIn = new FileInputStream(file);
ServletOutputStream outs = response.getOutputStream();
 
byte[] outputByte = new byte[4096];
//copy binary contect to output stream
while(fileIn.read(outputByte, 0, 4096) != -1)
{
	outs.write(outputByte, 0, 4096);
}
fileIn.close();
outs.flush();
outs.close();                 
                  	 }
	 catch(Exception e)
	      {
	       out.println("Exception :"+e);
	      }
// response.sendRedirect("download_success.jsp");

%>
</body>
</html>