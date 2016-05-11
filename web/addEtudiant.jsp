<%-- 
    Document   : addEtudiant
    Created on : Apr 27, 2016, 8:41:53 PM
    Author     : Hsin
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="iit.tn.entity.MatiereDAO"%>
<%@page import="iit.tn.entity.GroupeDAO"%>
<%@page import="iit.tn.entity.Groupe"%>
<%@page import="tn.iit.controller.GroupeController"%>
<%@page import="iit.tn.entity.Matiere"%>
<%@page import="java.util.List"%>
<%@page import="tn.iit.controller.MatiereController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1></h1>
        <form action="http://localhost:47032/projet_java/EtudiantController" method="post">
            nom
            <input type="text" name="nom"/>
            
            prenom
            <input type="text" name="prenom"/>
            
            
            adresse
            <input type="text" name="adresse"/>
             
            <input type="hidden" name="action" value="create"/>
            
            num serie
            <input type="text" name="numserie"/>
            
            tel
            <input type="text" name="tel"/>
            
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
                
            <input type="submit" value="ajouter"/>
            
    </form>
    </body>
</html>
