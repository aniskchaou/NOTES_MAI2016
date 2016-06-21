<%-- 
    Document   : listeEnseignant
    Created on : May 2, 2016, 2:08:44 PM
    Author     : Hsin
--%>
<%@page import="iit.tn.entity.MatiereDAO"%>
<%@page import="iit.tn.entity.Matiere"%>
<%@page import="iit.tn.entity.Groupe"%>
<%@page import="iit.tn.entity.GroupeDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="iit.tn.entity.EnseignantDAO"%>
<%@page import="tn.iit.controller.EnseignantController"%>
<%@page import="iit.tn.entity.Enseignant"%>
<%@page import="tn.iit.controller.GroupeController"%>
<%@page import="tn.iit.controller.NiveauController"%>
<%@page import="java.util.List"%>
<%@page import="java.security.acl.Group"%>
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
                <div class="panel-heading"><h3>List Enseignant</h3> </div>
                <div class="panel-body">

                
                 <table class="table">
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
                 <td><c:out  value="${item.id_matiere}"/></td>  
                 <td><c:out  value="${item.id_groupe}"/></td>
                    
                 
                 
                           <td><a  href="http://localhost:47032/projet_java/EnseignantController?action=show&id=${item.id}" class="btn btn-success"> voir</a></td>
                            
                           <td>
                               <c:if  test="${item.id==sessionScope.enseignant_connexion.id}">
                                   
                                   
                               <a href="http://localhost:47032/projet_java/EnseignantController?action=edit&id=${item.id}" class="btn btn-warning">modifier</a>
                               </c:if>
                           </td>
                          
              </tr>
                  
              
              
      
            
            </c:forEach>
            </table>
           
  </div>
            </div>
        </div>
    </body>
</html>
