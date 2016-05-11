<%-- 
    Document   : showMatiere
    Created on : May 4, 2016, 10:56:43 AM
    Author     : Hsin
--%>

<%@page import="iit.tn.entity.MatiereDAO"%>
<%@page import="iit.tn.entity.Matiere"%>

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
            Matiere m=(Matiere)session.getAttribute("matiere");
            
            out.print("coefficient: "+m.getCoeficient());
            out.print("credit: "+m.getCredit());
            out.print("compostage: "+m.getId_compostage());
            out.print("libelle: "+m.getLibelle());
            out.print("volume c: "+m.getVolumec());
            out.print("volume td: "+m.getVolumetd());
            out.print("volume tp: "+m.getVolumetp());
         
            
            
            %>
    </body>
</html>
