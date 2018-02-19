
<%@ page import="java.sql.*, javax.sql.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<html>
<head>
<title></title>
</head>

<body>		
<%
try
  {
  String fpath =(String)session.getAttribute("dfpath");	 
  String fname = (String)session.getAttribute("fname");
  String username = (String)session.getAttribute("un");
  String behaviour = "normal";
  String decoys_use="No";
  String action="download";
  int alert_count = 0;
 try
    {
     Connection con=null;
     Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
     con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;Database=fogcomputing;Server=SEM1COLON\\FOGSERVER","sa","v2ms1007");
     PreparedStatement ps=con.prepareStatement("insert into access_log values (?,?,?,?)");
     ResultSet rs=ps.executeQuery();
     ps.setString(1,username);
     ps.setString(2,fname);
     ps.setString(3, behaviour);
     ps.setString(4,action);
     ps.executeUpdate();               
    }
catch(Exception ex)
     {
      System.out.println(ex);  
     }
                 
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
response.sendRedirect("download_success.jsp");
%>
</body>
</html>