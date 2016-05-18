<%-- 
    Document   : login
    Created on : May 14, 2016, 8:50:46 PM
    Author     : Hsin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link  href="css/bootstrap.css"  rel="stylesheet" />
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <title>Login</title>
    </head>
    <body>


        <div class="container">

             <div class="panel panel-default">
                    <div class="panel-heading">Login</div>
                    <div class="panel-body">
            

            <form  class="form-signin-heading" action="http://localhost:47032/projet_java/Index" method="post">

               
                      
               

                <div class="form-group">
                    <label for="matricule fiscale">matricule fiscale</label>
                    <input type="password" name="matriculefiscale"/>

                </div>


                <input  class="btn btn-default"   type="submit" value="login"/> 


            </form>
              </div>
                </div>



        </div>

    </body>
</html>
