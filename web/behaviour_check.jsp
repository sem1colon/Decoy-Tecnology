<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Behaviour Checking</title>
</head>
<body>
<%
try
{
int dcount=0,acount=0;	
String user = (String)session.getAttribute("un");
Connection con=null;
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;Database=fogcomputing;Server=SEM1COLON\\FOGSERVER","sa","v2ms1007");
PreparedStatement ps = con.prepareStatement("select decoy_dep_count,alert_count from behaviour where uname ='"+user+"'");
ResultSet rs =  ps.executeQuery();
if(rs.next())
{
 dcount = rs.getInt("decoy_dep_count");	
 acount = rs.getInt("alert_count");
}
if(acount<=10)
{
 if(dcount==1)
   {
    response.sendRedirect("dd_notify.jsp");	 
   }
  response.sendRedirect("userhome.jsp");
 }
 else
 {
	 response.sendRedirect("alert_passchange.jsp"); 
 }
}
catch(Exception ex)
{
    out.println(ex.getMessage());
}
%>
</body>
</html>