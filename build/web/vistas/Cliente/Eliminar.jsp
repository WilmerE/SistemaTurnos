<%-- 
    Document   : Eliminar
    Created on : 28/10/2020, 01:54:31 PM
    Author     : WPelico
--%>

<%@ page import= "java.sql.*"%>
<%@page import="lib.ClienteConsultas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%! ClienteConsultas conexion = new ClienteConsultas();%>
        <%
            int cliente_id = Integer.parseInt(request.getParameter("id"));
            conexion.DeleteCliente(cliente_id);
            response.sendRedirect("Lista.jsp?succes=True");
        %>
    </body>
</html>
