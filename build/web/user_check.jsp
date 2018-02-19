
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@ page import="java.sql.*,java.util.Date"%>

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
PreparedStatement ps=con.prepareStatement("select * from  signup where name='"+un+"' and cpass='"+pw+"'");
ResultSet rs=ps.executeQuery();
if(rs.next())
{
response.sendRedirect("behaviour_check.jsp");
}
else
{
response.sendRedirect("Userlogin.jsp");
}
}
catch(Exception e)
{
out.println(e.getMessage());
}
%>
<%
try
   {
    String username = session.getAttribute("un").toString();
    DateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");
    Date date = new Date();
    String d = dateFormat.format(date);
    Connection con=null;
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;Database=fogcomputing;Server=SEM1COLON\\FOGSERVER","sa","v2ms1007");
    PreparedStatement ps6=con.prepareStatement("update behaviour set Lastintime = '"+d+"'where uname ='"+username+"' ");
    ps6.executeUpdate();
   }
catch(Exception ex)
   {
    out.println(ex.getMessage());
   }
%>