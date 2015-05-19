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
        <title>Purchase Confirmation</title>
    </head>
    <body>
        
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
            <tr><td></td> </tr><tr><td></td> </tr><tr><td></td> </tr><tr><td></td> </tr><tr><td></td> </tr><tr><td></td> </tr>
        </table>
         <%
           if(session.getAttribute("regDirect") == "exists")
           {
        %>
        
        <font face="Trebuchet MS, Helvetica, sans-serif" size="4" color="red">
            The Username already exists, try again.
        </font>
       
        <%
                session.setAttribute("regDirect", null);
           }
        %>
        <form method="post" action="registration.jsp">
            
            <table style="float: left; background-color:#FFFFFF;border-collapse:collapse;             
            color:#000000;width:45%" cellpadding="8" cellspacing="3" align="center">        
                    <tr>
                        <th colspan="2"><font face="Trebuchet MS, Helvetica, sans-serif" size="4">Enter Login Information</font></th>
                    </tr>
                    <tr>
                        <td><input style="width: 260px;" type="text" name="fname" placeholder="First Name" class="registration"/></td>
                        <td><input style="width: 260px;" type="text" name="lname" placeholder="Last Name" class="registration"/></td>
                    </tr>
            </table>
            <table>
                    <tr>
                        <td><input style="width: 570px;" type="text" name="uname" placeholder="Username" class="registration" /></td>
                        <td></td>
                    </tr>
                    <tr>
                       
                        <td><input style="width: 570px;" type="password" name="pass" placeholder="Password" class="registration"/></td>
                    </tr>
                    <tr>
                        <td><input style="width: 570px;" type="text" name="email" placeholder="Email" class="registration"/></td>
                    </tr>
            </table>
            <table>
                    <tr>
                        <td><input type="text"  name="state" placeholder="State" class="registration"/>
                        &nbsp;&nbsp;</td>
                        
                        <td><input type="text"  name="city" placeholder="City" class="registration"/></td>
                    </tr>
            </table>
            <table style="float: left; width:26%">
            <tr>
                <td></td>
            </tr>
        </table>
            <table  style="float: left; background-color:#FFFFFF;border-collapse:collapse;             
            color:#000000;width:45%" cellpadding="8" cellspacing="3" >
                    <tr>                        
                        <td>
                            
                            <input type="text" style="width: 570px;" name="address" placeholder="Address" class="registration"/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit" value="Submit" class="button"/></td>                        
                    </tr>
            </table>
        </form>
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