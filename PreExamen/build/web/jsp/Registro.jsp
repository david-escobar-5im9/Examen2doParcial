<%-- 
    Document   : Registro
    Created on : 8/10/2018, 08:15:46 AM
    Author     : itz
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <%
            Connection conexion = null;
            Statement sentencia = null;
            ResultSet resultado = null;
            String url="jdbc:mysql://localhost/lab3";
            String user="root";
            String password="n0m3l0";
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conexion = DriverManager.getConnection(url, user, password);
                sentencia = conexion.createStatement();
                System.out.println("Si se conecto c:");
            }
            catch(Exception e){
                System.out.println("NO se conecto :c");
            }
        %>
        <header>
            <h1 align="center"></h1>
        </header>
        <%
            String usuario = request.getParameter("nombreusu");
            String correo = request.getParameter("correo");
            String contra = request.getParameter("contra");
            String contra2 = request.getParameter("contra2");
            String nombre = request.getParameter("nombre");
            String apellidoPaterno = request.getParameter("apellidoPaterno");
            String apellidoMaterno = request.getParameter("apellidoMaterno");
            String telefono = request.getParameter("telefono");
            String escuela = request.getParameter("escuela");
            String mFav = request.getParameter("materia");
            String dFav = request.getParameter("deporte");
            try{
                if(contra.equals(contra2)){
                    sentencia.executeUpdate("insert into usuario (usuario, contraseña, correo, nombre, apellido_paterno, apellido_materno, telefono, escuela, materiafav, deportefav) values('"+usuario+"','"+correo+"','"+contra+"','"+nombre+"','"+apellidoPaterno+"','"+apellidoMaterno+"','"+telefono+"','"+escuela+"','"+mFav+"','"+dFav+"');");
                    out.println("<script>alert('Registro exitoso uwu')</script>");
                    try{
                        try{
                        Class.forName("com.mysql.jdbc.Driver");
                        conexion = DriverManager.getConnection(url, user, password);
                        sentencia = conexion.createStatement();
                        System.out.println("Si se conecto2 c:");
                    }
                    catch(Exception e){
                        System.out.println("NO se conecto2 :c");
                    }
                    resultado = sentencia.executeQuery("select * from usuarios where usuario = '"+usuario+"' and contra = '"+contra+"'");
                    int contador = 0;
                    while(resultado.next()){
                        contador++;
                    }
                    if(contador == 1){
                        response.sendRedirect("../inicio.jsp");
                    }
                    else{
                        if(contador != 1){
                        try{
                            /* TODO output your page here. You may use following sample code. */
                            out.println("<!DOCTYPE html>");
                            out.println("<html>");
                            out.println("<head>");
                            out.println("<title>Servlet Login</title>");            
                            out.println("</head>");
                            out.println("<body>");
                            out.println("<script>alert('Usuario o contraseña incorrectos')</script>");
                            out.println("<script>window.location='../index.jsp'</script>");
                            out.println("</body>");
                            out.println("</html>");
                            }
                        catch(Exception e){
                    System.out.println("Error en la conexion1");
                }
                    }
                        }
                }catch(Exception e){
                    System.out.println("Error en la conexion2");
                }
                            //out.println("<script>window.location='principal.html'</script>");
                        }       
                else{
                    out.println("<script>alert('Las contraseñas no coinden >:c')</script>");
                    out.println("<script>window.location='../registrarusuarios.jsp'</script>");
                    System.out.println("No entro");
                }
            }catch(Exception e){
                out.println("<script>alert('Registro NO realizado unu')</script>");
                out.println("<script>window.location='../index.jsp'</script>");
            }
        %>
    </body>
</html>