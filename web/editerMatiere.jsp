<%-- 
    Document   : editerMatiere
    Created on : May 5, 2016, 4:13:52 PM
    Author     : Hsin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="iit.tn.entity.EnseignantDAO"%>
<%@page import="iit.tn.entity.NumCompostageDAO"%>
<%@page import="iit.tn.entity.MatiereDAO"%>
<%@page import="tn.iit.controller.MatiereController"%>
<%@page import="iit.tn.entity.Matiere"%>
<%@page import="tn.iit.controller.NumCompostageController"%>
<%@page import="iit.tn.entity.NumCompostage"%>
<%@page import="iit.tn.entity.Enseignant"%>
<%@page import="java.util.List"%>
<%@page import="tn.iit.controller.EnseignantController"%>
<%@page import="tn.iit.controller.EnseignantController"%>
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
            <input name="libelle"   value="${sessionScope.matiere_edit.libelle}" />
            volume c
            <input  name="volumec"   value="${sessionScope.matiere_edit.volumec}" />
            volume td
            <input  name="volumetd"   value="${sessionScope.matiere_edit.volumetd}"  />
             volume tp
            <input  name="volumetp"   value="${sessionScope.matiere_edit.volumetp} " />
             coefficient
            <input  name="coef"   value="${sessionScope.matiere_edit.coeficient}" />
            credit
            <input  name="credit"   value="${sessionScope.matiere_edit.credit} /">
            Num compostage
            <select name="id_num_compostage">
                <c:forEach items="${sessionScope.num_compostages}" var="item">
                
                    <option value="${item.id}">${item.num_compostage}</option>
                
                </c:forEach>
 
            </select>
            
                         <select name="id_enseignant">
                             <c:forEach items="${sessionScope.enseignants}" var="item">
                             
                                   <option value="${item.id}">${item.nom}</option>
                             
                             </c:forEach>
            
            </select>
            <input name="id"  value="${sessionScope.matiere_edit.id}" type="hidden"/>
            <input   name="action" value="update" type="hidden"/>
            <input  type="submit" value="ajouter"/>
        </form>

    </body>
</html>
