<%-- 
    Document   : listeEnseignant
    Created on : May 2, 2016, 2:08:44 PM
    Author     : Hsin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="iit.tn.entity.EnseignantDAO"%>
<%@page import="tn.iit.controller.EnseignantController"%>
<%@page import="iit.tn.entity.Enseignant"%>
<%@page import="tn.iit.controller.GroupeController"%>
<%@page import="tn.iit.controller.NiveauController"%>
<%@page import="java.util.List"%>
<%@page import="java.security.acl.Group"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
                
                 <table>
             <tr><td>id</td><td>nombre groupe</td><td>nom</td><td>prenom</td><td>adresse</td><td>matricule fiscale</td><td>tel</td><td>groupe</td><td>matiere</td></tr>
        
              <c:forEach items="${sessionScope.enseignants}" var="item">
                
           
             

              <tr>
                  <td>
                  <td> <c:out  value="${item.id}"/> </td>
                  <td><c:out  value="${item.nom}"/></td>
                  <td><c:out  value="${item.prenom}"/></td>
                 <td><c:out  value="${item.adresse}"/></td>
                 <td><c:out  value="${item.matricule_fiscale}"/></td>
                 <td><c:out  value="${item.tel}"/></td>
                      <td><c:out  value="${item.id_groupe}"/></td>
                           <td><c:out  value="${item.id_matiere}"/></td>
                 
                 
                           <td><a  href="http://localhost:47032/projet_java/EnseignantController?action=show&id=${item.id}"> voir</a></td>
                           <td><a href="http://localhost:47032/projet_java/EnseignantController?action=edit&id=${item.id}">modifier</a></td>
                          
              </tr>
                  
              
              
      
            
            </c:forEach>
            </table>
           
    </body>
</html>
