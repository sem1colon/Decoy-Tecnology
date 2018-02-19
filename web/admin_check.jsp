<%@ page  import="java.sql.*"  %>
<%
String un=request.getParameter("un");
String pw=request.getParameter("pw");
session.setAttribute("un",un);
session.setAttribute("pw",pw);


try
{
Connection con=null;
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;Database=fogcomputing;Server=SEM1COLON\\FOGSERVER","sa","v2ms1007");
PreparedStatement ps=con.prepareStatement("select * from admin where name='"+un+"' and pass='"+pw+"' ");
ResultSet rs=ps.executeQuery();
if(rs.next())
{
response.sendRedirect("Adminhome.jsp");
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