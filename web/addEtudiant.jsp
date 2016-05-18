<%-- 
    Document   : addEtudiant
    Created on : Apr 27, 2016, 8:41:53 PM
    Author     : Hsin
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="iit.tn.entity.MatiereDAO"%>
<%@page import="iit.tn.entity.GroupeDAO"%>
<%@page import="iit.tn.entity.Groupe"%>
<%@page import="tn.iit.controller.GroupeController"%>
<%@page import="iit.tn.entity.Matiere"%>
<%@page import="java.util.List"%>
<%@page import="tn.iit.controller.MatiereController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link  href="css/bootstrap.css"  rel="stylesheet" />
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <title>Ajouter Etudiant</title>
    </head>
    <body>
        <h1></h1>
        <div class="container">
            <div class="panel panel-default">
                <div class="panel-heading"><h2>Ajouter Etudiant</h2> </div>
                <div class="panel-body">



                    <form action="http://localhost:47032/projet_java/EtudiantController" method="post">

                        <div class="form-group">
                            <label for="exampleInputEmail1">nom</label>   
                            
                            <input  class="form-control" type="text" name="nom"/>
                        </div>

                            <div  class="form-group">
                                <label for="exampleInputEmail1">prenom</label>     
                                
                                <input  class="form-control" type="text" name="prenom"/>
                            </div>


                                <div class="form-group">
                                    <label for="exampleInputEmail1">adresse</label>   
                                    
                                    <input class="form-control" type="text" name="adresse"/>

                                    <input type="hidden" name="action" value="create"/>
                                </div>

                                    <div class="form-group">
                                        <label for="exampleInputEmail1">num serie</label>  
                                        
                                        <input class="form-control" type="text" name="numserie"/>
                                    </div>

                                        <div class="form-group">
                                            <label for="exampleInputEmail1">tel</label>    
                                            
                                            <input class="form-control"  type="text" name="tel"/>
                                        </div>

                                            <div class="form-group">
                                                <label for="exampleInputEmail1">groupe</label>  
                                                

                                                <select  class="form-control" name="id_groupe">
                                                     <c:forEach items="${sessionScope.groupes}" var="item">
                                                        <option   value="<c:out  value="${item.id}"/>"><c:out  value="${item.nom}"/></option>
                                                    </c:forEach>
                                                </select>
                                            </div>



                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">matiere</label>
                                                    
                                                    <select  class="form-control" name="id_matiere">
                                                        <c:forEach items="${sessionScope.matieres}" var="item">
                                                            <option   value="<c:out  value="${item.id}"/>"><c:out  value="${item.libelle}"/></option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                                <input type="submit" value="ajouter"/>

                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    </body>
                                    </html>
