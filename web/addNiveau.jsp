<%-- 
    Document   : addNiveau
    Created on : Apr 28, 2016, 8:55:12 AM
    Author     : Hsin
--%>

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
                <div class="panel-heading"><h3>Ajouter Niveau</h3> </div>
                <div class="panel-body">

                    <form action="http://localhost:47032/projet_java/NiveauController" method="post">

                        <div class="form-group">
                            nom de niveau
                            <input  data-validation="length" data-validation-length="max10" type="text"  name="nom" class="form-control"/>
                        </div>

                        <div class="form-group">
                            nombre de groupe
                            <input data-validation="length" data-validation-length="max10"  type="text" name="nb_groupe" class="form-control"/>
                        </div>            

                        <input type="hidden" name="action" value="ajouter_niveau"/>


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
