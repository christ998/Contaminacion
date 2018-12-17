<%-- 
    Document   : index
    Created on : 16-12-2018, 11:57:47
    Author     : Christian
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language = "java"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="d" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="e" %>
<%@page import="Modelo.BubbleDataModel" %>
<%
    int n1 = (Integer) request.getSession().getAttribute("mediaHospFe");
    int n2 = (Integer) request.getSession().getAttribute("mediaHospEn");
    int n3 = (Integer) request.getSession().getAttribute("mediaHospMa");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contaminacion</title>
    </head>
    <for>

    </form>
    <body style="background-color:rgb(0, 255, 136);">
        <div id="chartContainer" style="height: 370px; width: 100%;"></div>
        <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
        <h1>Contaminación en Temuco</h1>
        <h3>Uno de los problemas que impactan a la sociedad, es la contaminación del aire.
            En particular Temuco, esta se caracteriza por tener uno de los niveles más altos en comparación con otras ciudades de Chile.
            Una consecuencia de esto, es el impacto negativo en la salud respiratoria de las personas que viven en la comuna<script>n1</script></h3></br>
        <form action ="Home2" method="post">
            Año = <input type="text" name="agno"></br>
            <input type="submit" value="envio">
        </form>
        <script>
            var n1 = <%=n1%>
            var n2 = <%=n2%>
            var n3 = <%=n3%>
            window.onload = function () {

                var chart = new CanvasJS.Chart("chartContainer", {
                    animationEnabled: true,
                    title: {
                        text: "Resultados"
                    },
                    axisX: {
                        title: "Fecha"
                    },
                    axisY: {
                        title: "nro de particulas"
                    },
                    legend: {
                        horizontalAlign: "left"
                    },
                    data: [{
                            type: "bubble",
                            showInLegend: true,
                            legendText: "Size of Bubble Represents Population in Millions",
                            legendMarkerType: "circle",
                            legendMarkerColor: "grey",
                            toolTipContent: "<b>{name}</b><br/>Mes: {x} <br/> nro particulas: {y}<br/> Hospitalizados: {z}",
                            dataPoints: [
                                //{ x: 68.3, y: 2.4, z: 1309.05 , name: "India"},
                                //{ x: 76, y: 1.57, z:1371.22, name: "China"},
                                {x: 1, y: 4.26, z: n2  , name: "Enero"},
                                {x: 2, y: 4.51, z: 36.115, name: "Febrero"},
                                {x: 3, y: 1.84, z: 320.896, name: "Marzo"},
                                {x: 4, y: 2.44, z: 258.162, name: "Abril"},
                                {x: 5, y: 1.78, z: 225.962, name: "Mayo"},
                                {x: 6, y: 2.21, z: 125.890, name: "Junio"},
                                {x: 7, y: 5.59, z: 181.181, name: "Julio"},
                                {x: 8, y: 1.75, z: 144.096, name: "Agosto"},
                                {x: 9, y: 1.46, z: 127.141, name: "Septiembre"},
                                {x: 10, y: 1.83, z: 23.789, name: "Octubre"},
                                {x: 11, y: 3.31, z: 93.778, name: "Noviembre"},
                                {x: 12, y: 1.81, z: 65.128, name: "Diciembre"},
                            ]
                        }]
                });
                chart.render();

            }
        </script>

    </body>
</html>
