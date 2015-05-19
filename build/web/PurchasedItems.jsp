<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="newcss.css">
    <title>Home</title>
</head>
<body>
        <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost/sampledb"
        user="root"  password=""/>
        <sql:query dataSource="${snapshot}" var="result">
            select * from PurchasedItems
        </sql:query>
        <!-- 
            Creates header with links to different pages
            also has option to login or logout based on
            whether there is an active user
        --> 
        <ul class="menu">
            <li><a href="index.jsp"><span>Home</span></a></li>
            <li><a href="ShoppingCart.jsp"><span>Shopping Cart</span></a></li>
            <%
            if(session.getAttribute("userid") == null)
            {%>
                <li>
                    <form method="post" action="login.jsp"> <span>
                        <input type="text" name="uname" class="inputs" placeholder="Username" /> 
                        <input type="password" name="pass" class="inputs" placeholder="Password" /></span>
                        <input type="hidden" value="index.jsp" name="redirect">
                        <input type="submit" value="Login" style="border-width: 1px; border-style: groove; border-color: #4095ff; font-family: Trebuchet MS; color: #ffffff; background-color: #4095ff;">
                    </form>
                </li>  
            <%}
            else 
            {%>
                <li><a href="logout.jsp"><span>Logout</span></a></li>
            <%}%>           
        </ul>

        <BR>
            <a href="index.jsp">
                <CENTER><img src="images/WomenShirt/logo.png"  align="middle"></CENTER>    
            </a>
        <BR>
            <table align="center">
                <tr>
                    <td>
                        <font face="Trebuchet MS, Helvetica, sans-serif" size="5"><a href="index.jsp">Home</a> </font>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        <font face="Trebuchet MS, Helvetica, sans-serif" size="5"><a href="WomenShirts.jsp">Women's Tops</a></font>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        <font face="Trebuchet MS, Helvetica, sans-serif" size="5"><a href="WomenPants.jsp">Women's Pants</a> </font>     
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                     <td>
                        <font face="Trebuchet MS, Helvetica, sans-serif" size="5"><a href="MenShirts.jsp">Men's Shirts</a></font>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        <font face="Trebuchet MS, Helvetica, sans-serif" size="5"><a href="MenPants.jsp">Men's Pants</a> </font>     
                       
                    </td>
                </tr>  
            </table>
        <hr width='100%'>
        
        <BR>
        <!-- Creates empty table for better spacing -->
    <table style="float: left; width:6%">
        <tr>
            <td></td>
        </tr>
    </table>
     <!--
            Creates Sidebar with clickable links
        -->
        <table style="float: left; width:20%">
                
            <tr>
                <td>
                    <font face="Trebuchet MS, Helvetica, sans-serif" size="4"><b><a href="index.jsp">Home</a></b> </font>
                    <hr width="90%" align="left">
                    <font face="Trebuchet MS, Helvetica, sans-serif" size="4"><a href="ShoppingCart.jsp">Shopping Cart</a></font> <BR>
                      
                </td>
            </tr>
            <tr>
                <td>
                    <font face="Trebuchet MS, Helvetica, sans-serif" size="4"><a href="reg.jsp">Registration</a> </font> <BR>
                    <BR>       
                </td>
            </tr>
            <tr>
                <td>
                    <font face="Trebuchet MS, Helvetica, sans-serif" size="4"><b>Women</b> </font>
                    <hr width="90%" align="left">
                    <font face="Trebuchet MS, Helvetica, sans-serif" size="4"><a href="WomenShirts.jsp">Shirts</a></font> <BR>        
                </td>
            </tr>  
            <tr>
                <td>
                    <font face="Trebuchet MS, Helvetica, sans-serif" size="4"><a href="WomenPants.jsp">Pants</a> </font> <BR>
                    <BR>      
                </td>
            </tr>  
            <tr>
                <td>
                    <font face="Trebuchet MS, Helvetica, sans-serif" size="4"><b>Men</b> </font>
                    <hr width="90%" align="left">
                    <font face="Trebuchet MS, Helvetica, sans-serif" size="4"><a href="MenShirts.jsp">Shirts</a></font> <BR>       
                </td>
            </tr> 
            <tr>
                <td>
                    <font face="Trebuchet MS, Helvetica, sans-serif" size="4"><a href="MenPants.jsp">Pants</a> </font> <BR>
                    <BR>     
                </td>
            </tr>
        </table>
       
        <table border="1" style="float: left; background-color:#FFFFFF;border-collapse:collapse;border:1px solid #C6C4C4;             
            color:#000000;width:55%" cellpadding="12" cellspacing="10" align="center" CLASS="boldtable">
            <tr align="left">
                
                <th>ID</th>
                <th>Username</th>
                <th>Product ID</th>
                <th>Price</th>
                
            </tr>
            <c:forEach var="row" items="${result.rows}">
            <tr>
               <td><c:out value="${row.id}"/></td>
               <td><c:out value="${row.username}"/></td>
               <td><c:out value="${row.productID}"/></td>
               <td><c:out value="${row.price}"/></td>
            </tr>
            </c:forEach>
        </table>
        <%session.getAttribute("userType");%>
    <div style="clear: both; bottom: 0px; width: 100%">
        <BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR>
        <ul class="menu" >
            <li><font color="white" face="Trebuchet MS, Helvetica, sans-serif">&nbsp;&nbsp;  All images used are from http://www.allposters.com/</font></li>
        </ul>
    </div> 
</body>
</html>
