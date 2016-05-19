<%-- 
    Document   : showGroupe
    Created on : Apr 27, 2016, 9:00:50 PM
    Author     : Hsin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="iit.tn.entity.Groupe"%>
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
                <div class="panel-heading"><h3>Voir Groupe</h3> </div>
                <div class="panel-body">
  
        niveau:<c:out value="${sessionScope.groupe.id_niveau}"/><br>
        nom:<c:out value="${sessionScope.groupe.nom}"/><br>
  </div>
            </div>
        </div>
    </body>
</html>