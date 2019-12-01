/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;



/**
 *
 * @author Avinash
 */
@WebServlet(name = "controller", urlPatterns = {"/controller"})
public class controller extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        //out.println("going inside try 1");
        try (PrintWriter out = response.getWriter()) {
            String _email = request.getParameter("email");
            String _pass = request.getParameter("pass");
           // out.println(" from 1 to going inside try 2");
           try{
                Class.forName("com.mysql.jdbc.Driver").newInstance();
               Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashionara","groot","");
               //out.println("connection created");
               String Query = "select * from userdetail where Email = ? and Password=?";
               PreparedStatement p = con.prepareStatement(Query);
               p.setString(1,_email);
               p.setString(2,_pass);
               //out.println("query is going to validated");
               ResultSet rs = p.executeQuery();
               //out.println("validation complete");
               if(rs.next()){
                   //out.println("diverting to shop");
                   response.sendRedirect("shop.jsp");
               }
               else{
                   out.println("Please enter correct detail");
               }
           }
           
           catch(IOException | ClassNotFoundException | IllegalAccessException | InstantiationException | SQLException e){
               out.println("Exception : " +e.getMessage());
               //out.println("no valid exception found");
           }
        }
    }

    
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        out.println("inside do post");
        processRequest(request, response);
    }

   
}
