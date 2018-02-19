<%@ page  import="java.sql.*"  %>
<%


String name=(String)session.getAttribute("un");

String pw=(String)session.getAttribute("pw");
try
{
Connection con=null;
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;Database=fogcomputing;Server=SEM1COLON\\FOGSERVER","sa","v2ms1007");
PreparedStatement ps=con.prepareStatement("update signup set pass='"+pw+"',cpass='"+pw+"' where name='"+name+"' ");
ps.executeUpdate();


}
catch(Exception e)
{
out.println(e.getMessage());
}

 response.sendRedirect("user_login.jsp");
 


%>