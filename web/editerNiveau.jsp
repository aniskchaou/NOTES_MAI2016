<%-- 
    Document   : editerNiveau
    Created on : May 5, 2016, 4:13:32 PM
    Author     : Hsin
--%>

<%@page import="tn.iit.controller.NiveauController"%>
<%@page import="iit.tn.entity.Niveau"%>
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
                    <input type="text"  name="nom" value="${sessionScope.niveau.nom}"/>
                   <input type="text" name="nb_groupe"  value="${sessionScope.niveau.nb_groupe}" />
                   <input type="hidden" name="action" value="update"/>
                   <input type="hidden" name="id"  value="${sessionScope.niveau.id}"/>
                   <input type="submit" value="ajouter"/>
        </form>
        
    </body>
</html>
