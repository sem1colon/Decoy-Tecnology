<%@ page import="java.sql.*, javax.sql.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*;"%>
<%@ page import="java.sql.*,java.io.*"  %>
<%@ page import="java.util.*"%>
<%@page import="java.lang.*,java.text.SimpleDateFormat,java.util.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<%@page import ="org.apache.poi.hwpf.HWPFDocument;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
    <title>Untitled Document</title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    </head>
    <body>
    <%
    String fname=null;
    String type = "";
    String fid=(String)session.getAttribute("fid");	
    String fpath ="";
    String dfpath=null;			
    try
    {
     Connection con=null;
     Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
     con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;Database=fogcomputing;Server=SEM1COLON\\FOGSERVER","sa","v2ms1007");
     PreparedStatement ps=con.prepareStatement("select fname,fpath,dfpath from fileupload where fid ='"+fid+"' ");
     ResultSet rs=ps.executeQuery();
     if(rs.next())
       {
        fname=rs.getString("fname");
        dfpath=rs.getString("dfpath");
        session.setAttribute("fname",fname);
        session.setAttribute("dfpath",dfpath);
       }
     }
    catch(Exception e)
         {
          out.println(e.getMessage());
         }
            String file = "C:\\project\\fileupload\\"+fname;
            File docfile = new File(file);
            FileInputStream fin = new FileInputStream(docfile);
            HWPFDocument doc = new HWPFDocument(fin);

            doc.getRange().replaceText("a","m");
            doc.getRange().replaceText("b","n");
            doc.getRange().replaceText("c","o");
            doc.getRange().replaceText("d","p");
            doc.getRange().replaceText("e","q");
            doc.getRange().replaceText("f","r");
            doc.getRange().replaceText("g","s");
            doc.getRange().replaceText("h","t");
            doc.getRange().replaceText("i","u");
            doc.getRange().replaceText("j","v");
            doc.getRange().replaceText("k","w");
            doc.getRange().replaceText("l","x");
            doc.getRange().replaceText("m","y");
            doc.getRange().replaceText("n","z");

            String dest = "C:\\project\\decoys\\"+fname;
            File fdec =  new File(dest);
            FileOutputStream fout = new FileOutputStream(fdec);
            doc.write(fout);
            fout.close();
            fin.close();
    response.sendRedirect("count1.jsp");
    %>
    </body>
</html>