<%-- 
    Document   : action
    Created on : Dec 23, 2017, 10:35:48 PM
    Author     : boniface
--%>

<%@page import="adminOp.Connect"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.FileUploadException"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
Connect c=new Connect();
             String nam=(String)session.getAttribute("name");
             if (nam==null){
                 response.sendRedirect(c.domain()+"Admin/index.html");}%>
<%

    Connect con = new Connect();

con.GetDrive();
try
                    {
                        String desc="";
                        
                          String Title=null;
             String Country=null;
             String localisation=null;
             String Description=null;
             String Bref=null; 
             String Day="";
                                String ImageFile="";
                                String itemName = "";
                                boolean isMultipart = ServletFileUpload.isMultipartContent(request);
                                if (!isMultipart)
                            {
                            }
                            else
                            {
                            FileItemFactory factory = new DiskFileItemFactory();
                            ServletFileUpload upload = new ServletFileUpload(factory);
                            List items = null;
                            try
                            {
                            items = upload.parseRequest(request);
                            }
                            catch (FileUploadException e)
                            {
                            e.getMessage();
                            }

                            Iterator itr = items.iterator();
                            while (itr.hasNext())
                            {
                            FileItem item = (FileItem) itr.next();
                            if (item.isFormField())
                            {
                            String name = item.getFieldName();
                            String value = item.getString();
                            if(name.equals("photo"))
                            {
                            ImageFile=value;
                            }
                            else if(name.equals("Title"))
                            {
                                Title=value;
                            }
                            else if (name.equals("Country"))
                            {
                                    Country=value;
                            }
                            else if (name.equals("Description"))
                            {
                                Description=value;
                            }
                            else if (name.equals("localisation"))
                            {
                                localisation=value;
                            }
                            else if (name.equals("Bref"))
                            {
                                Bref=value;
                            }
                             else if (name.equals("Day"))
                            {
                               Day=value;
                            }
                            
                            }
                            
                            else
                            {
                            try
                            {
                            itemName = item.getName();
                            File savedFile = new File( con.uploadUrl()+"/images/portfolio/"+itemName);
                            item.write(savedFile);
                            }
                            catch (Exception e)
                            {
                            out.println("Error"+e.getMessage());
                            }
                            }
                            }
                            
                            try
                            {
                                String title=Title.replace("'", "@");
                                String description=Description.replace("'", "@");
                                String bref=Bref.replace("'","@");
                                  //con.connection();
                             String sql="insert into Action (Title,Country,localisation, Description, photo,Bref,day )values ('"+title+"','"+Country+"','"+localisation+"','"+description+"','"+itemName+"','"+bref+"','"+Day+"')";
                              //con.Stmt.executeUpdate(sql);
                               con.psmt=con.getcon().prepareStatement(sql);
                               int rs=con.psmt.executeUpdate();
                                response.sendRedirect(con.domain()+"AdminAct.jsp");
                            }
                            catch(Exception el)
                            {
                            out.println("Inserting error"+el.getMessage());
                            }
                           
                            }
                    }
                            catch (Exception e){
                            out.println(e.getMessage());
                    }
    

%>

<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Action</title>
  
  
  
      <link rel="stylesheet" href="css/style.css">

  
</head>

<body>

  <div class="login">
  <div class="login-triangle"></div>
  
  <h2 class="login-header">Reipd Admin  </h2>
  <h5 class="login-header">Nouvelle Action ou Activite  </h5>
   

  <form class="login-container"  action="action.jsp" method="post" enctype="multipart/form-data">
      
      <p><input type="text" placeholder="Entrez  la date ex. 20-12-2017" name="Day" required=""></p>
      <p><input type="text" placeholder=" Entrez le Titre de l'Action ou Activite" name="Title" required=""></p>
      <p><input type="file" name="photo" ></p>
      <p><input type="text"   id="bref"  placeholder=" Entrez Bref Description" name="Bref" required=""></p>
     
  
    <p><select name="Country">
            <option value=""> Selectionez Pays </option>
            <option value="RDC">RDC</option>
            <option value="Rwanda">Rwanda </option>
            <option value="Burundi">Burindi</option>
          </select> </p>
          <p><input type="text" placeholder="Entrez  Localisation " name="localisation" required=""></p>
          <p><textarea placeholder="Entrez la Description de l'evenement " name="Description" required=""></textarea></p>
    
          <p><input type="submit" name="action" value="Ajoutez"></p>
  </form>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
  <script>

  
</script>
</body>

</html>
