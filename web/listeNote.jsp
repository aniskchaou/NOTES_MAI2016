<%-- 
    Document   : listeNote
    Created on : May 12, 2016, 3:17:35 PM
    Author     : Hsin
--%>
<%@page import="iit.tn.entity.Etudiant"%>
<%@page import="java.util.List"%>
<%@page import="iit.tn.entity.Matiere"%>
<%@page import="iit.tn.entity.MatiereDAO"%>
<%@page import="iit.tn.entity.Note"%>
<%@page import="iit.tn.entity.EtudiantDAO"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include  file="/menu.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                <div class="panel-heading"><h3>Liste Note</h3> </div>
                <div class="panel-body">
                    <%! public int i;%>
                    <body>
                        <%    List<Note> notess = (List<Note>) session.getAttribute("notes");


                        %>
                        <table class="table">
                            <tr><td>id</td><td>etudiant</td><td>matiere</td> <td>notetp</td><td>noteds</td><td>note examen</td><td>note presencielle</td><td></td><td></td><td></td></tr>

                            <%  for (i = 0; i < notess.size(); i++) {
                            %>

                            <tr>

                                <td><%=notess.get(i).getId()%></td>
                                <%        Etudiant etudiant = EtudiantDAO.getEtudiantById(String.valueOf(notess.get(i).getId_etudiant()));%>

                                <td><%= etudiant.getNom() + "" + etudiant.getPrenom()%></td>
                                <%      Matiere matiere = MatiereDAO.getMatiereById(String.valueOf(notess.get(i).getId_matiere()));%>
                                <td><%=  matiere.getLibelle()%></td>   

                                <td><%=  notess.get(i).getNotetp()%></td>

                                <td><%= notess.get(i).getNodeds()%></td>

                                <td><%= notess.get(i).getNoteexaman()%></td>

                                <td><%= notess.get(i).getNotepresecielle()%></td>

                                <td><a class="btn btn-success"  <% out.print("href=http://localhost:47032/projet_java/NoteController?action=show&id=" + notess.get(i).getId());%> >voir</a></td>
                                <td><a class="btn btn-warning"   <% out.print("href=http://localhost:47032/projet_java/NoteController?action=edit&id=" + notess.get(i).getId());%>>modifier</a></td>
                                <td><a class="btn btn-danger"  <%   out.print("href=http://localhost:47032/projet_java/NoteController?action=delete&id=" + notess.get(i).getId());%>>supprimer</a></td>
                            </tr>




                            <% }%>
                        </table>

                        <a class="btn btn-default"  href="http://localhost:47032/projet_java/NoteController?action=add" >ajouter</a>
                </div>
            </div>
        </div>
    </body>
</html>
