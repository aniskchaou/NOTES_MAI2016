<%-- 
    Document   : showMatiere
    Created on : May 4, 2016, 10:56:43 AM
    Author     : Hsin
--%>

<%@page import="iit.tn.entity.MatiereDAO"%>
<%@page import="iit.tn.entity.Matiere"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <div class="panel-heading"><h3>Voir Matiere</h3> </div>
                <div class="panel-body">



                    coefficient:   ${sessionScope.matiere.coeficient}<br>
                    credit:   ${sessionScope.matiere.credit}<br>
                    compostage:    ${sessionScope.matiere.id_compostage}<br>
                    libelle:    ${sessionScope.matiere.libelle}<br>
                    volume c:  ${sessionScope.matiere.volumec}<br>
                    volume td:    ${sessionScope.matiere.volumetd}<br>
                    volume tp:    ${sessionScope.matiere.volumetp}<br>


                </div>
            </div>
        </div>
    </body>
</html>