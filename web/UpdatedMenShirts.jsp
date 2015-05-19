<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<jsp:useBean id="menShirt" class="query.ClothingQueries" scope="session"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="newcss.css">
        <title>Women Shirts</title>
    </head>
    <body>
        
        <!-- 
            Connects to database through JDBC and Selects
            from the Clothing table based on user set
            parameters
        -->
        <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost/sampledb"
        user="root"  password=""/>
        <c:set var="sqlCheck" value="<%=menShirt.getColor()%>" scope="page" />
        <c:choose>
        <c:when test="${sqlCheck == 0}">
           <sql:query dataSource="${snapshot}" var="result">
            select * from Clothing where ClothingType = "MS" AND
            price <= <%= menShirt.getMaxPrice() %> AND price >= <%= menShirt.getMinPrice() %>            
            </sql:query>
        </c:when>
        <c:otherwise>
            <sql:query dataSource="${snapshot}" var="result">
            select * from Clothing where ClothingType = "MS" AND
            price <= <%= menShirt.getMaxPrice() %> AND price >= <%= menShirt.getMinPrice() %>
            AND color = "<%= menShirt.getColor() %>"            
            </sql:query>
        </c:otherwise>
        </c:choose>

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
                        <input type="hidden" value="UpdatedMenShirts.jsp" name="redirect">
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
            
    <!-- 
        Provides option for user to manipulate what type
        of shirts they want to be shown. Based on price
        and color
    -->    
    <form METHOD=POST ACTION="UpdateMenShirts.jsp">
        <table align="center">
        
        <tr>
            <td>
                <font face="Trebuchet MS, Helvetica, sans-serif">
                    Min Price:
                </font>
                <select name="minPrice" style="width: 65px; height: 20px; font-size: 12px; background-color: #ffffff; color: #4095ff; font-family: Trebuchet MS;">
                    <c:set var="min" value="<%=menShirt.getMinPrice()%>" scope="page" />
                    <c:choose>
                        <c:when test="${min == 0}">
                           <option value="0" selected>$0.00</option> 
                        </c:when>
                        <c:otherwise>
                            <option value="0">$0.00</option>
                        </c:otherwise>
                    </c:choose>
                    <c:choose>
                        <c:when test="${min == 5}">
                           <option value="5" selected>$5.00</option> 
                        </c:when>
                        <c:otherwise>
                            <option value="5">$5.00</option>
                        </c:otherwise>
                    </c:choose>
                    <c:choose>
                        <c:when test="${min == 10}">
                           <option value="10" selected>$10.00</option> 
                        </c:when>
                        <c:otherwise>
                            <option value="10">$10.00</option>
                        </c:otherwise>
                    </c:choose>     
                    <c:choose>
                        <c:when test="${min == 15}">
                           <option value="15" selected>$15.00</option> 
                        </c:when>
                        <c:otherwise>
                            <option value="15">$15.00</option>
                        </c:otherwise>
                    </c:choose>      
                    <c:choose>
                        <c:when test="${min == 20}">
                           <option value="20" selected>$20.00</option> 
                        </c:when>
                        <c:otherwise>
                            <option value="20">$20.00</option>
                        </c:otherwise>
                    </c:choose>      
                    <c:choose>
                        <c:when test="${min == 25}">
                           <option value="25" selected>$25.00</option> 
                        </c:when>
                        <c:otherwise>
                            <option value="25">$25.00</option>
                        </c:otherwise>
                    </c:choose>   
                    <c:choose>
                        <c:when test="${min == 30}">
                           <option value="30" selected>$30.00</option> 
                        </c:when>
                        <c:otherwise>
                            <option value="30">$30.00</option>
                        </c:otherwise>
                    </c:choose>        
                    <c:choose>
                        <c:when test="${min == 35}">
                           <option value="35" selected>$35.00</option> 
                        </c:when>
                        <c:otherwise>
                            <option value="35">$35.00</option>
                        </c:otherwise>
                    </c:choose>
                    <c:choose>
                        <c:when test="${min == 40}">
                           <option value="40" selected>$40.00</option> 
                        </c:when>
                        <c:otherwise>
                            <option value="40">$40.00</option>
                        </c:otherwise>
                    </c:choose>
                    <c:choose>
                        <c:when test="${min == 45}">
                           <option value="45" selected>$45.00</option> 
                        </c:when>
                        <c:otherwise>
                            <option value="45">$45.00</option>
                        </c:otherwise>
                    </c:choose>
                    <c:choose>
                        <c:when test="${min == 50}">
                           <option value="50" selected>$50.00</option> 
                        </c:when>
                        <c:otherwise>
                            <option value="50">$50.00</option>
                        </c:otherwise>
                    </c:choose>        
                      </select> 
                            </td>
                            <td>
                <font face="Trebuchet MS, Helvetica, sans-serif">
                             Max Price:
                            </font>
                <select name="maxPrice" style="width: 65px; height: 20px; font-size: 12px; background-color: #ffffff; color: #4095ff; font-family: Trebuchet MS;">
                    <c:set var="max" value="<%=menShirt.getMaxPrice()%>" scope="page" />  
                    <c:choose>
                        <c:when test="${max == 0}">
                           <option value="0" selected>$0.00</option> 
                        </c:when>
                        <c:otherwise>
                            <option value="0">$0.00</option>
                        </c:otherwise>
                    </c:choose>
                    <c:choose>
                        <c:when test="${max == 5}">
                           <option value="5" selected>$5.00</option> 
                        </c:when>
                        <c:otherwise>
                            <option value="5">$5.00</option>
                        </c:otherwise>
                    </c:choose>
                    <c:choose>
                        <c:when test="${max == 10}">
                           <option value="10" selected>$10.00</option> 
                        </c:when>
                        <c:otherwise>
                            <option value="10">$10.00</option>
                        </c:otherwise>
                    </c:choose>     
                    <c:choose>
                        <c:when test="${max == 15}">
                           <option value="15" selected>$15.00</option> 
                        </c:when>
                        <c:otherwise>
                            <option value="15">$15.00</option>
                        </c:otherwise>
                    </c:choose>      
                    <c:choose>
                        <c:when test="${max == 20}">
                           <option value="20" selected>$20.00</option> 
                        </c:when>
                        <c:otherwise>
                            <option value="20">$20.00</option>
                        </c:otherwise>
                    </c:choose>      
                    <c:choose>
                        <c:when test="${max == 25}">
                           <option value="25" selected>$25.00</option> 
                        </c:when>
                        <c:otherwise>
                            <option value="25">$25.00</option>
                        </c:otherwise>
                    </c:choose>   
                    <c:choose>
                        <c:when test="${max == 30}">
                           <option value="30" selected>$30.00</option> 
                        </c:when>
                        <c:otherwise>
                            <option value="30">$30.00</option>
                        </c:otherwise>
                    </c:choose>        
                    <c:choose>
                        <c:when test="${max == 35}">
                           <option value="35" selected>$35.00</option> 
                        </c:when>
                        <c:otherwise>
                            <option value="35">$35.00</option>
                        </c:otherwise>
                    </c:choose>
                    <c:choose>
                        <c:when test="${max == 40}">
                           <option value="40" selected>$40.00</option> 
                        </c:when>
                        <c:otherwise>
                            <option value="40">$40.00</option>
                        </c:otherwise>
                    </c:choose>
                    <c:choose>
                        <c:when test="${max == 45}">
                           <option value="45" selected>$45.00</option> 
                        </c:when>
                        <c:otherwise>
                            <option value="45">$45.00</option>
                        </c:otherwise>
                    </c:choose>
                    <c:choose>
                        <c:when test="${max == 50}">
                           <option value="50" selected>$50.00</option> 
                        </c:when>
                        <c:otherwise>
                            <option value="50">$50.00</option>
                        </c:otherwise>
                    </c:choose>
                </select> 
            </td>
            <td>
                <font face="Trebuchet MS, Helvetica, sans-serif">
                    Color:
                </font>
                <select name="color" style="width: 80px; height: 20px; font-size: 12px; background-color: #ffffff; color: #4095ff; font-family: Trebuchet MS;">
                    <c:set var="color" value="<%=menShirt.getColor()%>" scope="page" />
                    <c:choose>
                        <c:when test="${color == 0}">
                           <option value="0" selected>All</option> 
                        </c:when>
                        <c:otherwise>
                            <option value="0">All</option>
                        </c:otherwise>
                    </c:choose>
                    <c:choose>
                        <c:when test="${color == 'Black'}">
                           <option value="Black" selected>Black</option>
                        </c:when>
                        <c:otherwise>
                            <option value="Black">Black</option>
                        </c:otherwise>
                    </c:choose>  
                    <c:choose>
                        <c:when test="${color == 'White'}">
                           <option value="White" selected>White</option>
                        </c:when>
                        <c:otherwise>
                            <option value="White">White</option>
                        </c:otherwise>
                    </c:choose> 
                    <c:choose>
                        <c:when test="${color == 'Red'}">
                           <option value="Red" selected>Red</option>
                        </c:when>
                        <c:otherwise>
                            <option value="Red">Red</option>
                        </c:otherwise>
                    </c:choose>        
                    <c:choose>
                        <c:when test="${color == 'Green'}">
                           <option value="Green" selected>Green</option>
                        </c:when>
                        <c:otherwise>
                            <option value="Green">Green</option>
                        </c:otherwise>
                    </c:choose>        
                    <c:choose>
                        <c:when test="${color == 'Yellow'}">
                           <option value="Yellow" selected>Yellow</option>
                        </c:when>
                        <c:otherwise>
                            <option value="Yellow">Yellow</option>
                        </c:otherwise>
                    </c:choose>
                    <c:choose>
                        <c:when test="${color == 'Gray'}">
                           <option value="Gray" selected>Gray</option>
                        </c:when>
                        <c:otherwise>
                            <option value="Gray">Gray</option>
                        </c:otherwise>
                    </c:choose>
                    <c:choose>
                        <c:when test="${color == 'Blue'}">
                           <option value="Blue" selected>Blue</option>
                        </c:when>
                        <c:otherwise>
                            <option value="Blue">Blue</option>
                        </c:otherwise>
                    </c:choose>
                    <c:choose>
                        <c:when test="${color == 'Brown'}">
                           <option value="Brown" selected>Brown</option>
                        </c:when>
                        <c:otherwise>
                            <option value="Brown">Brown</option>
                        </c:otherwise>
                    </c:choose>
                    <c:choose>
                        <c:when test="${color == 'Purple'}">
                           <option value="Purple" selected>Purple</option>
                        </c:when>
                        <c:otherwise>
                            <option value="Purple">Purple</option>
                        </c:otherwise>
                    </c:choose>
                    <c:choose>
                        <c:when test="${color == 'Pink'}">
                           <option value="Pink" selected>Pink</option>
                        </c:when>
                        <c:otherwise>
                            <option value="Pink">Pink</option>
                        </c:otherwise>
                    </c:choose>
                </select>           
            </td>
            <td>
                <input type="submit" style="border-width: 1px; border-style: groove; border-color: #4095ff; font-family: Trebuchet MS; color: #ffffff; background-color: #4095ff;" value="Update">
            </td>
        </tr>
        </table>
    </form>
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
            color:#000000;width:55%" cellpadding="12" cellspacing="10" align="center" >
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
                        </font>
                        <form method="get" action="UpdateShoppingCart.jsp">
                            <input type="hidden" value="${row.id}" name="id">
                            <input type="hidden" value="${row.imagePath}" name="imagePath">
                            <input type="hidden" value="${row.productName}" name="productName">  
                            <input type="hidden" value="${row.price}" name="price">
                            <input type="hidden" value="UpdatedMenShirts.jsp" name="redirect">
                            <input type="submit" value="Add to cart" class="button">
                        </form>
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
                        </font>
                        <form method="get" action="UpdateShoppingCart.jsp">
                            <input type="hidden" value="${row.id}" name="id">
                            <input type="hidden" value="${row.imagePath}" name="imagePath">
                            <input type="hidden" value="${row.productName}" name="productName">  
                            <input type="hidden" value="${row.price}" name="price">
                            <input type="hidden" value="UpdatedMenShirts.jsp" name="redirect">
                            <input type="submit" value="Add to cart" class="button">
                        </form>
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
    <div style="clear: both; bottom: 0px; width: 100%; vertical-align: bottom;">
        <BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR>
        <ul class="menu" >
            <li><font color="white" face="Trebuchet MS, Helvetica, sans-serif">&nbsp;&nbsp;  All images used are from http://www.allposters.com/</font></li>
        </ul>
    </div>        
</body>
</html>

