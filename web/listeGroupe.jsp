<%-- 
    Document   : listeGroupe
    Created on : May 2, 2016, 2:07:06 PM
    Author     : Hsin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="iit.tn.entity.GroupeDAO"%>
<%@page import="tn.iit.controller.GroupeController"%>
<%@page import="tn.iit.controller.NiveauController"%>
<%@page import="iit.tn.entity.Groupe"%>
<%@page import="java.util.List"%>
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
             <tr><td>id</td><td>niveau</td><td>nom</td></tr>
             <c:forEach items="${sessionScope.groupes}" var="item">

              <tr>
                  <td>
                  <td> <c:out value="${item.id}"/></td>
                  <td><c:out value="${item.id_niveau}"/></td>
                  <td><c:out value="${item.nom}"/></td>
                 
                  <td><a href="http://localhost:47032/projet_java/GroupeController?action=show&id=${item.id}">voir</a></td>
                    <td><a href="http://localhost:47032/projet_java/GroupeController?action=edit&id=${item.id}">modifier</a></td>
                    <td><a href="http://localhost:47032/projet_java/GroupeController?action=delete&id=${item.id}">supprimer</a></td>
              </tr>
                  
              

            </c:forEach>
            </table>
            <a href="http://localhost:47032/projet_java/GroupeController?action=add">ajouter</a>
    </body>
</html>
