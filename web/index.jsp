<%-- 
    Document   : index
    Created on : May 14, 2016, 8:56:13 PM
    Author     : Hsin
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include  file="/menu.jsp" %>

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
                <div class="panel-heading"><h3>Panneau Administration</h3> </div>
                <div class="panel-body">


                    <table class="table">
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

                                <td> <c:out  value="${item.id_compostage}"/></td>
                                <td><a  class="btn btn-primary"   href="http://localhost:47032/projet_java/MatiereController?action=show&id=${item.id}">voir</a></td>
                                <td><a  class="btn btn-warning" href="http://localhost:47032/projet_java/MatiereController?action=edit&id=${item.id}">modifier</a> </td>
                                <td><a  class="btn btn-danger"    href="http://localhost:47032/projet_java/MatiereController?action=delete&id=${item.id}">supprimer</a></td>
                            </tr>



                        </c:forEach>
                        <a href="http://localhost:47032/projet_java/GroupeController?action=show_enseignant"></a>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
