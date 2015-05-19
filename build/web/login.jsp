<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout Page</title>
    </head>
    <body>       
        <%@ page import ="java.sql.*" %>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sampledb","root", "");
            Statement sqlStatement = conn.createStatement();
            ResultSet results;
            String username = request.getParameter("uname");    
            String password = request.getParameter("pass");
            String redirect = request.getParameter("redirect");
            results = sqlStatement.executeQuery("SELECT * FROM users WHERE username ='" + username + "' AND password ='" + password + "'");
            if (results.next()) 
            {
                
               ResultSet rs = sqlStatement.executeQuery("SELECT email FROM users WHERE username ='" + username + "' AND password ='" + password + "'");
               Statement state = conn.createStatement();
               ResultSet rs2 = state.executeQuery("SELECT userType FROM users WHERE username ='" + username + "' AND password ='" + password + "'");
               String email = null;
               String userType = null;
                while (rs.next()) 
                {
                    email = rs.getString(1);
                }
                while (rs2.next()) 
                {
                    userType = rs2.getString(1);
                }
                
                
                session.setAttribute("userid", username);
                session.setAttribute("email", email);
                if(userType.equals("Employee"))
                    session.setAttribute("userType", "Employee");
                else
                   session.setAttribute("userType", "Customer"); 
                response.sendRedirect(redirect);
            } 
            else 
            {
                session.setAttribute("homeDirect", "invalid");
                response.sendRedirect("index.jsp");
            }
        %>
    </body>
</html>