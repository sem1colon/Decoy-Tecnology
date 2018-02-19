<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>My CLoud </title>
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
.a {background-color:white;
border-color:red;
border-size:1 px;
}
.button {	background:#25A6E1;
	background:-moz-linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	background:-webkit-gradient(linear,left top,left bottom,color-stop(0%,#25A6E1),color-stop(100%,#188BC0));
	background:-webkit-linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	background:-o-linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	background:-ms-linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	background:linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#25A6E1',endColorstr='#188BC0',GradientType=0);
	padding:4px10px;
	color:#FFFFFF;
	font-family:'Helvetica Neue',sans-serif;
	font-size:15px;
	border-radius:4px;
	-moz-border-radius:4px;
	-webkit-border-radius:4px;
	border:1px solid #1A87B9
}
.a1 {background-color:white;
border-color:red;
border-size:1 px;
}
.button1 {	background:#25A6E1;
	background:-moz-linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	background:-webkit-gradient(linear,left top,left bottom,color-stop(0%,#25A6E1),color-stop(100%,#188BC0));
	background:-webkit-linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	background:-o-linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	background:-ms-linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	background:linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#25A6E1',endColorstr='#188BC0',GradientType=0);
	padding:4px10px;
	color:#FFFFFF;
	font-family:'Helvetica Neue',sans-serif;
	font-size:15px;
	border-radius:4px;
	-moz-border-radius:4px;
	-webkit-border-radius:4px;
	border:1px solid #1A87B9
}
</style>
</head>
<body id="top">
<div class="wrapper col1">
  <div id="head">
    <h1><a href="#">MyCloud</a><img name="" src="images/demo/Untitled-4.png" width="129" height="103" alt="" /></h1>
    <div id="topnav">
      <ul>
        <li><a class="active" href="index.jsp">Home</a></li>
        <li><a href="viewfiles.jsp">My files</a></li>
        <li><a href="uploadfiles.jsp">Upload files</a></li>
        <li><a href="changepass.jsp">Change Password</a></li>
        <li><a href="viewalert.jsp">View Alert</a></li>
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
      <div style="position:absolute; left:91px; top:67px; width: 749px; height: 316px;">
        <table width="735" height="318" align="center" bgcolor="#FFFFFF" >
          <tr>
            <td height="39" colspan="3" align="center" class="image"><u><font color="#6A006A" size="3"><em><font color="#003E00" size="4" face="Courier New, Courier, mono"><strong>security question </strong></font></em></font></u></td>
          </tr>
          <tr>
            <td width="180" height="271">&nbsp;</td>
            <td width="280"><table width="280" height="171" background="images/img04.jpg" >
              <form action="aa.jsp" method="get" name="f" id="f">
                  <%@page import="java.sql.*"%>

                <%
	
String fid=request.getQueryString();
session.setAttribute("fid",fid);
String name=(String)session.getAttribute("un");
String fname=null;

try
{
 Connection con;
 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;Database=fogcomputing;Server=SEM1COLON\\FOGSERVER","sa","v2ms1007");
PreparedStatement ps=con.prepareStatement("select question from signup where name='"+name+"' ");
 ResultSet rs=ps.executeQuery();

while(rs.next())
     {
      fname=rs.getString("question");
     }
%>
                <tr >
                  <td width="272" height="46" align="center"><font size="4"><strong><em><font color="#800040"> <font size="2">1. <%=fname%> </font></font></em></strong></font></td>
                  <%


}
catch(Exception e)
{
out.println(e.getMessage());
}

%>
                </tr>
                <tr>
                  <td height="69" align="center" ><font size="4"><strong>
                    <input type="text" name="ans" class="a1" />
                  </strong></font></td>
                </tr>
                <tr>
                  <td height="46" align="center" ><font size="4"><strong>
                    <input type="submit" name="s" value="submit" class="button1"/>
                  </strong></font></td>
                </tr>
              </form>
            </table></td>
            <td width="259"><img src="images/sss.jpg" alt="" width="203" height="156"/></td>
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
