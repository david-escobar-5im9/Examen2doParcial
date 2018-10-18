<%-- 
    Document   : InicioSesion
    Created on : 
    Author     : itz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../xdxd.css">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 align="center">Inicia Sesión</h1>
        <div class="row">  
        <form method="post" action="../LoginServlet">
                        <span>
                            <input type="text" name="usuario" id="usuario" placeholder="Ingresa tu nombre de usuario" class="slide-up">
                            <label for="usuario">Usuario</label>
                        </span>
                        <br>
                        <br>
                        <span>
                        <input type="password" name="password" id="password" placeholder="Ingresa tu contraseña" class="slide-up">
                        <label for="password">Contraseña</label>
                        </span>
                        <br>
                        <br>
                        <input type="submit" value="Ingresar" class="nop">
                    </form>
            </div>  
    </body>
</html>
