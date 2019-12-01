<%-- 
    Document   : login.jsp
    Created on : Nov 20, 2018, 6:39:01 PM
    Author     : Anil--%>

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
<link href="bookstorecss.css" rel="stylesheet" type="text/css">

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
            		
 <div class="containpic1">
     <%@page  %>
     
	<div class="containerFlex">
			<?php
			
		
	$con = mysql_connect("localhost","root","");
	if(!$con)
	{
		die("server not found =".$mysql_error());
	}
	mysql_select_db("swapyourbooks",$con);
	$result=mysql_query("select * from bookdetails");
	while($row=mysql_fetch_array($result))
	{
		?>
			
					<div>
						<div class="Bookimg"> <img src='img/book3.jpg' height="200px" width="300px"></div>
						<div class="Booktitle"><?php echo $row["BookTitle"]?></div>
						<div class="Bookwriter"><?php echo "Written By : ".$row["BookWriter"]?></div>
						<div class="price">
						
							<div style="float: left; width: 50%; border-right: 2px solid #ffc000;">Original Price</div>
							<div>Our Price</div>
						</div>
						<div class="price">
                                                    <img src="img/bg2.jpg" >
							<div style="float: left; width: 50%; border-right: 2px solid #ffc000;"><del><?php echo $row["OriginalPrice"]." INR"?></del></div>
							<div><?php echo $row["OurPrice"]." INR"?></div>
						</div>
						<div class="kartid"> Add To Cart</div>
					</div>
					
					
					
				
			<?php
	}
		?>
		</div>		


	
</div>
			
	</div>

</body>
</html>
		