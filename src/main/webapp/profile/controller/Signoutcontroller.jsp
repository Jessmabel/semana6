<%
session.removeAttribute("user_session");
session.setAttribute("login_message", "Cierre de sesi�n exitosa");
%>
<script type="text/javascript">
window.location.href="http://localhost:8070/login/index.jsp";
</script>