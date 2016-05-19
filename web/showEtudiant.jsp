<%-- 
    Document   : showEtudiant
    Created on : May 4, 2016, 10:56:01 AM
    Author     : Hsin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="iit.tn.entity.Etudiant"%>
<%@page import="tn.iit.controller.EtudiantController"%>
<%@page import="tn.iit.controller.EnseignantController"%>
<%@page import="iit.tn.entity.Enseignant"%>
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
                <div class="panel-heading"><h3>Voier Etudiant</h3> </div>
                <div class="panel-body">
        
  
          nom:  <c:out  value="${sessionScope.etudiant.nom}"/><br>
          prenom:  <c:out  value="${sessionScope.etudiant.prenom}"/><br>
            tel:<c:out  value="${sessionScope.etudiant.tel}"/><br>
           num serie: <c:out  value="${sessionScope.etudiant.numserie}"/><br>
          groupe:  <c:out  value="${sessionScope.etudiant.id_groupe}"/><br>
           matiere:  <c:out  value="${sessionScope.etudiant.id_matiere}"/><br>

  </div>
            </div>
        </div>
    </body>
</html>
