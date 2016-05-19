<%-- 
    Document   : showNiveau
    Created on : May 4, 2016, 10:56:59 AM
    Author     : Hsin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="iit.tn.entity.NiveauDAO"%>
<%@page import="iit.tn.entity.Niveau"%>
<%@page import="tn.iit.controller.NiveauController"%>
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
                <div class="panel-heading"><h3>Voir Niveau</h3> </div>
                <div class="panel-body">

            nombre de groupe: <c:out  value="${sessionScope.niveau.nb_groupe}"/><br>
            nom: <c:out  value="${sessionScope.niveau.nom}"/><br>
  </div>
            </div>
        </div>
    </body>
</html>
