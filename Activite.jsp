
<%@page import="java.io.UnsupportedEncodingException"%>
<%@page import="javax.print.attribute.standard.MediaSize.ISO"%>
<%@page import="java.sql.SQLException"%>
<%@page import="adminOp.Connect"%>
<%@page pageEncoding="UTF-8" language="java" import="java.sql.*"%>
<%@page contentType="text/html;charset=UTF-8"%>
<%!

private String convert(String stringForconversion) {
		try {
			String stringToConvert = stringForconversion;
			byte[] convertStringToByte = stringToConvert.getBytes("ISO-8859-1");
			return new String(convertStringToByte, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			//out.println("convertng FAILED: " + stringForconversion + "<br/>");
			return stringForconversion;
		}
	}
%>


<!DOCTYPE html>


<%
// java code 

Connect c=new Connect();
c.connection();

try 
{
    if (request.getParameter("log")!=null) 
    {
        if (request.getParameter("country")!=null && !request.getParameter("country").equals("tout"))
        c.rs=c.Stmt.executeQuery("SELECT * FROM `Action` where Country= '"+request.getParameter("country")+"' ORDER BY id DESC LIMIT 12");
        else if(request.getParameter("country")!=null && request.getParameter("country").equals(""))
                c.rs=c.Stmt.executeQuery("SELECT * FROM `Action`  ORDER BY id DESC limit 12");
        else  c.rs=c.Stmt.executeQuery("SELECT * FROM `Action` ORDER BY id DESC limit 12");
        
    }
    else  c.rs=c.Stmt.executeQuery("SELECT * FROM `Action`  ORDER BY id DESC limit 12");
}
catch(SQLException e)
    {
        
    }

%>
<html >
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>REIPD - Reseau d'Initiative Pour la Paix et le Developpement | Reipd</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/animate.min.css" rel="stylesheet"> 
  <link href="css/font-awesome.min.css" rel="stylesheet">
  <link href="css/lightbox.css" rel="stylesheet">
  <link href="css/main.css" rel="stylesheet">
  <link id="css-preset" href="css/presets/preset1.css" rel="stylesheet">
  <link href="css/responsive.css" rel="stylesheet">

  <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
  <![endif]-->
  
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
  <link rel="shortcut icon" href="images/logo1.jpg">
</head><!--/head-->

<!--style modals-->
  <style>
    .example-modal .modal {
      position: relative;
      top: auto;
      bottom: auto;
      right: auto;
      left: auto;
      display: block;
      z-index: 1;
    }

    .example-modal .modal {
      background: transparent !important;
    }
  </style>

<body>
<div class="main-nav">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.html">
            <h1 id="ok"><strong>Reipd</strong>   <img class="img-circle img-bordered-sm" src="images/logo1.jpg" alt="logo" style="width: 50px;"></h1>
          </a>                    
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <form method="post">
                <select name="country">
                        <option value="tout" selected="selected">Tous les pays </option>
                        <option value="BURUNDI">BURUNDI</option>
                        <option value="RDC">RDC</option>
                        <option value="RWANDA">RWANDA</option>
                    </select>
                <input type="submit" name="log" value="Trier"  style="border-radius: 10px;">
                   
              
              </button>
                </form>
                </ul>
          <ul class="nav navbar-nav navbar-right">                 
            <li><a href="index.jsp ">Accueil</a></li>
            <li class="scroll"><a href="#contact">Contact</a></li>
            
          </ul>
        </div>
      </div>
    </div><!--/#main-nav-->
  <!--.preloader-->
  <div class="preloader"> <i class="fa fa-circle-o-notch fa-spin"></i></div>
  <!--/.preloader-->
  
  <!--DOMAINE D'INTERVENTION-->
    <section id="services">
    <div class="container">
      <div class="heading wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
        <div class="row">
          <div class="text-center col-sm-8 col-sm-offset-2">
            <h2>NOS ACTIVITES RECENTES & ACTIONS</h2>
          </div>
        </div> 
      </div>
        
      <div class="text-center our-services">
        <div class="row">
            <%
            try 
            {
                
                  
                while (c.rs.next())  {
                    String title=c.rs.getString(2).replace("@","'");
                    String bref=c.rs.getString(6).replace("@","'");
             %>
          <div class="col-lg-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
            <div class="folio-image">
                <h3><%=title %></h3>
                <img class="img-responsive" src="images/portfolio/<%= c.rs.getString(5) %>" alt="">
            </div>
            <div class="">
                <p><%= bref%> </p>
                <h3><i class="fa fa-map-marker"></i>  <%= (c.rs.getString(8)) %>  <%= (c.rs.getString(3))%></br>
              <i class="fa fa-calendar"></i>  <%= (c.rs.getString(7)) %></h3>
            </div>
            <button type="button" class="btn btn-primary" style="border-radius: 10px;" data-toggle="modal" data-target="#mod<%= c.rs.getString(1)%>al"">
                En Savoir Plus
              </button>
          </div>
          <%
          }
          }
    catch(SQLException e )
        {

        }
finally 
{
c.getcon().close();
}

          %>
         
           </div>
      </div>
    </div>
  </section><!--/#Activite recente-->

  <!--modal activite recente-->

        <!-- /.modal -->
 <%
            try 
            {
              
    if (request.getParameter("log")!=null) 
    {
        if (request.getParameter("country")!=null && !request.getParameter("country").equals("tout"))
        c.rs=c.Stmt.executeQuery("SELECT * FROM `Action` where Country= '"+request.getParameter("country")+"' ORDER BY id DESC LIMIT 12");
        else if(request.getParameter("country")!=null && request.getParameter("country").equals(""))
                c.rs=c.Stmt.executeQuery("SELECT * FROM `Action`  ORDER BY id DESC limit 12");
        else  c.rs=c.Stmt.executeQuery("SELECT * FROM `Action` ORDER BY id DESC limit 12");
        
    }
    else  c.rs=c.Stmt.executeQuery("SELECT * FROM `Action`  ORDER BY id DESC limit 12");
                while (c.rs.next())  {
                     String title=c.rs.getString(2).replace("@","'");
                  String Des= c.rs.getString(4).replace("@", "'");
             %>

             <div class="modal fade" id="mod<%=c.rs.getString(1)%>al">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title"> <strong><%=title%> </strong></h4>
              </div>
              <div class="modal-body">
                  <h3><%=Des %>  </div>
           
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
             <%
          }
          }
    catch(SQLException e )
{

}
finally 
{
c.getcon().close();
}

          %>
        <!-- /.modal -->


       
        <!-- /.modal -->

       
        <!-- /.modal -->

       
        <!-- /.modal -->




  <section id="contact">
    <div id="contact-us" class="parallax">
      <div class="container">
        <div class="row">
          <div class="heading text-center col-sm-8 col-sm-offset-2 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
            <h2>CONTACT-NOUS</h2>
            <h3>Pour nous contacte</h3>
          </div>
        </div>
         <div class="blog-posts">
        <div class="row">
          <div class="col-sm-4 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="400ms">
            
            <h3>Office 1</h3>
            <ul class="address">
                <li><i class="fa fa-map-marker"></i><span>Address:</span> 15, Corniche, Muhumba, Bukavu <strong>RDC</strong></li>
                <li><i class="fa fa-phone"></i><span>Phone:</span> +243 819 704 268</li>
                <li><i class="fa fa-phone"></i><span>Phone:</span> +243 977 400 096</li>
                <li><i class="fa fa-envelope"></i><span>Email:</span> <a href="mailto:info@reipd.org"> info@reipd.org</a></li>
                <li><i class="fa fa-envelope"></i><span>Email:</span> <a href="mailto:bamujohnny@gmail.com"> bamujohnny@gmail.com</a></li>
            </ul>
          </div>

          <div class="col-sm-4 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="800ms">
              <h3>Office 2</h3>
              <ul class="address">
                 <li><i class="fa fa-map-marker"></i><span>Address:</span> 54, Nyabugogo, Kigali City <strong>RWANDA</strong></li>
                <li><i class="fa fa-phone"></i><span>Phone:</span> +250 785 801 869</li>
                <li><i class="fa fa-phone"></i><span>Phone:</span> +250 785 801 869</li>
                <li><i class="fa fa-envelope"></i><span>Email:</span> <a href="mailto:info@reipd.org"> info@reipd.org</a></li> 
              </ul>
          </div> 

             <div class="col-sm-4 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="800ms">
                 <h3>Office 3</h3>
                 <ul class="address">
                    <li><i class="fa fa-map-marker"></i><span>Address:</span> Bujumbura, Burundi <strong>BURUNDI</strong></li>
                    <li><i class="fa fa-phone"></i><span>Phone:</span> +257 755 361 84</li>
                    <li><i class="fa fa-phone"></i><span>Phone:</span> +257 759 891 14</li>
                    <li><i class="fa fa-envelope"></i><span>Email:</span> <a href="mailto:nmusole@reipd.org"> nmusole@reipd.org</a></li>
                 </ul>
          </div>                    
        </div>               
      </div>  
      </div>
    </div>        
  </section><!--/#contact-->
  <footer id="footer">
    <div class="footer-top wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
      <div class="container text-center">
        <div class="footer-logo">
          <h1><img class="img-circle img-bordered-sm" src="images/logo1.jpg" alt="logo" style="width: 100px;"></h1>
        </div>
        <div class="social-icons">
          <ul>
            <li><a class="envelope" href="#"><i class="fa fa-envelope"></i></a></li>
            <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li> 
            <li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
            <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
            <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
            <li><a class="tumblr" href="#"><i class="fa fa-tumblr-square"></i></a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="footer-bottom">
      <div class="container">
        <div class="row">
          <div class="col-sm-6">
            <p>&copy; 2017 <strong>REIPED</strong> Design.</p>
          </div>
        </div>
      </div>
    </div>
  </footer>

  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
  <script type="text/javascript" src="js/jquery.inview.min.js"></script>
  <script type="text/javascript" src="js/wow.min.js"></script>
  <script type="text/javascript" src="js/mousescroll.js"></script>
  <script type="text/javascript" src="js/smoothscroll.js"></script>
  <script type="text/javascript" src="js/jquery.countTo.js"></script>
  <script type="text/javascript" src="js/lightbox.min.js"></script>
  <script type="text/javascript" src="js/main.js"></script>

</body>
</html>