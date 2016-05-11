<%-- 
    Document   : listeMatiere
    Created on : May 2, 2016, 2:07:33 PM
    Author     : Hsin
--%>

<%@page import="iit.tn.entity.MatiereDAO"%>
<%@page import="iit.tn.entity.Matiere"%>
<%@page import="java.util.List"%>
<%@page import="tn.iit.controller.MatiereController"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>liste Matiere</h1>
         <table>
             <tr><td>id</td><td>libelle</td><td>volumec</td><td>volumetd</td><td>volumetp</td><td>coeffiecient</td><td>credit</td><td>enseignant</td><td>num compostage</td></tr>
       
             <c:forEach items="${sessionScope.matieres}" var="item">
           
              <tr>
                  <td>
                  <td> <c:out  value="${item.id}"/></td>
                  <td><c:out  value="${item.libelle}"/></td>
                  <td>  <c:out  value="${item.volumec}"/></td>
                   <td> <c:out  value="${item.volumetd}"/></td>
                    <td><c:out  value="${item.volumetp}"/></td>
                     <td><c:out  value="${item.coeficient}"/></td>
                      <td><c:out  value="${item.credit}"/></td>
                    <td> <c:out  value="${item.id_enseignant}"/></td>
                    <td> <c:out  value="${item.id_compostage}"/></td>
                    <td><a   href="http://localhost:47032/projet_java/MatiereController?action=show&id=${item.id}">voir</a></td>
                    <td><a  href="http://localhost:47032/projet_java/MatiereController?action=edit&id=${item.id}">modifier</a> </td>
                    <td><a   href="http://localhost:47032/projet_java/MatiereController?action=delete&id=${item.id}">supprimer</a></td>
              </tr>
                  
              
              
       </c:forEach>
            </table>
            <a href="http://localhost:47032/projet_java/MatiereController?action=add">ajouter</a>
    </body>
</html>
