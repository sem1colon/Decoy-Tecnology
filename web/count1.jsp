<%@page import="java.text.DateFormat"%>
<%@ page import="java.sql.*, javax.sql.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<%@ page import="java.sql.*,java.io.*"  %>
<%@ page import="java.util.*,java.text.ParseException.*"%>
<%@page import="java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>

<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body>
<%
String fid=(String)session.getAttribute("fid");
String username = (String)session.getAttribute("un");
String fname = (String)session.getAttribute("fname");
String au=null;
int ac=0,ddc=1,dinc=0;

try
{
 Connection con=null;
 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;Database=fogcomputing;Server=SEM1COLON\\FOGSERVER","sa","v2ms1007");
 PreparedStatement ps=con.prepareStatement("select uau from fileupload where fid ='"+fid+"' ");
 ResultSet rs=ps.executeQuery();
if(rs.next())
{
au=rs.getString("uau");
int i = Integer.parseInt( au );
  int r=i+1;
    String inc = Integer.toString(r);
try
{
 PreparedStatement ps1=con.prepareStatement("update fileupload set uau='"+inc+"' where fid='"+fid+"' ");
 ps1.executeUpdate();
}
catch(Exception e)
{
 out.println(e.getMessage());
}
try
  {
   String behaviour = "Ab-normal";
   String decoys_use="Yes";
   String action="download";
   
   DateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");
   Date date = new Date();
   String time = dateFormat.format(date);
   
   PreparedStatement ps2  = con.prepareStatement("insert into access_log(uname,fname,behaviour,decoys_dep,action,time) values (?,?,?,?,?,?)");
   ps2.setString(1,username);
   ps2.setString(2,fname);
   ps2.setString(3,behaviour);
   ps2.setString(4,decoys_use);
   ps2.setString(5,action);
   ps2.setString(6,time);
   ps2.executeQuery();
}
catch(Exception ex)
  {
  out.println(ex.getMessage());  
  }
}
}
catch(Exception e)
{
out.println(e.getMessage());
}
try
   {
    DateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");
    Date date = new Date();
    String d = dateFormat.format(date);
    Connection con=null;
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;Database=fogcomputing;Server=SEM1COLON\\FOGSERVER","sa","v2ms1007");
    PreparedStatement ps6=con.prepareStatement("update behaviour set deptime = '"+d+"'where uname ='"+username+"' ");
    ps6.executeUpdate();
   }
catch(Exception ex)
   {
    out.println(ex.getMessage());
   }
//Behaviour 
try
  {
  Connection con=null;
  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
  con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;Database=fogcomputing;Server=SEM1COLON\\FOGSERVER","sa","v2ms1007");
  PreparedStatement ps3=con.prepareStatement("select alert_count from behaviour where uname ='"+username+"' ");
  ResultSet rs3=ps3.executeQuery();
  if(rs3.next())
    {
     ac = rs3.getInt("alert_count");
     if(ac==0)
       {
        ac=1;  
       }
     else
       {
         ac=ac+1;
       }
try
   {
    PreparedStatement ps4=con.prepareStatement("update behaviour set alert_count = '"+ac+"' where uname='"+username+"' ");
    ps4.executeUpdate();
    PreparedStatement ps5 = con.prepareStatement("update behaviour set decoy_dep_count='"+ddc+"' where uname='"+username+"'");
    ps5.executeUpdate();
   }
 catch(Exception e)
   {
    out.println(e.getMessage());
   }
  }
}
catch(Exception ex)
     {
      out.println(ex.getMessage());
     }
response.sendRedirect("file_download2.jsp");		
%>
</body>
</html>