<%-- 
    Document   : login.jsp
    Created on : Nov 20, 2018, 6:39:01 PM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="firstpagecss.css" rel="stylesheet" type="text/css">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="firstpagecss.css" rel="stylesheet">

<title>FashioNara - India's Latest trend</title>
</head>

<body>
	<div class="container-fluid mx-0 px-0">
			<div class="navbar mx-0">
		<div class="logo">Fashio<span style="font-family: sans-serif; font-style: italic; color: #89bdd3; font-weight: bold;">Nara..</span></div>
			
			
			<div class="navtab">
				<div class="col-8 d-flex justify-content-left align-items-center pt-3 ">
                                        
                                        <a class="btn btn-md btn-outline-secondary ml-2 clickbg" href="login.jsp">Login</a>
					<a class="btn btn-md btn-outline-secondary ml-2 clickbg" href="shop.jsp">Shop</a>
					<a class="btn btn-md btn-outline-secondary ml-2 clickbg disabled" href="aboutus.jsp">About Us</a>
					
          		</div>
			</div>
		</div>
            		
 <div class="bdim">
     <img src="img/bg2.jpg" >
         <div class="pict2">
             Thank you india by making us no. one fashion destination<br> by supporting us through your continuous love.<br>
             we promise, we will continue delivering<br> pocket friendly quality product 
             through millions of trusted sellers.<br> Login to start shopping.
         </div>
         
     
	
	<div class="cform">
				<form method="post" id="form_contact" action="controller">
					
									
						
						<input type="email"      class="form_control"   placeholder="Your email" name="email" required><br>
							
						<input type="password"     class="form_control"   placeholder="your password" name="pass" required><br>
						
						
						  

						<input type="submit"     class="form_control submit" value="Login" name="submit">
                                                <a href="register.jsp" class="form_control ml-2">Sign up here</a>
				</form>
			</div>
</div>
			
	</div>

</body>
</html>
		