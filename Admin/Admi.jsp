<%-- 
    Document   : Admi
    Created on : Dec 23, 2017, 11:52:22 PM
    Author     : boniface
--%>


<%@page import="java.sql.SQLException"%>
<%@page import="adminOp.Connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String bb="";
 try 
 {
     
    Connect con = new Connect();
    con.connection();
    con.rs=con.Stmt.executeQuery("SELECT * FROM `Action` LIMIT 5");
    if (con.rs.next())
    {
       bb=con.rs.getString(5);
    }

 }catch(SQLException e )
    {
        
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!<%= bb %></h1>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Facebbok share</title>
</head>
<body>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js" type="text/javascript"></script>
<script>
$( document ).ready(function() {
$( "#btn" ).click(function() {
			var val=$("#name").val();
           FB.login(function(response)
           {
               if (response.authResponse)
               {
                   // Post message to your wall
                   var opts = {
                       message : val,
                               name: 'Kaghusa ',
                               picture: 'http://javafreakers.com/wp-content/uploads/2014/04/SDJINFO.png',                               
                               link: 'http://javafreakers.com/',
                               description: 'javafreaker for java tutorial ',  
                               redirect_uri: 'http://localhost:8080',
                   };
       
                   FB.api('/feed', 'post', opts, function(response)
                   {
                       if (!response || response.error)
                       {
                           //alert('Posting error occured');
                       }
                       else
                       {
                         //  alert('Success - Post ID: ' + response.id);
                       }
                       if(response){
                    	   //do some task when response come
                       }
                      // var element = document.getElementById('fb-root');
                  		//FB.Canvas.showFlashElement(element);
                  		//FB.XFBML.parse();
                   });
               }
               else
               {
                   alert('Not logged in');
            	   
               }
           }, { scope : 'publish_stream' });
      });
});
//}							
										 </script>	
										 <div id="fb-root"></div>	
										 <script>
	  window.fbAsyncInit = function() {
		FB.init({
		  appId  : '1527334310654102',
		  status : true, // check login status
		  cookie : true, // enable cookies to allow the server to access the session
		  xfbml  : true  // parse XFBML
		});
	  };
	
	  (function() {
		var e = document.createElement('script');
		e.src = document.location.protocol + '//connect.facebook.net/en_US/all.js';
		e.async = true;
		document.getElementById('fb-root').appendChild(e);
	  }());
	</script>				
 
 
<form>
<input name="name" value="" id="name"/>
<input type="button" id="btn" value="click"  />
</form>
    
    
  </body>
</html>
