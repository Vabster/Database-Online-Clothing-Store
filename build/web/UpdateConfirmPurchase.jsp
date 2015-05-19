<jsp:useBean id="cart" class="query.ShoppingCart" scope="session"/>
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
                <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                    url="jdbc:mysql://localhost/sampledb"
                    user="root"  password=""/>
                <sql:update dataSource="${snapshot}" var="result">
                    INSERT INTO PurchasedItems ( 
                    username, productID, price ) 
                    SELECT username, productID, price
                    FROM ShoppingCart WHERE username = "<%=session.getAttribute("userid")%>";
                </sql:update>
                <sql:update dataSource="${snapshot}" var="result">
                    Delete from shoppingcart where username = "<%=session.getAttribute("userid")%>";
                </sql:update>
               <%
                    session.setAttribute("homeDirect", "confirm");
                    response.sendRedirect("index.jsp");          
                %>
            
        
       

    </body>
</html>
