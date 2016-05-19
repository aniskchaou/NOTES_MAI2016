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
                <div class="panel-heading"><h3>editer Matiere</h3> </div>
                <div class="panel-body">

                    <form  action="http://localhost:47032/projet_java/MatiereController" method="post">

                        <div class="form-group">    
                            libelle
                            <input name="libelle"   value="${sessionScope.matiere_edit.libelle}"  class="form-control"/>
                        </div>

                        <div class="form-group">     
                            volume c
                            <input  name="volumec"   value="${sessionScope.matiere_edit.volumec}"class="form-control" />
                        </div>
                        <div class="form-group">       
                            volume td
                            <input  name="volumetd"   value="${sessionScope.matiere_edit.volumetd}"class="form-control"  />
                        </div>
                        <div class="form-group">        
                            volume tp
                            <input  name="volumetp"   value="${sessionScope.matiere_edit.volumetp} "class="form-control" />
                        </div>
                        <div class="form-group">       
                            coefficient
                            <input  name="coef"   value="${sessionScope.matiere_edit.coeficient}"class="form-control" />
                        </div>
                        <div class="form-group">       
                            credit
                            <input  name="credit"   value="${sessionScope.matiere_edit.credit} " class="form-control"/>
                        </div>
                        <div class="form-group">       
                            Num compostage
                            <select name="id_num_compostage" class="form-control">
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

                        <input name="id"  value="${sessionScope.matiere_edit.id}" type="hidden"/>
                        <input   name="action" value="update" type="hidden"/>
                        <input  type="submit" value="ajouter"/>
                    </form>

                </div>
            </div>
        </div>
    </body>
</html>