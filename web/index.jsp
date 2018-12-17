<%-- 
    Document   : index
    Created on : 16-12-2018, 11:57:47
    Author     : Christian
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language = "java"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contaminacion</title>
    </head>
    <body style="background-color:rgb(0, 255, 136);">
        <h1>Contaminación en Temuco</h1>
        <h3>Uno de los problemas que impactan a la sociedad, es la contaminación del aire.
            En particular Temuco, esta se caracteriza por tener uno de los niveles más altos en comparación con otras ciudades de Chile.
            Una consecuencia de esto, es el impacto negativo en la salud respiratoria de las personas que viven en la comuna</h3>
        
        <c:forEach var="temp" items="${datos}">
            ${temp}<br>
        </c:forEach>
        
    </body>
</html>
