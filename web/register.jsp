<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>My CLoud Registration</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
<style type="text/css">
#apDiv1 {
	position:absolute;
	width:415px;
	height:193px;
	z-index:1001;
	left: 267px;
	top: 142px;
}
#apDiv2 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:1001;
	left: 336px;
	top: 137px;
}
.a {background-color:white;
border-color:white;
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
#apDiv3 {
	position:absolute;
	width:332px;
	height:187px;
	z-index:1001;
	left: 331px;
	top: 164px;
}
#apDiv4 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:1;
	left: 380px;
	top: 192px;
}
.a1 {background-color:white;
border-color:white;
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
        <li><a href="index.jsp">Home</a></li>
        <li><a href="register.jsp">Registration</a></li>
        <li></li>
        <li><a href="#">Login</a>
          <ul>
            <li><a href="Userlogin.jsp">User</a></li>
            <li><a href="Adminlogin.jsp">Admin</a></li>
         </ul>
        </li>
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
    <h1 align="center">Registration</h1>
<p align="center">&nbsp;</p>
    <p align="center">&nbsp;</p>
    <div style="position:absolute; left:153px; top:113px; width: 737px; height: 383px;">
      <div id="content">
        <table width="100%" height="329" align="center" bgcolor="#FFFFFF" >
          <form action="reg_insert.jsp" method="get" name="form1" id="form1" onsubmit="return validation1()">
            <tr>
              <td width="453" height="309" align="left"><table width="103%" align="center" >
                <tr>
                  <td width="186" height="24"><font color="#FFFFFF"> <font color="#990033"><font color="#FFFFFF" size="2"><strong><font color="#000000">Name</font></strong></font></font></font></td>
                  <td width="271"><input type="text" name="n" size="18" class="a1" /></td>
                  </tr>
                <tr>
                  <td height="24"><font color="#FFFFFF" size="2"><strong><font color="#000000">Password</font></strong><em><strong><font color="#000000">:</font></strong></em></font></td>
                  <td width="271"><input type="password" name="p" size="18" class="a1" /></td>
                  </tr>
                <tr>
                  <td width="186" height="34"><font color="#FFFFFF"> <font color="#990033"><font color="#FFFFFF" size="2"><strong><font color="#000000">Conform 
                    password</font></strong></font></font></font></td>
                  <td width="271"><input type="password" name="cp" size="18" class="a1" /></td>
                  </tr>
                <tr>
                  <td height="24"><font color="#FFFFFF" size="2"><strong><font color="#000000">Email 
                    id:</font></strong></font></td>
                  <td width="271"><input type="text" name="em" size="18" class="a1" /></td>
                  </tr>
                <tr>
                  <td height="29"><font color="#FFFFFF" size="2"><strong><font color="#000000">Mobile 
                    no:</font></strong></font></td>
                  <td width="271"><input type="text" name="mn" size="18" class="a1" /></td>
                  </tr>
                <tr>
                  <td height="32"><font color="#FFFFFF" size="2"><strong><font color="#000000">Address:</font></strong></font></td>
                  <td width="271"><input type="text" name="ad" size="18" class="a1" /></td>
                  </tr>
                <tr>
                  <td><font color="#FFFFFF" size="2"><strong><font color="#000000">Time:</font></strong></font></td>
                  <td><font color="#0066CC"><font color="#660033" ><em>From</em></font><em><font color="#663333">:</font></em></font>
                    <select name="f" class="a1">
                      <option value="01:00:00"> 1</option>
                      <option value="02:00:00"> 2</option>
                      <option value="03:00:00"> 3</option>
                      <option value="04:00:00"> 4</option>
                      <option value="05:00:00"> 5</option>
                      <option value="06:00:00"> 6</option>
                      <option value="07:00:00"> 7</option>
                      <option value="08:00:00"> 8</option>
                      <option value="09:00:00"> 9</option>
                      <option value="10:00:00"> 10</option>
                      <option value="11:00:00"> 11</option>
                      <option value="12:00:00"> 12</option>
                      <option value="13:00:00"> 13</option>
                      <option value="14:00:00"> 14</option>
                      <option value="15:00:00"> 15</option>
                      <option value="16:00:00"> 16</option>
                      <option value="17:00:00"> 17</option>
                      <option value="18:00:00"> 18</option>
                      <option value="19:00:00"> 19</option>
                      <option value="20:00:00"> 20</option>
                      <option value="21:00:00"> 21</option>
                      <option value="22:00:00"> 22</option>
                      <option value="23:00:00"> 23</option>
                      <option value="24:00:00"> 24</option>
                      </select>
                    &nbsp; &nbsp;&nbsp;&nbsp;<font color="#993333">&nbsp;&nbsp;&nbsp;<font color="#0099CC">&nbsp;<font color="#660033" ><em>To:</em></font></font></font>
                    <select name="t" class="a1">
                      <option value="01:00:00"> 1</option>
                      <option value="02:00:00"> 2</option>
                      <option value="03:00:00"> 3</option>
                      <option value="04:00:00"> 4</option>
                      <option value="05:00:00"> 5</option>
                      <option value="06:00:00"> 6</option>
                      <option value="07:00:00"> 7</option>
                      <option value="08:00:00"> 8</option>
                      <option value="09:00:00"> 9</option>
                      <option value="10:00:00"> 10</option>
                      <option value="11:00:00"> 11</option>
                      <option value="12:00:00"> 12</option>
                      <option value="13:00:00"> 13</option>
                      <option value="14:00:00"> 14</option>
                      <option value="15:00:00"> 15</option>
                      <option value="16:00:00"> 16</option>
                      <option value="17:00:00"> 17</option>
                      <option value="18:00:00"> 18</option>
                      <option value="19:00:00"> 19</option>
                      <option value="20:00:00"> 20</option>
                      <option value="21:00:00"> 21</option>
                      <option value="22:00:00"> 22</option>
                      <option value="23:00:00"> 23</option>
                      <option value="24:00:00"> 24</option>
                    </select></td>
                  </tr>
                <tr>
                  <td height="31"><font color="#FFFFFF" size="2"><strong><font color="#000000">Security 
                    questions:</font></strong></font></td>
                  <td width="271"><em>
                    <select name="q" class="a1">
                      <option ><font size="1">------choose your question------ </font></option>
                      <option> When was the first time (year) you used Google?</option>
                      <option>What is your favorite movie?</option>
                      <option> What was your favorite place to visit as a child?</option>
                      </select>
                    </em></td>
                  </tr>
                <tr>
                  <td height="26"><font color="#FFFFFF" size="2"><strong><font color="#000000">Answer:</font></strong></font></td>
                  <td width="271"><input type="text" name="an" size="18" class="a1" /></td>
                  </tr>
                <tr>
                  <td height="21" colspan="2" align="center"><input type="submit" name="submit1" class="button1" value="register" /></td>
                  </tr>
              </table></td>
            </tr>
          </form>
        </table>
      </div>
    </div>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp; </p>
    <p>&nbsp; </p>
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
