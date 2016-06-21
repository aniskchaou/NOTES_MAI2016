<%-- 
    Document   : addGroupe
    Created on : Apr 27, 2016, 8:45:24 PM
    Author     : Hsin
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="iit.tn.entity.NiveauDAO"%>
<%@page import="tn.iit.controller.NiveauController"%>
<%@page import="java.util.List"%>
<%@page import="iit.tn.entity.Niveau"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="/menu.jsp" %>
<!DOCTYPE html>
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
                <div class="panel-heading"><h3>Ajouter Groupe</h3> </div>
                <div class="panel-body">
                    <form action="http://localhost:47032/projet_java/GroupeController" method="post">

                        <div class="form-group">
                            nom groupe:
                            <input  data-validation="length" data-validation-length="max10"  type="text"  name="nom" class="form-control"   />
                        </div>


                        <input  type="hidden" value="ajouter_groupe" name="action"/>

                        <div class="form-group">
                            niveau
                            <select name="id_niveau">
                                <c:forEach items="${sessionScope.niveaux}" var="item">
                                    <option   value="<c:out  value="${item.id}"/>"><c:out  value="${item.nom}"/></option>
                                </c:forEach>
                            </select>
                        </div>
                        <input type="submit" value="ajouter"/>
                    </form>
                    
                    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
     <script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.23/jquery.form-validator.min.js">
         
         </script>
         <script>
  $.validate({
    lang: 'fr'
  });
</script>
                </div>
            </div>
        </div>
    </body>
</html>
