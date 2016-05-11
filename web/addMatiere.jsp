<%-- 
    Document   : addMatiere
    Created on : Apr 28, 2016, 11:10:05 AM
    Author     : Hsin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="iit.tn.entity.EnseignantDAO"%>
<%@page import="iit.tn.entity.NumCompostageDAO"%>
<%@page import="tn.iit.controller.NumCompostageController"%>
<%@page import="iit.tn.entity.NumCompostage"%>
<%@page import="tn.iit.controller.EnseignantController"%>
<%@page import="iit.tn.entity.Enseignant"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
      <form  action="http://localhost:47032/projet_java/MatiereController" method="post">
            libelle
            <input name="libelle"/>
            volume c
            <input  name="volumec"/>
            volume td
            <input  name="volumetd"/>
             volume tp
            <input  name="volumetp"/>
             coefficient
            <input  name="coeffiecient"/>
            credit
            <input  name="credit"/>
            Num compostage
            <select name="num_compostage">
         <c:forEach items="${sessionScope.num_compostages}" var="item">
                             
                                   <option value="${item.id}">${item.num_compostage}</option>
                             
                             </c:forEach>
            </select>
            
                         <select name="id_enseignant">
                  <c:forEach items="${sessionScope.enseignants}" var="item">
                             
                                   <option value="${item.id}">${item.nom}</option>
                             
                             </c:forEach>
            
            </select>
      <input type="hidden" name="action" value="ajouter_matiere"/>
            <input  type="submit" value="ajouter"/>
        </form>
        
    </body>
</html>
