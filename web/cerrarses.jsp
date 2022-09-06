<%-- 
    Document   : cerrarses
    Created on : 5/09/2022, 07:35:31 PM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%
    HttpSession ses=request.getSession();
    ses.invalidate();
    response.sendRedirect("index.jsp");
%>
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
    </body>
    
</html>
