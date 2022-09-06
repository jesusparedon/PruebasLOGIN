<%-- 
    Document   : index
    Created on : 2 sep. 2022, 23:18:21
    Author     : Jesús Paredón
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>

<%

    HttpSession ses = request.getSession();

    if(ses.getAttribute("ses")!=null){
        response.sendRedirect("./logrado.jsp");
    } 

%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Inicio de sesion</title>
  </head>
  <body>
      <div><h1>INICIAR SESIÓN</h1></div>
  
<div class="form-inner">
    <form action="validarini.jsp" class="login" method="post">
            <div class="field">
              <input type="email" placeholder="Correo electrónico" name="correo" id="correo">
            </div>
            <div class="field">
              <input type="password" placeholder="Contraseña"  name="pass" id="pass">
            </div>
            <%
                if(request.getAttribute("error")!=null){
                    String error =(String)request.getAttribute("error"); 
                    if(error.equals("si")){
                        out.println("<div class='error'><br>Introduce una contraseña y usuario correctos.<br></div>");
                    }
                }
            %>
            <div class="field btn">
              <div class="btn-layer">
            </div>
            <input type="submit" value="Entrar">
            </div>
  
            </form>
      
</div>
<script>
      const loginText = document.querySelector(".title-text .login");
      const loginForm = document.querySelector("form.login");
      const loginBtn = document.querySelector("label.login");
      const signupBtn = document.querySelector("label.signup");
      const signupLink = document.querySelector("form .signup-link a");
      signupBtn.onclick = (()=>{
        loginForm.style.marginLeft = "-50%";
        loginText.style.marginLeft = "-50%";
      });
      loginBtn.onclick = (()=>{
        loginForm.style.marginLeft = "0%";
        loginText.style.marginLeft = "0%";
      });
      signupLink.onclick = (()=>{
        signupBtn.click();
        return false;
      });
      
      
    </script>
 
  </body>
</html>
