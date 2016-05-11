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
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
                 <table>
             <tr><td>id</td><td>nombre groupe</td><td>nom</td></tr>
             <c:forEach items="${sessionScope.niveaux}" var="item">

              <tr>
                  <td>
                  <td>${item.id}</td>
                  <td>${item.nb_groupe}</td>
                  <td> ${item.nom}</td>
                 
                  <td><a  href="http://localhost:47032/projet_java/NiveauController?action=show&id=${item.id}">voir</a></td>
                  <td><a   href="http://localhost:47032/projet_java/NiveauController?action=edit&id=${item.id}">modifier</a></td>
                  <td><a   href="http://localhost:47032/projet_java/NiveauController?action=delete&id=${item.id}">supprimer</a></td>
              </tr>
                  
              
              
         
            </c:forEach>
            </table>
            <a href="http://localhost:47032/projet_java/NiveauController?action=add" >ajouter</a>
    </body>
</html>
