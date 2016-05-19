<%-- 
    Document   : showEnseignant
    Created on : May 4, 2016, 10:56:21 AM
    Author     : Hsin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="iit.tn.entity.EnseignantDAO"%>
<%@page import="iit.tn.entity.Enseignant"%>

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
                <div class="panel-heading"><h3>Voir Enseignant</h3> </div>
                <div class="panel-body">


                    nom:     <c:out  value="${sessionScope.enseignant.nom}"/><br>
                    prenom:              <c:out  value="${sessionScope.enseignant.prenom}"/><br>
                    adresse:              <c:out  value="${sessionScope.enseignant.adresse}"/><br>
                    matricule fiscale:             <c:out  value="${sessionScope.enseignant.matricule_fiscale}"/><br>
                    tel:          <c:out  value="${sessionScope.enseignant.tel}"/><br>
                    groupe:          <c:out  value="${sessionScope.enseignant.id_groupe}"/><br>
                    matiere:          <c:out  value="${sessionScope.enseignant.id_matiere}"/><br>

                </div>
            </div>
        </div>
    </body>
</html>