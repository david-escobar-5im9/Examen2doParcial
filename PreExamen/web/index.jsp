<%-- 
    Document   : index
    Created on : 8/10/2018, 08:16:30 AM
    Author     : itz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="xdxd.css">
        <title>JPreexamen</title>
    </head>
    <body>
        <h1 align="center">Examen Segundo Parcial</h1>
        <div align="center">
            <form method="post" action="jsp/InicioSesion.jsp">
            <input type="submit" value="Iniciar Sesión" class="nop">
            </form>
            <br>
            <br>
            <form method="post" action="registrarusuarios.jsp">
            <input type="submit" value="Registarse" class="nop">
            </form>
            <br>
            <br>
            <form method="post" action="jsp/Consulta.jsp">
            <input type="submit" value="Consultar todos" class="nop">
            </form>
        </div>
    </body>
</html>

