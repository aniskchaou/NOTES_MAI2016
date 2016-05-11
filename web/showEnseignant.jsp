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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
 
        
        nom:     <c:out  value="${sessionScope.enseignant.nom}"/>
    prenom:              <c:out  value="${sessionScope.enseignant.prenom}"/>
    adresse:              <c:out  value="${sessionScope.enseignant.adresse}"/>
     matricule fiscale:             <c:out  value="${sessionScope.enseignant.matricule_fiscale}"/>
        tel:          <c:out  value="${sessionScope.enseignant.tel}"/>
        groupe:          <c:out  value="${sessionScope.enseignant.id_groupe}"/>
        matiere:          <c:out  value="${sessionScope.enseignant.id_matiere}"/>
   
    </body>
</html>
