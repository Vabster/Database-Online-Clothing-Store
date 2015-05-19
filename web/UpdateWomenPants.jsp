<jsp:useBean id="womenPants" class="query.ClothingQueries" scope="session"/>
<jsp:setProperty name="womenPants" property="*"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript">
            window.location.href = "http://localhost:8080/DBMP5/UpdatedWomenPants.jsp";
        </script>
        <title>Page Redirection</title>
    </head>
    <body>
    </body>
</html>
