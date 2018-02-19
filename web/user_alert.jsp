<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>My CLoud Data Misuse</title>
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
</style>
</head>
<body id="top">
<div class="wrapper col1">
  <div id="head">
    <h1><a href="#">MyCloud</a><img name="" src="images/demo/Untitled-4.png" width="129" height="103" alt="" /></h1>
    <div id="topnav">
      <ul>
        <li><a  href="userhome.jsp">Home</a></li>
        <li><a href="viewfiles.jsp">My files</a></li>
        <li><a href="file_upload.jsp">Upload files</a></li>
        <li><a href="changepass.jsp">Change Password</a></li>
        <li><a class="active" href="viewalert.jsp">View Alert</a></li>
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
      <div style="position:absolute; left:142px; top:71px; width: 687px; height: 316px;">
        <table width="61%" height="304" align="center" bgcolor="#FFFFFF" >
          <tr>
            <td height="33" colspan="2" align="center" class="image"><u><font color="#6A006A" size="3"><em><font color="#003E00" size="4" face="Courier New, Courier, mono"><strong>Data 
              Misuse</strong></font></em></font></u></td>
          </tr>
          <tr>
            <td width="176" height="263"><img src="images/xaX.jpg" alt="" width="129" height="108"/></td>
            <td width="532"><table width="505"  align="center"  bgcolor="#000000">
              <tr bgcolor="#009966" >
                <td width="173" height="21" align="center"><font color="#FFFFFF" size="2">filename</font></td>
                <td width="167" align="center"><font color="#FFFFFF" size="2">Real User</font></td>
                <td width="149" align="center" ><font color="#FFFFFF" size="2">Attacker</font></td>
              </tr>
                    <%@page import="java.sql.*"%>

              <%

String fname=null;
String fid=null;
String size=null;

String name=(String)session.getAttribute("un");

try
{
Connection con;
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;Database=fogcomputing;Server=SEM1COLON\\FOGSERVER","sa","v2ms1007");
PreparedStatement ps=con.prepareStatement("select fname,au,uau  from fileupload where uname='"+name+"'" );
ResultSet rs=ps.executeQuery();
while (rs.next())
{

fname=rs.getString(1);
fid=rs.getString(2);
size=rs.getString(3);


%>
              <tr bgcolor="#FFFFFF">
                <td height="20" align="center" ><strong><em><font color="#002851"> <%=fname%> </font></em></strong></td>
                <td align="center"><strong><em><font color="#002851"> <%=fid%> </font></em></strong></td>
                <td align="center"><strong><em><font color="#002851"> <%=size%> </font></em></strong></td>
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
