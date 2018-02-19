<%@page import="java.text.DateFormat"%>
<%@ page import="java.sql.*, javax.sql.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<%@ page import="java.sql.*,java.io.*"  %>
<%@ page import="java.util.*,java.text.ParseException.*"%>
<%@page import="java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>

<html>
<head>
<title>File Download</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
String fid=(String)session.getAttribute("fid");
String username = (String)session.getAttribute("un");
String au=null;
try
{
 Connection con=null;
 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
 con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;Database=fogcomputing;Server=SEM1COLON\\FOGSERVER","sa","v2ms1007");
 PreparedStatement ps=con.prepareStatement("select au from fileupload where fid ='"+fid+"' ");
 ResultSet rs=ps.executeQuery();
if(rs.next())
  {
   au=rs.getString("au");
   int i = Integer.parseInt( au );
   int r=i+1;
   String inc = Integer.toString(r);
try
  {
   Connection con1=null;

   String fname  = (String)session.getAttribute("fname");
   String behaviour = "Normal";
   String decoys_use="No";
   String action="download";  

   DateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");
   Date date = new Date();
   String time = dateFormat.format(date);          
   
   Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
   con1=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;Database=fogcomputing;Server=SEM1COLON\\FOGSERVER","sa","v2ms1007");;
   PreparedStatement ps1 = con1.prepareStatement("update fileupload set au='"+inc+"' where fid='"+fid+"' ");
   PreparedStatement ps2  = con1.prepareStatement("insert into access_log(uname,fname,behaviour,decoys_dep,action,time) values (?,?,?,?,?,?)");
   ps2.setString(1,username);
   ps2.setString(2,fname);
   ps2.setString(3,behaviour);
   ps2.setString(4,decoys_use);
   ps2.setString(5,action);
   ps2.setString(6,time);
   
   ps1.executeUpdate();
   ps2.executeUpdate();
  } 
catch(Exception e)
     {
      out.println(e.getMessage());
     }
}
}
catch(Exception e)
{
 out.println(e.getMessage());
}
    
response.sendRedirect("file1_download2.jsp");
%>



</body>
</html>