<%-- 
    Document   : showMatiere
    Created on : May 4, 2016, 10:56:43 AM
    Author     : Hsin
--%>

<%@page import="iit.tn.entity.MatiereDAO"%>
<%@page import="iit.tn.entity.Matiere"%>
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
        

            
         coefficient:   ${sessionScope.matiere.coefficient}
         credit:   ${sessionScope.matiere.credit}
        compostage:    ${sessionScope.matiere.num_compostage}
         libelle:    ${sessionScope.matiere.libelle}
          volume c:  ${sessionScope.matiere.volumec}
         volume td:    ${sessionScope.matiere.volumetd}
         volume tp:    ${sessionScope.matiere.volumetp}
            
    </body>
</html>
