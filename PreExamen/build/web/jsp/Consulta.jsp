<%-- 
    Document   : Consulta
    Created on : 8/10/2018, 08:15:56 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../xdxd.css">
        <title>Todos</title>
        <script>
            function consultar(){}
        </script>
    </head>
    <body>
        <header>
        <h1 align="center">Abajo se encuentran los usuarios registrados uwu</h1>
        <a href="../index.jsp">Regresar</a>
        </header>
        
        <%@page import="java.sql.*,java.io.*" %>
        <%  
            out.println("<br>");
            Connection conexion=null;
            Statement sentencia=null;
            ResultSet resultado=null;
            String url="jdbc:mysql://localhost/lab3";
            String userName="root";
            String password="n0m3l0";
            try{
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                conexion=DriverManager.getConnection(url, userName, password);
                sentencia=conexion.createStatement();    
                System.out.println("conecta");
            }
            catch(SQLException error){
                out.println(error.toString());
                System.out.println("no conecta");
            }
            try{ 
                resultado = sentencia.executeQuery("select * from usuario");
                out.println("<section>");
                out.println("<article>");
                out.println("<table border=0.5 align='center' class='dat'>");
                out.println("<tr class='datou'><th class='daa'>id</th>");
                out.println("<th class='daa'>Usuario</th>");
                out.println("<th class='daa'>Contraseña</th>");
                out.println("<th class='daa'>Correo</th>");
                out.println("<th class='daa'>Nombre</th>");
                out.println("<th class='daa'>Apellido Paterno</th>");
                out.println("<th class='daa'>Apellido Materno</th>");
                out.println("<th class='daa'>Telefono</th>");
                out.println("<th class='daa'>Escuela</th>");
                out.println("<th class='daa'>Materia Favorita</th>");
                out.println("<th class='daa'>Deporte Favorito</th>");
                out.println("<th class='daa'>id Rol</th>");
                while(resultado.next()){
                    int idd= resultado.getInt("idusuario");
                    String usu= resultado.getString("usuario");
                    String contra= resultado.getString("contraseña");
                    String correo= resultado.getString("correo");
                    String neim= resultado.getString("nombre");
                    String apat= resultado.getString("apellido_paterno");
                    String amat= resultado.getString("apellido_materno");
                    String tel= resultado.getString("telefono");
                    String esc= resultado.getString("escuela");
                    String mf= resultado.getString("materiafav");
                    String df= resultado.getString("deportefav");
                    int idr= resultado.getInt("idrol");
                    out.println("<tr class='datou'><th class='da'>"+idd+"</th>");
                    out.println("<th class='da'>"+usu+"</th>");
                    out.println("<th class='da'>"+contra+"</th>");
                    out.println("<th class='da'>"+correo+"</th>");
                    out.println("<th class='da'>"+neim+"</th>");
                    out.println("<th class='da'>"+apat+"</th>");
                    out.println("<th class='da'>"+amat+"</th>");
                    out.println("<th class='da'>"+tel+"</th>");
                    out.println("<th class='da'>"+esc+"</th>");
                    out.println("<th class='da'>"+mf+"</th>");
                    out.println("<th class='da'>"+df+"</th>");
                    out.println("<th class='da'>"+idr+"</th>");
                    out.println("</article>");
                    out.println("</section>");
                }
            }
            catch(SQLException error){
                out.println(error.toString()); 
            }
        %>
        <br>
    </body>
</html>

