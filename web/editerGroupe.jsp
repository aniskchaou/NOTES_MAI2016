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
        <input  type="text"  name="nom" value="${sessionScope.groupe_edit.nom}"/>
        <br>
        <input  type="hidden"  name="id" value="${sessionScope.groupe_edit.id}" />
        niveau
        <select name="id_niveau">
     
                <c:forEach items="${sessionScope.niveaux}" var="item">
                <option   value="<c:out  value="${item.id}"/>"><c:out  value="${item.nom}"/></option>
                </c:forEach>
        </select>
        
        <input  name="action"  type="hidden"value="update"/>
        <input type="submit" value="ajouter"/>
        </form>
    </body>
</html>
