<%-- 
    Document   : login.jsp
    Created on : Nov 20, 2018, 6:39:01 PM
    Author     : Anil
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="loginpage.css" rel="stylesheet" type="text/css">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link href="loginpage.css" rel="stylesheet">

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

                <div class="mx-10 pict2" style="background: white">
                    <%

                        String userName = null;
                        Cookie[] cookies = request.getCookies();
                        if (cookies != null) {
                            for (Cookie cookie : cookies) {
                                if (cookie.getName().equals("email")) {
                                    userName = cookie.getValue();
                                }
                            }
                        }

                        if (userName == null) {
                            response.sendRedirect("login.jsp");
                        }

                        String id = request.getParameter("id");
                        String disc = request.getParameter("disc");
                        String price = request.getParameter("price");
                        String seller = request.getParameter("seller");
                    %>
                    <div class="float-left mr-3">
                        <img src="img/bg<% out.println(id); %>.jpg" style="height: 150px; width: auto;">
                    </div>
                    <div class="float-right" style="color: orange">
                        <p>you have successfully placed the order</p>
                        <p>your product detail is as follows</p>
                        <% out.println("product name " + disc); %>
                        <% out.println("product price " + price); %>
                        <% out.println("sold by " + seller);%>
                        <p>Thank you for shopping with us</p>


                    </div>

                </div>

            </div>

        </div>

    </body>
    <div class="footer" style="color: red">
    <center class="mt-5"><p>Proudly designed and developed by Avinash and dipesh.</p></center>
</div>
</html>
