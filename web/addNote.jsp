<%-- 
    Document   : addNote
    Created on : May 12, 2016, 3:19:40 PM
    Author     : Hsin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="/menu.jsp" %>
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
                <div class="panel-heading"><h3>Ajouter Note</h3> </div>
                <div class="panel-body">
                    <form action="http://localhost:47032/projet_java/NoteController" method="post">


                        <div class="form-group">
                            notetp
                            <input type="text"  name="notetp" class="form-control"/>
                        </div>

                        <div class="form-group">
                            noteds:
                            <input type="text" name="noteds" class="form-control"/>

                        </div>
                      

                        <div class="form-group">
                            note presencielle:
                            <input type="text" name="notepresencielle" class="form-control"/>
                        </div>



                        <div class="form-group">
                            <select name="id_etudiant" class="form-control">
                                <c:forEach items="${sessionScope.etudiants}" var="item">
                                    <option   value="<c:out  value="${item.id}"/>" ><c:out  value="${item.nom}"/></option>
                                </c:forEach>
                            </select>
                        </div>

                        <div class="form-group">
                            <select name="id_matiere" class="form-control">
                                <c:forEach items="${sessionScope.matieres}" var="item">
                                    <option   value="<c:out  value="${item.id}"/>"><c:out  value="${item.libelle}"/></option>
                                </c:forEach>
                            </select>
                        </div>
                     
                        <input type="hidden" name="action" value="create"/>
                        <input type="submit" value="valider"/>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
