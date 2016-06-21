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
                    
                    <body>
                      
                                 <table class="table">
             <tr><td>id</td><td>numero compostage</td><td>note examen</td></tr>
             <c:forEach items="${sessionScope.notes}" var="item">

              <tr>
                 
                  <td>${item.id}</td>
                  <td>${item.id_compostage}</td>
                  <td>
                      <form action="http://localhost:47032/projet_java/NoteController?action=setnoteexaman" method="POST">
                 <input type="hidden" name="id" value="${item.id}">
                 
                        <input type="hidden" value="${item.id_compostage}" name="id_compostage"/>
                 <input name="noteexaman"  />
                 
                  <input value="valider" type="submit"/>
                      </form>
                  </td>
              </tr>
                  
              
              
         
            </c:forEach>
            </table>

                        <a class="btn btn-default"  href="http://localhost:47032/projet_java/NoteController?action=showall" >voir resume</a>
                </div>
            </div>
        </div>
    </body>
</html>
