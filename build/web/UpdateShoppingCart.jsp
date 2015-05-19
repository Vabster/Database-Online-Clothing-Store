<jsp:useBean id="cart" class="query.ShoppingCart" scope="session"/>
<jsp:setProperty name="cart" property="*"/> 
<jsp:useBean id="womenShirt" class="query.ClothingQueries" scope="session"/>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript">
            window.location.href = "http://localhost:8080/DBMP5/UpdatedWomenShirts.jsp";
        </script>
        <title>Page Redirection</title>
    </head>
    <body>
         <%@ page import ="java.sql.*" %>
        <%
           String redirect = request.getParameter("redirect");
           if(session.getAttribute("userid") == null)
           {
               response.sendRedirect("reg.jsp");
           }
           else
           {%>
                <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                    url="jdbc:mysql://localhost/sampledb"
                    user="root"  password=""/>
                <sql:update dataSource="${snapshot}" var="result">
                    INSERT INTO ShoppingCart(username, imagePath, productName, price, productID) 
                    VALUES("<%=session.getAttribute("userid")%>", "<%= cart.getImagePath() %>", 
                    "<%= cart.getProductName() %>", <%= cart.getPrice() %>, <%= cart.getId() %>);
                </sql:update>
               
           <%
                response.sendRedirect(redirect);
           
           }%>
            
        
       

    </body>
</html>
