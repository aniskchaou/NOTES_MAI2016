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
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
  
          nom:  <c:out  value="${sessionScope.etudiant.nom}"/>
          prenom:  <c:out  value="${sessionScope.etudiant.prenom}"/>
            tel:<c:out  value="${sessionScope.etudiant.tel}"/>
           num serie: <c:out  value="${sessionScope.etudiant.numserie}"/>
          groupe:  <c:out  value="${sessionScope.etudiant.id_groupe}"/>
           matiere:  <c:out  value="${sessionScope.etudiant.id_matiere}"/>
    </body>
</html>
