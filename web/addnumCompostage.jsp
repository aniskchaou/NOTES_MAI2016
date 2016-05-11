<%-- 
    Document   : addnumCompostage
    Created on : Apr 30, 2016, 5:18:52 PM
    Author     : Hsin
--%>

<%@page import="tn.iit.controller.EnseignantController"%>
<%@page import="iit.tn.entity.Enseignant"%>
<%@page import="tn.iit.controller.NumCompostageController"%>
<%@page import="java.util.List"%>
<%@page import="iit.tn.entity.NumCompostage"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="http://localhost:47032/projet_java/NumCompostageController" method="post">
            num compostage
            <input type="text" name="numcompostage">
            
            <input type="submit" value="ajouter">
            
     
                
    </form>
    </body>
</html>
