<%@page import="bean.Login_Bean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MI PERFIL</title>
</head>
<body>
 <%
 Login_Bean obj_Login_Bean=(Login_Bean)session.getAttribute("user_session");
 if(obj_Login_Bean==null){
 session.setAttribute("login_message", "Inicie sesión, Por favor");
 %>
 <script type="text/javascript">
 window.location.href="http://localhost:8070/login/index.jsp";
 </script>
 <% 
 }else{
 %>
<center>
<h1>MI PERFIL</h1>
<table border="1">
<tr>
<td>" Usuario:  <label style="font-weight:bold"><%=obj_Login_Bean.getUsername() %> "</label></td>
<td> 
<a href="http://localhost:8070/login/Signoutcontroller" id="salir">Salir</a>
</td>
</tr>
</table>
<br>
Nombre:
<label ><%=obj_Login_Bean.getNombre()%></label><br>
Apellido:
<label ><%=obj_Login_Bean.getApellido()%> </label><br>
Rut:
<label ><%=obj_Login_Bean.getRut()%> </label><br>
Telefono:
<label ><%=obj_Login_Bean.getTelefono()%> </label><br>
<%
 }
%>
</center>
</body>
</html>