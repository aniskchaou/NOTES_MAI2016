<%-- 
    Document   : editerEnseignant
    Created on : May 5, 2016, 4:11:42 PM
    Author     : Hsin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="iit.tn.entity.EnseignantDAO"%>
<%@page import="iit.tn.entity.MatiereDAO"%>
<%@page import="iit.tn.entity.GroupeDAO"%>
<%@page import="iit.tn.entity.Groupe"%>

<%@page import="iit.tn.entity.Matiere"%>
<%@page import="java.util.List"%>
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
        
                <form action="http://localhost:47032/projet_java/EnseignantController" method="post">
            nom
            <input type="text" name="nom"  value="${sessionScope.enseignant_edit.nom}"/>
            
            prenom
            <input type="text" name="prenom"  value="${sessionScope.enseignant_edit.prenom}" />
            
            
            adresse
            <input type="text" name="adresse"  value="${sessionScope.enseignant_edit.adresse}"  />
            
            
            matricule fiscale
            <input type="text" name="matricule" value="${sessionScope.enseignant_edit.matricule_fiscale}"  />
            
            tel
            <input type="text" name="tel"   value="${sessionScope.enseignant_edit.tel}"   />
            
            groupe
    <select name="id_groupe">
            <c:forEach items="${sessionScope.groupes}" var="item">
                <option   value="<c:out  value="${item.id}"/>"><c:out  value="${item.nom}"/></option>
           </c:forEach>
     </select>>
            
            
            matiere
   <select name="id_matiere">
                  <c:forEach items="${sessionScope.matieres}" var="item">
                <option   value="<c:out  value="${item.id}"/>"><c:out  value="${item.libelle}"/></option>
                </c:forEach>
     </select>
            <input type="hidden"  name="id" value="${sessionScope.enseignant_edit.id}"   />
            <input type="hidden"  name="action" value="update"/>
            <input type="submit" value="ajouter"/>
            
    </form>
    </body>
</html>
