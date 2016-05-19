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
                <div class="panel-heading"><h3>Ajouter Matiere</h3> </div>
                <div class="panel-body">
                    <form  action="http://localhost:47032/projet_java/MatiereController" method="post">
                    
                        <div class="form-group">
                        libelle
                        <input name="libelle" class="form-control"/>
                        </div>
                        <div class="form-group" class="form-control">
                        volume c
                        <input  name="volumec" class="form-control"/>
                        </div>
                        <div class="form-group">
                        volume td
                        <input  name="volumetd" class="form-control"/>
                        </div>
                        <div class="form-group">
                        volume tp
                        <input  name="volumetp" class="form-control"/>
                        </div>
                        <div class="form-group">
                        coefficient
                        <input  name="coeffiecient" class="form-control"/>
                        </div>
                        <div class="form-group">
                        credit
                        <input  name="credit" class="form-control"/>
                        </div>
                        
                        <div class="form-group">
                        Num compostage
                        <select name="num_compostage" class="form-control">
                            <c:forEach items="${sessionScope.num_compostages}" var="item">

                                <option value="${item.id}">${item.num_compostage}</option>

                            </c:forEach>
                        </select>
                        </div>
                      
                        <div class="form-group">
                        <select name="id_enseignant" class="form-control">
                            <c:forEach items="${sessionScope.enseignants}" var="item">

                                <option value="${item.id}">${item.nom}</option>

                            </c:forEach>

                        </select>
                        </div>
                        <input type="hidden" name="action" value="ajouter_matiere"/>
                       
                        
                        
                        <input  type="submit" value="ajouter"/>
                    </form>

                </div>
            </div>
        </div>
    </body>
</html>