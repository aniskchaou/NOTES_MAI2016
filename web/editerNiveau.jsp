<%-- 
    Document   : editerNiveau
    Created on : May 5, 2016, 4:13:32 PM
    Author     : Hsin
--%>

<%@page import="tn.iit.controller.NiveauController"%>
<%@page import="iit.tn.entity.Niveau"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
                <%  
          
 Niveau  niveau=(Niveau)session.getAttribute("niveau");  
  //      Matiere  matiere=new Matiere();
        %>
                <form action="http://localhost:47032/projet_java/NiveauController" method="post">
            <input type="text"  name="nom" <%  out.print("value='"+niveau.getNom()+ "'");  %> />
                   <input type="text" name="nb_groupe" <%  out.print("value='"+niveau.getNb_groupe()+ "'");  %> />
                   <input type="hidden" name="action" value="update"/>
                   <input type="hidden" name="id" <%  out.print("value='"+niveau.getId()+ "'");  %> />
                   <input type="submit" value="ajouter"/>
        </form>
        
    </body>
</html>
