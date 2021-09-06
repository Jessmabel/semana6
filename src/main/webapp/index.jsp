<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inicio</title>
</head>
<body>
<center>
<h3>Inicio de Sesión</h3>
<form action="profile/controller/Sign_in_controller.jsp" method="post">
<label>Usuario:</label>
<input type="text" name="username" id="username"> <br><br>
<label>Password:</label>
<input type="password" name="password" id="password"><br><br>
<input type="submit" value="Ingresar" id="loginBtn">
</form>
<%
String message=(String)session.getAttribute("login_message");
if(message!=null){
out.println(message);
session.removeAttribute("login_message");
}
%>
</center>
</body>
</html>
