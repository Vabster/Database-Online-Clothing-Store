<jsp:useBean id="womenShirt" class="query.ClothingQueries" scope="session"/>
<jsp:setProperty name="womenShirt" property="*"/>

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
    </body>
</html>
