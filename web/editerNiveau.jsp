<%-- 
    Document   : editerNiveau
    Created on : May 5, 2016, 4:13:32 PM
    Author     : Hsin
--%>

<%@page import="tn.iit.controller.NiveauController"%>
<%@page import="iit.tn.entity.Niveau"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="/menu.jsp" %>
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

                <form action="http://localhost:47032/projet_java/NiveauController" method="post">
                 
                    
                    <div class="form-group">
                    <input data-validation="length" data-validation-length="max10" type="text"  name="nom"  class="form-control" value="${sessionScope.niveau.nom}"/>
                    </div>
                    
                    <div class="form-group">
                    <input data-validation="number" data-validation-allowing="range[1;10]"  type="text" name="nb_groupe"  class="form-control"  value="${sessionScope.niveau.nb_groupe}" />
                    </div>
                   <div class="form-group">
                   <input type="hidden" name="action" class="form-control"  value="update"/>
                   </div>
                   <div class="form-group">
                   <input type="hidden" name="id" class="form-control"  value="${sessionScope.niveau.id}"/>
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