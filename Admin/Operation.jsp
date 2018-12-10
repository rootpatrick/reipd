<%-- 
    Document   : Operation
    Created on : Dec 23, 2017, 5:02:49 PM
    Author     : boniface
--%>

<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.FileUploadException"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="java.util.Iterator"%>
<%@page import="sun.security.util.Password"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.security.NoSuchAlgorithmException"%>
<%@page import="java.math.BigInteger"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="adminOp.Connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!

    public String Encrypt(String input)
        {
            String Md5=null;
            if (null==input) return null ;
            try 
            {
                MessageDigest digest= MessageDigest.getInstance("MD5");
                digest.update(input.getBytes(),0,input.length());
                 Md5= new BigInteger (1,digest.digest()).toString(16);
            }
            catch (NoSuchAlgorithmException e)
            {
                
            }
            
          return Md5;          
        }
    

%>
<% 
Connect con = new Connect();

con.GetDrive();;
// login 
              if (request.getParameter("log")!=null)
                {
                    String User=null;
String Username=null;
String Password=null;
                    
                     
                        Username=request.getParameter("email");
                        Password=Encrypt(request.getParameter("pass"));
                        
                        try
                        {
                            
                      String Sql="Select name from user where email='"+Username+"' and pass ='"+Password+"'";
                        con.psmt=con.getcon().prepareStatement(Sql);
                        con.rs=con.psmt.executeQuery();
                        if ( con.rs.next())
                        {
                             session.setAttribute("name", con.rs.getString(1));
                            response.sendRedirect(con.domain()+"AdminAct.jsp");
                        }
                         else
                            response.sendRedirect("index.html");
                    {
                       
                    }  
                        }
                        catch(SQLException e)
                        {
                            out.println("<p>"+e.getMessage()+"</p>");
                        }
                       
                    }
                   
                
              
              
            
             
             

  


%>
