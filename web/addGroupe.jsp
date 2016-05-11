<%-- 
    Document   : addGroupe
    Created on : Apr 27, 2016, 8:45:24 PM
    Author     : Hsin
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="iit.tn.entity.NiveauDAO"%>
<%@page import="tn.iit.controller.NiveauController"%>
<%@page import="java.util.List"%>
<%@page import="iit.tn.entity.Niveau"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="http://localhost:47032/projet_java/GroupeController" method="post">
        nom
        <input  type="text"  name="nom" value="${sessionScope.groupe_edit.nom}"  />
        <br>
        <input  type="hidden" value="ajouter_groupe" name="action"/>
        niveau
        <select name="id_niveau">
               <c:forEach items="${sessionScope.niveaux}" var="item">
                <option   value=''<c:out  value="${item.id}"/>"><c:out  value="${item.nom}"/></option>
                </c:forEach>
        </select>
      
        <input type="submit" value="ajouter"/>
        </form>
    </body>
</html>
