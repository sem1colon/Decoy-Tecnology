<%@ page  import="java.sql.*"  %>
<%
String op=request.getParameter("op");
String pw=request.getParameter("np");
session.setAttribute("op",op);
session.setAttribute("pw",pw);
String name=(String)session.getAttribute("un");


try
{
Connection con=null;
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;Database=fogcomputing;Server=SEM1COLON\\FOGSERVER","sa","v2ms1007");
PreparedStatement ps=con.prepareStatement("select * from  signup where name='"+name+"' && cpass='"+op+"'");
ResultSet rs=ps.executeQuery();
if(rs.next())
{
response.sendRedirect("alert_pass_update.jsp");
}
else
{
out.println("enter correct user name and password");
}
}
catch(Exception e)
{
out.println(e.getMessage());
}

%>