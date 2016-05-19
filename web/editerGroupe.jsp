<%-- 
    Document   : editerGroupe
    Created on : May 5, 2016, 4:14:26 PM
    Author     : Hsin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="iit.tn.entity.NiveauDAO"%>
<%@page import="tn.iit.controller.GroupeController"%>
<%@page import="iit.tn.entity.Groupe"%>
<%@page import="tn.iit.controller.NiveauController"%>
<%@page import="java.util.List"%>
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
                <div class="panel-heading"><h3>editer Groupe</h3> </div>
                <div class="panel-body">

                    <form action="http://localhost:47032/projet_java/GroupeController" method="post">

                        <div class="form-group"> 
                            nom
                            <input  type="text"  name="nom" value="${sessionScope.groupe_edit.nom}" class="form-control"/>
                        </div> 


                        <input  type="hidden"  name="id" value="${sessionScope.groupe_edit.id}" />


                        <div class="form-group">
                            niveau
                            <select name="id_niveau" class="form-control">

                                <c:forEach items="${sessionScope.niveaux}" var="item">
                                    <option   value="<c:out  value="${item.id}"/>"><c:out  value="${item.nom}"/></option>
                                </c:forEach>
                            </select>
                        </div>  


                        <input  name="action"  type="hidden"value="update"/>
                        <input type="submit" value="ajouter"/>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
