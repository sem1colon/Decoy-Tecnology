<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>Corporation | Style Demo</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<meta http-equiv="refresh" content="4;URL=userhome.jsp">
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
	width:478px;
	height:145px;
	z-index:1001;
	left: 234px;
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
        <li><a class="active" href="userhome.jsp">Home</a></li>
        <li><a href="viewfiles.jsp">My files</a></li>
        <li><a href="uploadfiles.jsp">Upload files</a></li>
        <li><a href="passchange.jsp">Change Password</a></li>
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
      <p>&nbsp;</p>
      <div id="apDiv2">
        <p>Decoy Documents have been deployed in the Last Session</p>
        <table width="200" border="0" align="center">
          <tr>
            <%
		  String dtime="",otime="";
	          try
		    {
		   String user = session.getAttribute("un").toString();  
                   Connection con=null;
                   Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                   con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;Database=fogcomputing;Server=SEM1COLON\\FOGSERVER","sa","v2ms1007");
                   PreparedStatement ps=con.prepareStatement("select * from behaviour where uname ='"+user+"' ");
                   ResultSet rs=ps.executeQuery();
                   if(rs.next())
				     {
					  dtime=rs.getString("deptime");
					  otime=rs.getString("Lastouttime");
					 }
				  }
				  catch(Exception ex)
				  {
					  out.println(ex.getMessage());
				  }
			    %>
            <td width="61%">Decoy Deploy Time :</td>
            <td width="39%"><%=dtime%></td>
          </tr>
        </table>
        <p>As a Precaution you should Change the Password for Security</p>
      </div>
<%
        try
		   {
			 int ddc = 0;  
		    String user = session.getAttribute("un").toString();  
            Connection con=null;
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;Database=fogcomputing;Server=SEM1COLON\\FOGSERVER","sa","v2ms1007");
            PreparedStatement ps2=con.prepareStatement("update behaviour set decoy_dep_count = '"+ddc+"' where uname ='"+user+"' ");
            ps2.executeUpdate();  
                       }
        catch(Exception ex)
        {
            out.println(ex.getMessage());
        }
  %>            
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
