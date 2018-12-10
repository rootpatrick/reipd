


<%@page import="adminOp.Connect"%>
<%@page import="java.sql.SQLException"%>
<%
    Connect c=new Connect();
             String name=(String)session.getAttribute("name");
             if (name==null){
                 response.sendRedirect(c.domain()+"Admin/index.html");}
             
        %>
       
<%
// java code 

c.connection();
 int id=0;
  String Title="";
           String des="";
           String Photo="";
try 
{
   
  
    if (request.getParameter("id")!=null) 
        
    {
        id=Integer.parseInt(request.getParameter("id"));
       c.rs=c.Stmt.executeQuery("SELECT * FROM `Action`  where  id="+id+""); 
       if (c.rs.next())  {
        Title=c.rs.getString(2).replace("@","'");
        des = c.rs.getString(4).replace("@", "'");
        Photo=c.domain()+"images/portfolio/"+ c.rs.getString(5) ;
       }
    }
    
  
}
catch(SQLException e)
    {
        
    }

%>
<!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>REIPD - Reseau d'Initiative Pour la Paix et le Developpement | Reipd </title>
  <meta property="og:url"           content="<%=c.domain()%>Admin/article.jsp?id=<%=id%>" />
  <meta property="og:type"          content="Article" />
  <meta property="og:title"         content="<%= Title %>" />
  <meta property="og:description"   content="<%= des%>" />
  <meta property="og:image"         content="<%= Photo%>" />

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/font-awesome.css">
	<link rel="stylesheet" href="css/jquery.bxslider.css">
	<link href="css/overwrite.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="css/demo.css" />
	<link rel="stylesheet" type="text/css" href="css/set1.css" />
	<link href="css/style.css" rel="stylesheet">
    
  </head>
  <body>
	
	
	<!-- Load Facebook SDK for JavaScript -->
  <iframe src="https://www.facebook.com/plugins/share_button.php?href=http%3A%2F%2Flocalhost%3A8080%2Freipd%2FAdmin%2Farticle.jsp%3Fid%3D12&layout=button_count&size=small&mobile_iframe=true&appId=1527334310654102&width=68&height=20" width="68" height="20" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>

  <!-- Your share button code -->
  

	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<div class="page-header">
					<div class="blog">
                                            <%
                                                try 
                                                {
                                                     c.rs=c.Stmt.executeQuery("SELECT * FROM `Action`  where  id="+id+""); 
      
                                                    
                                               if (c.rs.next())  {
                                                   String title=c.rs.getString(2).replace("@","'");
                                                     String Des= c.rs.getString(4).replace("@", "'");
                                            %>
                                            <h5><strong><%= title %></strong></h5>
						<img src="<%=c.domain()%>images/portfolio/<%= c.rs.getString(5) %>" class="img-responsive"alt="" />			
					
						

						<p><%= Des %></p>

						
						
					</div>
                                                <%
                                                    }
                                                    }
                                                    catch(SQLException E)
                                                            {
                                                            
                                                            }
                                                %>
                                                 
				</div>	
				
			</div>
			
			
							
		</div>
                                                
  </div>
                                       
  
	</div>
                                
		
	
	
	
	
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-2.1.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.isotope.min.js"></script>
	<script src="js/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="js/fliplightbox.min.js"></script>
	<script src="js/functions.js"></script>
	<script type="text/javascript">$('.portfolio').flipLightBox()</script>
  </body>
</html>
