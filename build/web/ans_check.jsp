<%@ page  import="java.sql.*"  %>
<%

String name=(String)session.getAttribute("un");
String ans=(String)session.getAttribute("ans");

try
{
Connection con=null;
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;Database=fogcomputing;Server=SEM1COLON\\FOGSERVER","sa","v2ms1007");
PreparedStatement ps=con.prepareStatement("select * from  signup where name='"+name+"' and answer='"+ans+"'");
ResultSet rs=ps.executeQuery();
if(rs.next())
{
 response.sendRedirect("file1_download.jsp");
}
else
{
 response.sendRedirect("file_download.jsp");
}
}
catch(Exception e)
{
 out.println(e.getMessage());
}
%>
