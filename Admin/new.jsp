<%@page import="java.lang.String"%>
<%@page import="adminOp.Crypt"%>
<%@page import="adminOp.Connect"%>
<%@page import="java.sql.SQLException"%>
<!DOCTYPE html>
<%
Connect d=new Connect();
             String name=(String)session.getAttribute("name");
             if (name==null){
                 response.sendRedirect(d.domain()+"Admin/index.html");}%>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>nouveau</title>
  
  
  
      <link rel="stylesheet" href="css/style.css">

  
</head>

<body>

  <div class="login">
  <div class="login-triangle"></div>
  
  <h2 class="login-header">Reipd Admin  </h2>
  <h5 class="login-header">Nouveau Administrateur  </h5>
   

  <%
      Connect con = new Connect();
      Crypt c= new Crypt();
con.GetDrive();
String jina="";
String email="";
String pass="";
  
   if( request.getParameter("Reg")!=null)
                {
                    jina=request.getParameter("jina");
                    email=request.getParameter("email");
                    pass=request.getParameter("pass");
                    if (pass.equals(request.getParameter("coda"))){
                  con.insert(jina, email, pass);
                  response.sendRedirect(con.domain()+"AdminAct.jsp");
                          
                          }
                    else out.print("error Password");
                }
            
  
  %>
  <form  action="new.jsp" method="post">
      
      <p><input type="text" name="jina" placeholder=" Entrez Noms"   required ></p>
      <p><input type="email" name="email" placeholder=" Entrez Addresse Mail "  required ></p>
      <p><input type="password"  name="pass" placeholder="Entrez Mot de Passe"  required></p>
    <p><input type="password"  name="coda"placeholder="Confimez  Mot de Passe"  ></p>
      
    <input  type="submit" name="Reg" value="Enregistrez"> 
  </form>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

  

</body>

</html>
