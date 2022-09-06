<%-- 
    Document   : logrado
    Created on : 2 sep. 2022, 23:20:00
    Author     : Jesús Paredón
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%@page import="clases.ConexionBD"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>

<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Acceso</title>
  </head>
    <body>
        <h1>Acceso correcto</h1>
        <%
            
            HttpSession ses=request.getSession();
            String correo=(String)ses.getAttribute("correo");
            String contra=(String)ses.getAttribute("contraseña");
            if(contra==null){
                response.sendRedirect("index.jsp");
            }
            String resultado="El correo es: "+correo+"<br>La contraseña es: "+contra;
      
        %>
	
        <table>
            <tr>
                <th><%=resultado%></th>
            </tr>
        </table>
	
            <a href="cerrarses.jsp">
                Cerrar sesión
            </a>
    </body>
</html>