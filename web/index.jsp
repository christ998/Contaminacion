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
    int enero = (Integer) request.getSession().getAttribute("mediaHospEn");
    int febr = (Integer) request.getSession().getAttribute("mediaHospFe");
    int mar = (Integer) request.getSession().getAttribute("mediaHospMa");
    int abr = (Integer) request.getSession().getAttribute("mediaHospAb");
    int may = (Integer) request.getSession().getAttribute("mediaHospMay");
    int ju = (Integer) request.getSession().getAttribute("mediaHospJu");
    int jl = (Integer) request.getSession().getAttribute("mediaHospJl");
    int ago = (Integer) request.getSession().getAttribute("mediaHospAg");
    int sep = (Integer) request.getSession().getAttribute("mediaHospSe");
    int oc = (Integer) request.getSession().getAttribute("mediaHospOc");
    int nov = (Integer) request.getSession().getAttribute("mediaHospNo");
    int dic = (Integer) request.getSession().getAttribute("mediaHospDi");

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
            Una consecuencia de esto, es el impacto negativo en la salud respiratoria de las personas que viven en la comuna<script>ener</script></h3></br>
        <form action ="Home2" method="post">
            Año = <input type="text" name="agno"></br>
            <input type="submit" value="envio">
        </form>
        <script>
            var ener = <%=enero%>  
            var febr = <%=febr%> 
            var mar = <%=mar%> 
            var abril = <%=abr%> 
            var mayo = <%=may%> 
            var junio = <%=ju%> 
            var julio = <%=jl%>
            var ago = <%=ago%>
            var sep = <%= sep%>
            var oc = <%= oc%>
            var nov = <%= nov%>
            var dic = <%= dic%>
            
            
            window.onload = function () {

                var chart = new CanvasJS.Chart("chartContainer", {
                    animationEnabled: true,
                    title: {
                        text: "Resultados"
                    },
                    axisX: {
                        title: "Mes"
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
                                {x: 1, y: 19, z: 9  , name: "Enero"},
                                {x: 2, y: 15, z: 8, name: "Febrero"},
                                {x: 3, y: 26, z: 12, name: "Marzo"},
                                {x: 4, y: 34, z: 14, name: "Abril"},
                                {x: 5, y: 43, z: 17, name: "Mayo"},
                                {x: 6, y: 45, z: 20, name: "Junio"},
                                {x: 7, y: 46, z: 24, name: "Julio"},
                                {x: 8, y: 35, z: 19, name: "Agosto"},
                                {x: 9, y: 30, z: 15, name: "Septiembre"},
                                {x: 10, y: 25, z: 12, name: "Octubre"},
                                {x: 11, y: 20, z: 10, name: "Noviembre"},
                                {x: 12, y: 17, z: 6, name: "Diciembre"},
                            ]
                        }]
                });
                chart.render();

            }
        </script>

    </body>
</html>
