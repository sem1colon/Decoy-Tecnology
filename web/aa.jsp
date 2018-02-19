<%@ page import="java.util.*"%>
<%@page import="java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
SimpleDateFormat sdf1 = new SimpleDateFormat("HH:mm:ss");
Calendar cal = Calendar.getInstance();
String st=(sdf1.format(cal.getTime()));
	      
String ans=request.getParameter("ans");
session.setAttribute("ans",ans);

String name=(String)session.getAttribute("un");
String fname=null;
String fname1=null;

try
{
 Connection con=null;
 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
 con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;Database=fogcomputing;Server=SEM1COLON\\FOGSERVER","sa","v2ms1007");
 PreparedStatement ps=con.prepareStatement("select from1,to1 from signup where name='"+name+"' ");
 ResultSet rs=ps.executeQuery();
while(rs.next())
{
 fname=rs.getString("from1");
 fname1=rs.getString("to1");
}
}
catch(Exception e)
{
out.println(e.getMessage());
}
%>
<%
  SimpleDateFormat formater = new SimpleDateFormat("HH:mm:ss");
  
  Date b=formater.parse(fname);
  Date c=formater.parse(fname1);
  Date a=formater.parse(st);

if((a.after(b))&&(a.before(c)))
{
 response.sendRedirect("ans_check.jsp");
}
else
{
 response.sendRedirect("ans_check.jsp");
}
%>
</body>
</html>
