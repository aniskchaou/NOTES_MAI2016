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
                <div class="panel-heading"><h3>Liste compostage</h3> </div>
                <div class="panel-body">

            <table class="table">
                <tr><td>id</td><td>num compostage</td></tr>
                <c:forEach items="${numcompostages}" var="item">
                    <tr><td> ${item.id}</td><td> ${item.num_compostage}</td></tr>
                   
               </c:forEach>
                
            </table>

 

        <a class="btn btn-default" href="http://localhost:47032/projet_java/NumCompostageController?action=add">ajouter compostage</a>
  </div>
            </div>
        </div>
    </body>
</html>
