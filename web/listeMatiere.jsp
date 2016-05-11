<%-- 
    Document   : listeMatiere
    Created on : May 2, 2016, 2:07:33 PM
    Author     : Hsin
--%>

<%@page import="iit.tn.entity.MatiereDAO"%>
<%@page import="iit.tn.entity.Matiere"%>
<%@page import="java.util.List"%>
<%@page import="tn.iit.controller.MatiereController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>liste Matiere</h1>
         <table>
             <tr><td>id</td><td>libelle</td><td>volumec</td><td>volumetd</td><td>volumetp</td><td>coeffiecient</td><td>credit</td><td>enseignant</td><td>num compostage</td></tr>
        <%
            List<Matiere> liste_matiere= (List<Matiere>)session.getAttribute("matieres");  
            
          for(int i=0;i<liste_matiere.size();i++)
          {
              %>
              <tr>
                  <td>
                  <td><%    out.print( liste_matiere.get(i).getId()) ; %></td>
                  <td><% out.print(liste_matiere.get(i).getLibelle()); %></td>
                  <td><% out.print(liste_matiere.get(i).getVolumec()); %></td>
                   <td><% out.print(liste_matiere.get(i).getVolumetd()) ; %></td>
                    <td><% out.print(liste_matiere.get(i).getVolumetp()) ; %></td>
                     <td><% out.print(liste_matiere.get(i).getCoeficient()); %></td>
                      <td><% out.print(liste_matiere.get(i).getCredit()) ; %></td>
                    <td><% out.print(liste_matiere.get(i).getId_enseignant() ) ; %></td>
                    <td><% out.print(liste_matiere.get(i).getId_compostage() ) ; %></td>
                    <td><a   <%  out.print("href='http://localhost:47032/projet_java/MatiereController?action=show&id="+liste_matiere.get(i).getId()+ " '"); %>>voir</a></td>
                    <td><a  <%  out.print("href='http://localhost:47032/projet_java/MatiereController?action=edit&id="+liste_matiere.get(i).getId()+ " '"); %>>modifier</a> </td>
                    <td><a   <%  out.print("href='http://localhost:47032/projet_java/MatiereController?action=delete&id="+liste_matiere.get(i).getId()+ " '"); %>>supprimer</a></td>
              </tr>
                  
              
              
              <%
          }
            
            %>
            </table>
            <a href="http://localhost:47032/projet_java/MatiereController?action=add">ajouter</a>
    </body>
</html>
