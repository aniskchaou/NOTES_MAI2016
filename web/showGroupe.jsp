<%-- 
    Document   : showGroupe
    Created on : Apr 27, 2016, 9:00:50 PM
    Author     : Hsin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="iit.tn.entity.Groupe"%>
<%@page import="iit.tn.entity.Niveau"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
  
        niveau:<c:out value="${sessionScope.groupe.id_niveau}"/>
        nom:<c:out value="${sessionScope.groupe.nom}"/>
    </body>
</html>
