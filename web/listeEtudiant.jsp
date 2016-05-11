
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="tn.iit.controller.EtudiantController"%>
<%@page import="java.util.List"%>
<%@page import="iit.tn.entity.Etudiant"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <h1>Liste Etudiant</h1>
        <table>
            <tr><td>id</td><td>nom</td><td>prenom</td><td>tel</td><td>groupe</td><td>matiere</td></tr>
            <c:forEach items="${sessionScope.etudiants}" var="item">








                <tr>
                    <td>
                    <td> ${item.id}</td>
                    <td>${item.nom}</td>
                    <td> ${item.prenom}</td>
                    <td> ${item.tel}</td>
                    <td> ${item.id_groupe}</td>

                    <td> ${item.id_matiere}</td>


                    <td><a href="http://localhost:47032/projet_java/EtudiantController?action=show&id=${item.id}">voir</a></td>
                    <td><a href="http://localhost:47032/projet_java/EtudiantController?action=edit&id=${item.id}">modifier</a></td>
                    <td><a href="http://localhost:47032/projet_java/EtudiantController?action=delete&id=${item.id}">supprimer </a></td>
                </tr>


            </c:forEach>

        </table>
        <a href="http://localhost:47032/projet_java/EtudiantController?action=add">ajouter</a>

    </body>
</html>
