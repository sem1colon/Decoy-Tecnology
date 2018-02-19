<%-- 
    Document   : upload
    Created on : Apr 3, 2014, 10:31:35 AM
    Author     : Varun N R
--%>

<%@ page import= "java.util.Calendar"%>
<%@ page import="java.sql.*,java.io.*"  %>
<%@ page import="java.util.*,java.text.ParseException.*"%>
<%@ page import="java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*" %>
<%@ page import="java.util.Date,java.text.ParseException"%>
<%
String saveFile="";
int fids=0;
//to get the content type information from JSP Request Header
String contentType = request.getContentType();
/*
 here we are checking the content type is not equal to Null and
 as well as the passed data from mulitpart/form-data is greater than or
 equal to 0
*/
if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) 
{
 DataInputStream in = new DataInputStream(request.getInputStream());

//we are taking the length of Content type data
 int formDataLength = request.getContentLength();
 byte dataBytes[] = new byte[formDataLength];
 int byteRead = 0;
 int totalBytesRead = 0;

//this loop converting the uploaded file into byte code
 while(totalBytesRead < formDataLength) 
      {
       byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
       totalBytesRead += byteRead;
      }
 String file = new String(dataBytes);
//for saving the file name
 saveFile = file.substring(file.indexOf("filename=\"") + 10);
 saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
 saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
 int lastIndex = contentType.lastIndexOf("=");
 String boundary = contentType.substring(lastIndex + 1,contentType.length());
 int pos;
//extracting the index of file
 pos = file.indexOf("filename=\"");
 pos = file.indexOf("\n", pos) + 1;
 pos = file.indexOf("\n", pos) + 1;
 pos = file.indexOf("\n", pos) + 1;
 int boundaryLocation = file.indexOf(boundary, pos) - 4;
 int startPos = ((file.substring(0, pos)).getBytes()).length;
 int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
// creating a new file with the same name and writing the content in new file
 saveFile="C:/project/fileupload/"+saveFile;
 File ff = new File(saveFile);
 FileOutputStream fileOut = new FileOutputStream(ff);
 fileOut.write(dataBytes, startPos, (endPos - startPos));
 fileOut.flush();
 fileOut.close();
%>
<%
ResultSet rs = null;
Statement st = null;
Connection con=null;
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;Database=fogcomputing;Server=SEM1COLON\\FOGSERVER","sa","v2ms1007");
st=con.createStatement();
rs=st.executeQuery("select max(fid) from fileupload");
if(rs.next())
  {
   int id=rs.getInt(1);
   if(id==0)
     {
      fids=1;
     }
     else
       {
        fids=id+1;
       }
     }   
%>
<%

PreparedStatement psmnt = null;
File f = new File(saveFile);
FileInputStream fis = new FileInputStream(f);

java.util.Date now = new java.util.Date();
String DATE_FORMAT1 = "yyyy-MM-dd";
SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);

double size=ff.length();
double  size1=size/1024;
double size2=Math.round(size1*100.0)/100.0;
String size3=Double.toString(size2);
session.setAttribute("filesize",size3);

String un=(String)session.getAttribute("un");
String ds = sdf1.format(now);
String fn=f.getName();
String fpath=f.getAbsolutePath();
String dfpath="C:\\project\\decoys\\"+fn;
String u="0";
String a="0";

try 
{
 
 File strFile = new File(dfpath);
 //File appending
 Writer objWriter = new BufferedWriter(new FileWriter(strFile));
 //objWriter.write("This is a test\n");
 objWriter.flush();
 objWriter.close();
 
 Connection con1=null;
 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
 con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;Database=fogcomputing;Server=SEM1COLON\\FOGSERVER","sa","v2ms1007");
 psmnt = con.prepareStatement("insert into fileupload values(?,?,?,?,?,?,?,?,?)");
 psmnt.setString(1,un);
 psmnt.setString(2,fn);
 psmnt.setInt(3,fids);
 //psmnt.setBinaryStream(4, (InputStream)fis, (int)(f.length()));
 psmnt.setString(4,fpath);
 psmnt.setString(5,dfpath);
 psmnt.setString(6,size3);
 psmnt.setString(7,ds);
 psmnt.setString(8,u);
 psmnt.setString(9,a);
 int s = psmnt.executeUpdate();
 if(s>0) 
 {
  System.out.println("Uploaded successfully !");
  response.sendRedirect("upload_success.jsp");
 }
 else
 {
  System.out.println("unsucessfull to upload file.");
 }
}
catch(Exception e)
      {
       e.printStackTrace();
      }
}
%>
