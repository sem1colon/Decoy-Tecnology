<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>Corporation | Style Demo</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
<style type="text/css">
#apDiv1 {
	position:absolute;
	width:250px;
	height:131px;
	z-index:1001;
	left: 87px;
	top: 109px;
}
#apDiv2 {
	position:absolute;
	width:280px;
	height:115px;
	z-index:1001;
	left: 362px;
	top: 128px;
}
</style>
</head>
<body id="top">
<div class="wrapper col1">
  <div id="head">
    <h1><a href="#">MyCloud</a><img name="" src="images/demo/Untitled-4.png" width="129" height="103" alt="" /></h1>
    <div id="topnav">
      <ul>
        <li><a class="active" href="Adminhome.jsp">Home</a></li>
        <li><a href="user_details.jsp">User Details</a></li>
        <li><a href="user_updetails.jsp">Upload Details</a></li>
        <li><a href="user_accesslog.jsp">Access Log</a></li>
        <li><a href="logout.jsp"> Logout</a></li>
      </ul>
    </div>
  </div>
</div>
<div class="wrapper col2">
  <div id="breadcrumb">
    <ul>
      <li class="first"></li>
    </ul>
  </div>
</div>
<div class="wrapper col4">
  <div id="container">
    <div class="clear">
      <p>&nbsp;</p>
      <div style="position:absolute; left:125px; top:76px; width: 687px; height: 314px;">
        <table width="720" height="311" align="center" bgcolor="#FFFFFF" >
          <tr>
            <td height="40" align="center" class="image"><u><font color="#FF0404" size="3"><em><font color="#6A006A"><strong>Access 
              DETAILS</strong></font></em></font></u></td>
          </tr>
          <tr>
            <td width="592" height="263"><table width="85%"  align="center"  bgcolor="#000000">
              <tr bgcolor="#333333" >
                <td width="35" height="30" align="center"><font color="#FFFFFF" size="2">user</font></td>
                <td width="33" align="center"><font color="#FFFFFF" size="2">file</font></td>
                <td width="41" align="center" ><font color="#FFFFFF" size="2">behaviour</font></td>
                <td width="51" align="center" ><font color="#FFFFFF" size="2">Decoys</font></td>
                <td width="34" align="center" ><font color="#FFFFFF" size="2">Action</font></td>
                <td width="63" align="center" ><font color="#FFFFFF" size="2">Time</font></td>
                </tr>
              <%
String uname=null;
String fname=null;
String behaviour=null;
String decoys_dep=null;
String action=null;
String time=null;


try
{
Connection con=null;
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;Database=fogcomputing;Server=SEM1COLON\\FOGSERVER","sa","v2ms1007");
PreparedStatement ps=con.prepareStatement("select * from access_log" );
ResultSet rs=ps.executeQuery();
while (rs.next())
{
uname=rs.getString(1);
fname=rs.getString(2);
behaviour=rs.getString(3);
decoys_dep=rs.getString(4);
action=rs.getString(5);
time=rs.getString(6);


%>
              <tr bgcolor="#FFFFFF">
                <td height="31" align="center"><strong><em><font color="#008400"> <%=uname%> </font></em></strong></td>
                <td align="center"><strong><em><font color="#008400"><%=fname%></font></em></strong></td>
                <td align="center"><strong><em><font color="#008400"><%=behaviour%></font></em></strong></td>
                <td align="center"><strong><em><font color="#008400"><%=decoys_dep%></font></em></strong></td>
                <td align="center"><strong><em><font color="#008400"><%=action%></font></em></strong></td>
                <td align="center"><strong><em><font color="#008400"><%=time%></font></em></strong></td>
                </tr>
              <%


}


}
catch(Exception e)
{
out.println(e.getMessage());
}

%>
            </table></td>
          </tr>
        </table>
      </div>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
    </div>
  </div>
</div>
<div class="wrapper col5">
  <div id="footer">
    <div id="contactform">
      <h2>Contact Us Today !</h2>
      <p></p>
      <h2>Mail @ mycloudsite@email.com</h2>
      <h2>Contact : 1800-0011-722</h2>
    </div>
    <!-- End Contact Form -->
    <div id="compdetails">
      <div id="officialdetails">
        <h2>Company Information !</h2>
        <ul>
          <li>Company Mycloudsite Ltd</li>
          <li>Registered in Amravati</li>
          <li>Company No. 722553 </li>
        </ul>
      </div>
      <div id="contactdetails">
        <h2>Our Contact Details !</h2>
        <ul>
          <li>MyCloudSite Ltd</li>
          <li>MG Road</li>
          <li>Vijayawada</li>
          <li>520010</li>
          <li>Tel: 9876543210</li>
        </ul>
      </div>
      <div class="clear"></div>
    </div>
    <!-- End Company Details -->
    <div id="copyright">
      <p class="fl_left">Copyright &copy; 2018 - All Rights Reserved </p>
      <p class="fl_right"><br class="clear" />
      </p>
    </div>
    <div class="clear"></div>
  </div>
</div>
</body>
</html>
