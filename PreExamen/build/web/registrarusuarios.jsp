<%-- 
    Document   : registrarusuarios
    Created on : 17/10/2018, 06:03:23 PM
    Author     : itz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Inicio</title>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="xdxd.css">
    </head>
    <body>
        <header>
            <h1 align="center">¡Registrate aquí!</h1>
            <a href="index.jsp" class="ey">Regresar</a>
        </header>
        <div class="row">  
                    <form method="post" action="jsp/Registro.jsp">
                        <span>
                        <input type="text" name="nombre" id="nombre" placeholder="Nombre" class="slide-up">
                        <label for="nombre">Nombre</label>
                        </span>
                        <br>
                        <br>
                        <span>
                        <input type="text" name="apellidoPaterno"  id="apellidoPaterno" placeholder="Apellido Paterno" class="slide-up">
                        <label for="apellidoPaterno">Apellido Paterno</label>
                        </span>
                        <br>
                        <br>
                        <span>
                        <input type="text" name="apellidoMaterno"  id="apellidoMaterno" placeholder="Apellido Materno" class="slide-up">
                        <label for="apellidoMaterno">Apellido Materno</label>
                        </span>
                        <br>
                        <br>
                        <span>
                        <input type="text" name="telefono"  id="telefono" placeholder="Telefono" class="slide-up">
                        <label for="telefono">Telefono</label>
                        </span>
                        <br>
                        <br>
                        <span>
                        <input type="text" name="escuela"  id="escuela" placeholder="Escuela" class="slide-up">
                        <label for="escuela">Escuela</label>
                        </span>
                        <br>
                        <br>
                        <span>
                        <input type="text" name="materiaFav"  id="materiaFav" placeholder="Materia Favorita" class="slide-up">
                        <label for="materiaFav">Materia Favorita</label>
                        </span>
                        <br>
                        <br>
                        <span>
                        <input type="text" name="deporteFav" id="deporteFav" placeholder="Deporte Favorito" class="slide-up">
                        <label for="deporteFav">Deporte Favorito</label>
                        </span>
                        <br>
                        <br>
                        <span>
                        <input type="text" name="nombreusu"  id="nombreusu" placeholder="Nombre de usuario" class="slide-up">
                        <label for="nombreusu">Nombre de Usuario</label>
                        </span>
                        <br>
                        <br>
                        <span>
                        <input type="email" name="correo"  id="correo" placeholder="Correo" class="slide-up">
                        <label for="correo">Correo</label>
                        </span>
                        <br>
                        <br>
                        <span>
                        <input type="password" name="contra"  id="contra" placeholder="Contraseña" class="slide-up">
                        <label for="contra">Contraseña</label>
                        </span>
                        <br>
                        <br>
                        <span>
                        <input type="password" name="contra2"  id="contra2" placeholder="Repetir Contraseña" class="slide-up">
                        <label for="contra2">Repetir contraseña</label>
                        </span>
                        <br>
                        <br>
                        <input type="submit" value="Registrarme" class="nop">
                    </form>
        </div>
    </body>
</html>
