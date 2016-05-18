<%-- 
    Document   : addNote
    Created on : May 12, 2016, 3:19:40 PM
    Author     : Hsin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="http://localhost:47032/projet_java/NoteController" method="post">
            notetp
            <input type="text"  name="notetp"/>
            noteds:
            <input type="text" name="noteds"/>
            note examen :
            <input type="text" name="noteexaman"/>
            note presencielle:
            <input type="text" name="notepresencielle"/>





            <select name="id_etudiant">
                <c:forEach items="${sessionScope.etudiants}" var="item">
                    <option   value="<c:out  value="${item.id}"/>" ><c:out  value="${item.nom}"/></option>
                </c:forEach>
            </select>

            <select name="id_matiere">
                <c:forEach items="${sessionScope.matieres}" var="item">
                    <option   value="<c:out  value="${item.id}"/>"><c:out  value="${item.libelle}"/></option>
                </c:forEach>
            </select>


            <select name="id_compostage">
                <c:forEach items="${sessionScope.numcompostages}" var="item">
                    <option   value="<c:out  value="${item.id}"/>"><c:out  value="${item.num_compostage}"/></option>
                </c:forEach>
            </select>

            <input type="hidden" name="action" value="create"/>
            <input type="submit" value="ajouter"/>
        </form>
    </body>
</html>
