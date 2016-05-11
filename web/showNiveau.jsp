<%-- 
    Document   : showNiveau
    Created on : May 4, 2016, 10:56:59 AM
    Author     : Hsin
--%>

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
        <%
            Niveau  n=(Niveau)session.getAttribute("niveau");
            
       out.print("nombre de groupe: "+n.getNb_groupe());
       out.print("nom: "+n.getNom());
            
            
            
            
            %>
    </body>
</html>
