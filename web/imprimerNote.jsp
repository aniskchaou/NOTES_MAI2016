<%-- 
    Document   : imprimerNote
    Created on : Jun 20, 2016, 5:38:48 PM
    Author     : Hsin
--%>

<%@page import="iit.tn.entity.Note"%>
<%@page import="java.util.List"%>
<%@page import="iit.tn.entity.MatiereDAO"%>
<%@page import="iit.tn.entity.Matiere"%>
<%@page import="iit.tn.entity.Matiere"%>
<%@page import="iit.tn.entity.Etudiant"%>
<%@page import="iit.tn.entity.EtudiantDAO"%>
<%@page import="iit.tn.entity.EtudiantDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%! public int i; %>
                <A HREF="javascript:window.print()">Imprimer</A>
                        <table style="margin: 100px;" class="table" align="middle" border="5">
                            <tr><td>id</td><td>etudiant</td><td>matiere</td> <td>notetp</td><td>noteds</td><td>note presencielle</td><td>note examen</td></tr>
                            <%    List<Note> notess = (List<Note>) session.getAttribute("notes");


                        %>
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

                             

                                <td><%= notess.get(i).getNotepresecielle()%></td>
                                <td><%= notess.get(i).getNoteexaman() %></td>
                                
                            </tr>




                            <% }%>
                        </table>
    </body>
</html>
