<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    String state = request.getParameter("state");
    String city = request.getParameter("city");
    String address = request.getParameter("address");
    String userType = "Customer";
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sampledb", "root", "");
    Statement st = con.createStatement();
    Statement st2 = con.createStatement();
    String SQL = "Select * from users where username = '" + user + "'"; 
    ResultSet rs = st2.executeQuery(SQL);
    
    
    // If username already exists go back to registration page
    if(rs.next())
    {
        session.setAttribute("regDirect", "exists");
        response.sendRedirect("reg.jsp");
    }
    else
    {
        // Checks for other error, goes to welcome
        int i = st.executeUpdate("insert into users(firstName, lastName, email, username, password, userType, state, city, address, regdate) values ('" + fname + "','" + lname + "','" + email + "','" + user + "','" + pwd + "','" + userType + "','" + state  + "','" + city  + "','" + address  + "', CURDATE())");
        if (i > 0) 
        {
            session.setAttribute("homeDirect", "newAccount");
            response.sendRedirect("index.jsp");
            
        } 
        else 
        {
            response.sendRedirect("index.jsp");
        }
    }
%>