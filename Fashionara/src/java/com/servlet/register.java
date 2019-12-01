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
@WebServlet(name = "register", urlPatterns = {"/register"})
public class register extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        out.println("going inside try 1");
        try (PrintWriter out = response.getWriter()) {
            String _email = request.getParameter("email");
            String _pass = request.getParameter("pass");
            String _name = request.getParameter("name");
           out.println(" from 1 to going inside try 2");
           try{
                Class.forName("com.mysql.jdbc.Driver").newInstance();
               Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashionara","root","root");
               out.println("connection created");
               String Query = "insert into userdetail values(?,?,?)";
               PreparedStatement p = con.prepareStatement(Query);
               p.setString(1,_email);
               p.setString(2,_pass);
               p.setString(3,_name);
               //out.println("query is going to validated");
               p.execute();
               con.close();
               //out.println("validation complete");
               
                   //out.println("diverting to shop");
                   response.sendRedirect("login.jsp");
               
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
