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
<%@include  file="/menu.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link  href="css/bootstrap.css"  rel="stylesheet" />
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <title>Administration</title>
    </head>
    <body>
        <div class="container">
            <div class="panel panel-default">
                <div class="panel-heading"><h3>add Num Compostage</h3> </div>
                <div class="panel-body">
        
        <form action="http://localhost:47032/projet_java/NumCompostageController" method="post">
            <div class="form-group">
            num compostage
            <input type="text" name="numcompostage" class="form-control">
            </div>
            <input type="submit" value="ajouter">
            
     
                
    </form>
  </div>
            </div>
        </div>
    </body>
</html>