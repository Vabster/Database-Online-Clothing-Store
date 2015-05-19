<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="newcss.css">
        <title>Shopping Cart</title>
    </head>
    <body>
        <!-- 
            Connects to database through JDBC and Selects everything
            from ShoppingCart where the username equals the current user
        -->
        <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost/sampledb"
        user="root"  password=""/>
        <sql:query dataSource="${snapshot}" var="result">
            select * from ShoppingCart where username = "<%=session.getAttribute("userid")%>"
        </sql:query>
        
        <!-- 
            Function that allows user to remove items from the shopping cart
        -->
        <script type="text/javascript">            
            function deleteRecord(id)
            {
                url = "DeleteRecord";
                window.location.href = "http://localhost:8080/DBMP5/"+url+"?id="+id;
            }
            
        </script>
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
                        <input type="hidden" value="ShoppingCart.jsp" name="redirect">
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
            <CENTER><img src="images/WomenShirt/logo.png"  align="middle"></CENTER>    
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
        
        <!--
            Table of all the items user added to the cart with the option
            to remove them
        -->
        <table border="1" style="float: left; background-color:#FFFFFF;border-collapse:collapse;border:1px solid #C6C4C4;             
            color:#000000;width:55%" cellpadding="12" cellspacing="10" align="center">
            <c:set var="count" value="0" scope="page" />
            <c:forEach var="row" items="${result.rows}">
                <c:set var="number" value="${fn:length(result.rows)}" scope="page" />
                <c:if test="${count % 4 == 0}">
                <tr>
                </c:if>
                    <c:if test="${number > 3}">
                    <td align="center" valign="bottom" style="width:25%;"><i class="line"></i>
                        <img src="<c:out value="${row.imagePath}"/>" style="width:100%;" align="middle"> 
                        <BR>
                        <hr width="100%">
                        <font face="Trebuchet MS, Helvetica, sans-serif">
                        <b><c:out value="${row.productName}"/></b> <BR>
                        <font size="5" color="red"><b>$<c:out value="${row.price}"/></b></font>
                        </font><BR>
                        <input type ="submit" value ="Delete" name ="delete" class="button" onclick ="deleteRecord(${row.id});">
                    </td>               
                </c:if>
                <c:if test="${number <= 3}">
                    <td align="center" valign="bottom" style="width:25%;"><i class="line"></i>
                        <img src="<c:out value="${row.imagePath}"/>" style="width:175px; height:200px" align="middle"> 
                        <BR>
                        <hr width="100%">
                        <font face="Trebuchet MS, Helvetica, sans-serif">
                        <b><c:out value="${row.productName}"/></b> <BR>
                        <font size="5" color="red"><b>$<c:out value="${row.price}"/></b></font>
                        </font><BR>
                        <input type ="submit" value ="Delete" name ="delete" class="button" onclick ="deleteRecord(${row.id});">
                    </td>               
                </c:if>
            <c:set var="count" value="${count + 1}" scope="page" />
            <c:if test="${count % 4 == 0}">
                </tr> 
            </c:if>
            
        </c:forEach>
        <c:if test="${count % 4 != 0 || count == 1}">
                </tr> 
        </c:if>
            
        </tbody>
        
    </table>
    <c:if test="${count > 0}">        
    <br><br>
    
    <table style="clear: both" align="left">
        <tr>
                <td>
                    <form method="post" action="UpdateConfirmPurchase.jsp"> 
                        &nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp
                        &nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp
                        
                        <input type="submit" value="Confirm Purchase" class="button">
                    </form>
                </td>
            </tr>
    </table>
    </c:if>
    <!--
        Creates Footer
    -->
    <div style="clear: both; bottom: 0px; width: 100%">
        <BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR>
        <ul class="menu" >
            <li><font color="white" face="Trebuchet MS, Helvetica, sans-serif">&nbsp;&nbsp;  All images used are from http://www.allposters.com/</font></li>
        </ul>
    </div>   
</body>
</html>
