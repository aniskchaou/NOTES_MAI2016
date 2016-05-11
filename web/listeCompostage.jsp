<%-- 
    Document   : listeCompostage
    Created on : May 2, 2016, 2:09:03 PM
    Author     : Hsin
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="iit.tn.entity.NumCompostageDAO"%>
<%@page import="iit.tn.entity.NumCompostage"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html >
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
      
            <table>
                <tr><td>id</td><td>num compostage</td></tr>
                <c:forEach items="${numcompostages}" var="item">
                    <tr><td> ${item.id}</td><td> ${item.num_compostage}</td></tr>
                   
               </c:forEach>
                
            </table>

 

        <a href="http://localhost:47032/projet_java/NumCompostageController?action=add">ajouter compostage</a>
    </body>
</html>

