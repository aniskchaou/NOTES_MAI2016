<%-- 
    Document   : addMatiere
    Created on : Apr 28, 2016, 11:10:05 AM
    Author     : Hsin
--%>

<%@page import="iit.tn.entity.EnseignantDAO"%>
<%@page import="iit.tn.entity.NumCompostageDAO"%>
<%@page import="tn.iit.controller.NumCompostageController"%>
<%@page import="iit.tn.entity.NumCompostage"%>
<%@page import="tn.iit.controller.EnseignantController"%>
<%@page import="iit.tn.entity.Enseignant"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
      <form  action="http://localhost:47032/projet_java/MatiereController" method="post">
            libelle
            <input name="libelle"/>
            volume c
            <input  name="volumec"/>
            volume td
            <input  name="volumetd"/>
             volume tp
            <input  name="volumetp"/>
             coefficient
            <input  name="coeffiecient"/>
            credit
            <input  name="credit"/>
            Num compostage
            <select name="num_compostage">
            <%
                List<NumCompostage> liste=NumCompostageDAO.getAll();
                
                 for(int i=0;i<liste.size();i++)
                 {
                     out.print("<option value='"+liste.get(i).getId()+"'>"+liste.get(i).getNum_compostage()+"</option>");
                 }
            
        %>
            </select>
            
                         <select name="id_enseignant">
            <%
                List<Enseignant> liste_enseignant=EnseignantDAO.getAll();
                
                 for(int i=0;i<liste_enseignant.size();i++)
                 {
                     out.print("<option value='"+liste_enseignant.get(i).getId()+"'>"+liste_enseignant.get(i).getNom()+"</option>");
                 }
            
        %>
            </select>
      <input type="hidden" name="action" value="ajouter_matiere"/>
            <input  type="submit" value="ajouter"/>
        </form>
        
    </body>
</html>
