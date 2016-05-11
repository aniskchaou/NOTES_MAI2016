<%-- 
    Document   : addNiveau
    Created on : Apr 28, 2016, 8:55:12 AM
    Author     : Hsin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="http://localhost:47032/projet_java/NiveauController" method="post">
            <input type="text"  name="nom"/>
                   <input type="text" name="nb_groupe"/>
                   <input type="hidden" name="action" value="ajouter_niveau"/>
                   <input type="submit" value="ajouter"/>
        </form>
        
    </body>
    <a href="addMatiere.jsp"></a>
</html>
