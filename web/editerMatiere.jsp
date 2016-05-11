<%-- 
    Document   : editerMatiere
    Created on : May 5, 2016, 4:13:52 PM
    Author     : Hsin
--%>

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
          
 Matiere  matiere=(Matiere)session.getAttribute("matiere_edit");  
  //      Matiere  matiere=new Matiere();
        %>
         <form  action="http://localhost:47032/projet_java/MatiereController" method="post">
            libelle
            <input name="libelle"  <%  out.print("value='"+matiere.getLibelle()+ " '"); %> />
            volume c
            <input  name="volumec"  <%  out.print("value='"+matiere.getVolumec()+ " '"); %>  />
            volume td
            <input  name="volumetd" <%  out.print("value='"+matiere.getVolumetd()+ " '"); %>  />
             volume tp
            <input  name="volumetp" <%  out.print("value='"+matiere.getVolumetp()+ " '"); %>  />
             coefficient
            <input  name="coef" <%  out.print("value='"+matiere.getCoeficient()+ " '"); %> />
            credit
            <input  name="credit" <%  out.print("value='"+matiere.getCredit()+ " '"); %> />
            Num compostage
            <select name="id_num_compostage">
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
        <input name="id"  <%  out.print("value='"+matiere.getId()+ "'");  %>  type="hidden"/>
            <input   name="action" value="update" type="hidden"/>
            <input  type="submit" value="ajouter"/>
        </form>

    </body>
</html>
