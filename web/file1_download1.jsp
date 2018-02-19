<%@ page import="java.sql.*, javax.sql.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<%@ page import="java.io.*"%>
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
	String fid=request.getQueryString();
	String fid1=(String)session.getAttribute("fid");

	String fname=null;	
	
try
{
Connection con=null;
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;Database=fogcomputing;Server=SEM1COLON\\FOGSERVER","sa","v2ms1007");
PreparedStatement ps=con.prepareStatement("select fname from fileupload where fid ='"+fid1+"' ");
ResultSet rs=ps.executeQuery();
if(rs.next())
{ 
 fname=rs.getString("fname");
 session.setAttribute("fname",fname);
}

}
catch(Exception e)
{
out.println(e.getMessage());
}

response.sendRedirect("count.jsp");
%>

</body>
</html>
