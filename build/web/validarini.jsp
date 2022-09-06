<%-- 
    Document   : validarini
    Created on : 2 sep. 2022, 23:20:25
    Author     : Jesús Paredón
--%>

<%@page contentType="text/html" session="true" pageEncoding="UTF-8"%>
<%@page import="clases.ConexionBD"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>

<%
   Connection conn=null;
   ResultSet rs=null;
   Statement st=null;
   String correo=request.getParameter("correo");
   String contra=request.getParameter("pass");
   
   
    try{

        conn=ConexionBD.conectarBaseDatos();
      
        st=conn.createStatement();
        
        rs=st.executeQuery("select * from inicio where correo_ini='"+correo+"';");
        
        if(rs.next()){
            out.println(correo+"<br>"+contra);
            do{
                if(correo.equals(rs.getString("correo_ini")) && contra.equals(rs.getString("pass_ini"))){
                    out.println(rs.getString("correo_ini")+ "  "+rs.getString("pass_ini")+"<br>");
                    HttpSession ses=request.getSession();
                    ses.setAttribute("correo",correo);
                    ses.setAttribute("contraseña",contra);
                    response.sendRedirect("logrado.jsp");
                    
                    break;
                }else{
                    request.setAttribute("error", "si");
                    request.getRequestDispatcher("index.jsp").forward(request,response);
                }
            }while(rs.next());
        }else{
            request.setAttribute("error", "si");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
                
                
    }catch(Exception e){
        out.println(e);
    }
   
        
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <body>
      
    </body>
</html>

