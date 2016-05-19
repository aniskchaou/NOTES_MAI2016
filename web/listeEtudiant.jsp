
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="tn.iit.controller.EtudiantController"%>
<%@page import="java.util.List"%>
<%@page import="iit.tn.entity.Etudiant"%>
<%@include  file="/menu.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                <div class="panel-heading"><h3>Liste Etudiant</h3> </div>
                <div class="panel-body">
        <table class="table">
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


                    <td><a class="btn btn-success" href="http://localhost:47032/projet_java/EtudiantController?action=show&id=${item.id}">voir</a></td>
                    <td><a class="btn btn-warning"  href="http://localhost:47032/projet_java/EtudiantController?action=edit&id=${item.id}">modifier</a></td>
                    <td><a class="btn btn-danger"  href="http://localhost:47032/projet_java/EtudiantController?action=delete&id=${item.id}">supprimer </a></td>
                </tr>


            </c:forEach>

        </table>
        <a  class="btn btn-default" href="http://localhost:47032/projet_java/EtudiantController?action=add">ajouter</a>

  </div>
            </div>
        </div>
    </body>
</html>
