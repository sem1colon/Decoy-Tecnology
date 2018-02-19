<%@page import="java.text.DateFormat"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.ParseException.*"%>
<%@page import="java.lang.*;,java.text.SimpleDateFormat,java.util.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<html>
<head>
<title>My CLoud</title>
<meta http-equiv="Content-Type" content="text/shtml; charset=iso-8859-1">
</head>
<body>
<%
int uid=0;
String n=request.getParameter("n");
String p=request.getParameter("p");
String cp=request.getParameter("cp");
String em=request.getParameter("em");
String mn=request.getParameter("mn");
String ad=request.getParameter("ad");
String q=request.getParameter("q");
String a=request.getParameter("an");
String f=request.getParameter("f");
session.setAttribute("ft",f);
String t=request.getParameter("t");
session.setAttribute("tt",t);
String alert="yes";
try
{
  try
    {
ResultSet rs = null;
Statement st = null;
Connection con=null;
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;Database=fogcomputing;Server=SEM1COLON\\FOGSERVER","sa","v2ms1007");
st=con.createStatement();
rs=st.executeQuery("select max(uid) from signup");
if(rs.next())
  {
   int id=rs.getInt(1);
   if(id==0)
     {
      uid=1;
     }
     else
       {
        uid=id+1;
       }
     }   
  }
  catch(Exception ex)
       {
        out.println(ex.getMessage());      
       }
Connection con=null;
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;Database=fogcomputing;Server=SEM1COLON\\FOGSERVER","sa","v2ms1007");
PreparedStatement ps=con.prepareStatement("insert into signup(name,pass,cpass,email,mobile,address,question,answer,from1,to1,alert,uid) values(?,?,?,?,?,?,?,?,?,?,?,?)");
ps.setString(1,n);
ps.setString(2,p);
ps.setString(3,cp);
ps.setString(4,em);
ps.setString(5,mn);
ps.setString(6,ad);
ps.setString(7,q);
ps.setString(8,a);
ps.setString(9,f);
ps.setString(10,t);
ps.setString(11,alert);
ps.setInt(12,uid);
ps.executeUpdate();

PreparedStatement ps2 = con.prepareStatement("insert into behaviour values(?,?,?,?,?,?,?)");
String ddc="0",ac="0",dtime="0",otime="0",itime="0";

DateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");
Date date = new Date();
dtime = dateFormat.format(date);
otime = dateFormat.format(date);
itime = dateFormat.format(date);
ps2.setString(1,n);
ps2.setString(2,ddc);
ps2.setString(3,ac);
ps2.setInt(4,uid);
ps2.setString(5,dtime);
ps2.setString(6,otime);
ps2.setString(7,itime);
ps2.executeUpdate();

response.sendRedirect("reg_success.jsp");
}
catch(Exception e)
{
out.println(e.getMessage());
}

%>
</body>
</html>
