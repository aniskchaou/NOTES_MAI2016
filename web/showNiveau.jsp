<%-- 
    Document   : showNiveau
    Created on : May 4, 2016, 10:56:59 AM
    Author     : Hsin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="iit.tn.entity.NiveauDAO"%>
<%@page import="iit.tn.entity.Niveau"%>
<%@page import="tn.iit.controller.NiveauController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>

            nombre de groupe: <c:out  value="${sessionScope.niveau.nb_groupe}"/>
            nom: <c:out  value="${sessionScope.niveau.nom}"/>
    </body>
</html>
