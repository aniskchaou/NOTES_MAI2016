<%-- 
    Document   : listeNiveau
    Created on : May 2, 2016, 2:07:52 PM
    Author     : Hsin
--%>

<%@page import="iit.tn.entity.NiveauDAO"%>
<%@page import="tn.iit.controller.NiveauController"%>
<%@page import="java.util.List"%>
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
        
                 <table>
             <tr><td>id</td><td>nombre groupe</td><td>nom</td></tr>
        <%
            List<Niveau> liste_niveau=(List<Niveau>)session.getAttribute("niveaux");
            
          for(int i=0;i<liste_niveau.size();i++)
          {
              %>
              <tr>
                  <td>
                  <td><%    out.print( liste_niveau.get(i).getId()) ; %></td>
                  <td><% out.print(liste_niveau.get(i).getNb_groupe()); %></td>
                  <td><% out.print(liste_niveau.get(i).getNom()); %></td>
                 
                  <td><a  <%  out.print("href='http://localhost:47032/projet_java/NiveauController?action=show&id="+liste_niveau.get(i).getId()+ " '"); %>>voir</a></td>
                  <td><a   <%  out.print("href='http://localhost:47032/projet_java/NiveauController?action=edit&id="+liste_niveau.get(i).getId()+ " '"); %>>modifier</a></td>
                  <td><a   <%  out.print("href='http://localhost:47032/projet_java/NiveauController?action=delete&id="+liste_niveau.get(i).getId()+ " '"); %>>supprimer</a></td>
              </tr>
                  
              
              
              <%
          }
            
            %>
            </table>
            <a href="http://localhost:47032/projet_java/NiveauController?action=add" >ajouter</a>
    </body>
</html>
