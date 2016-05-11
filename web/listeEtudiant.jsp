

<%@page import="tn.iit.controller.EtudiantController"%>
<%@page import="java.util.List"%>
<%@page import="iit.tn.entity.Etudiant"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>Liste Etudiant</h1>
         <table>
             <tr><td>id</td><td>nom</td><td>prenom</td><td>tel</td><td>groupe</td><td>matiere</td></tr>
                <%   List<Etudiant>   liste_etudiant=(List<Etudiant>)session.getAttribute("etudiants");  
             for(int i=0;i<liste_etudiant.size();i++)
          {
              %>
              <tr>
                  <td>
                  <td><%   out.print( liste_etudiant.get(i).getId()) ; %></td>
                  <td><% out.print(liste_etudiant.get(i).getNom()); %></td>
                  <td><% out.print(liste_etudiant.get(i).getPrenom()); %></td>
                 <td><% out.print(liste_etudiant.get(i).getTel()); %></td>
                      <td><% out.print(liste_etudiant.get(i).getId_groupe()); %></td>
                           <td><% out.print(liste_etudiant.get(i).getId_matiere()); %></td>
                 
                 
                           <td><a <%  out.print("href='http://localhost:47032/projet_java/EtudiantController?action=show&id="+liste_etudiant.get(i).getId()+ " '"); %>>voir</a></td>
                           <td><a <%  out.print("href='http://localhost:47032/projet_java/EtudiantController?action=edit&id="+liste_etudiant.get(i).getId()+ " '"); %>>modifier</a></td>
                           <td><a <%  out.print("href='http://localhost:47032/projet_java/EtudiantController?action=delete&id="+liste_etudiant.get(i).getId()+ " '"); %>>supprimer </a></td>
              </tr>
                  
              
              
              <%
          }
            
            %>
            </table>
            <a href="http://localhost:47032/projet_java/EtudiantController?action=add">ajouter</a>
                
    </body>
</html>
