<%-- 
    Document   : editerEtudiant
    Created on : May 5, 2016, 4:12:29 PM
    Author     : Hsin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="iit.tn.entity.MatiereDAO"%>
<%@page import="iit.tn.entity.GroupeDAO"%>
<%@page import="tn.iit.controller.MatiereController"%>
<%@page import="iit.tn.entity.Matiere"%>
<%@page import="tn.iit.controller.GroupeController"%>
<%@page import="iit.tn.entity.Groupe"%>
<%@page import="java.util.List"%>
<%@page import="iit.tn.entity.Etudiant"%>
<%@page import="tn.iit.controller.EtudiantController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
                <form action="http://localhost:47032/projet_java/EtudiantController" method="post">
            nom
            <input type="text" name="nom"  value="${sessionScope.etudiant.nom}" />
            
            prenom
            <input type="text" name="prenom"   value="${sessionScope.etudiant.prenom}" />
            
            
            adresse
            <input type="text" name="tel"        value="${sessionScope.etudiant.tel}"    />
            
            <input  type="hidden" name="action" value="update"/>
            
            num serie
            <input type="text" name="numserie"     value="${sessionScope.etudiant.numserie}"    />
            
            tel
            <input type="text" name="tel"  value="${sessionScope.etudiant.tel}"   />
            
            groupe
            <select name="id_groupe">
           <c:forEach items="${sessionScope.groupes}" var="item">
                <option   value="<c:out  value="${item.id}"/>"><c:out  value="${item.nom}"/></option>
           </c:forEach>
                
            </select>
            
            
            matiere
            <select name="id_matiere">
           <c:forEach items="${sessionScope.matieres}" var="item">
                <option   value="<c:out  value="${item.id}"/>"><c:out  value="${item.libelle}"/></option>
                </c:forEach>        
            </select>
            
            
            
            <input type="hidden"  name="id"   value="${sessionScope.etudiant.id}"/>
            <input type="hidden"  name="action" value="update"/>
            <input type="submit" value="ajouter"/>
            
    </form>
    </body>
</html>
