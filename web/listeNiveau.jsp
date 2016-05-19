<%-- 
    Document   : listeNiveau
    Created on : May 2, 2016, 2:07:52 PM
    Author     : Hsin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="iit.tn.entity.NiveauDAO"%>
<%@page import="tn.iit.controller.NiveauController"%>
<%@page import="java.util.List"%>
<%@page import="iit.tn.entity.Niveau"%>
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
                <div class="panel-heading"><h3>Liste Niveau</h3> </div>
                <div class="panel-body">
        
                 <table class="table">
             <tr><td>id</td><td>nombre groupe</td><td>nom</td></tr>
             <c:forEach items="${sessionScope.niveaux}" var="item">

              <tr>
                  <td>
                  <td>${item.id}</td>
                  <td>${item.nb_groupe}</td>
                  <td> ${item.nom}</td>
                 
                  <td><a class="btn btn-success"  href="http://localhost:47032/projet_java/NiveauController?action=show&id=${item.id}">voir</a></td>
                  <td><a  class="btn btn-warning"  href="http://localhost:47032/projet_java/NiveauController?action=edit&id=${item.id}">modifier</a></td>
                  <td><a  class="btn btn-danger"  href="http://localhost:47032/projet_java/NiveauController?action=delete&id=${item.id}">supprimer</a></td>
              </tr>
                  
              
              
         
            </c:forEach>
            </table>
            <a class="btn btn-default" href="http://localhost:47032/projet_java/NiveauController?action=add" >ajouter</a>
  </div>
            </div>
        </div>
    </body>
</html>
