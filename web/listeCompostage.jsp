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
        <c:out value="hi" ></c:out> 
        <%   List<NumCompostage> numcompostages = NumCompostageDAO.getAll(); 

        for(int i=0;i<numcompostages.size();i++)
        {      
                NumCompostage     numcompostage=numcompostages.get(i);
               // out.print(numcompostage.getNum_compostage());
            %>
        ${numcompostage.num_compostage}
            
            <%
        }
        
        %>
        <%
  String valeur = "fzr";  
  
  %>
<c:forEach items="${numcompostages}" var="item">
    ${item.id}<br>
</c:forEach>
 


    </body>
</html>

