<%@ page import="dao.DAO" %>
<link rel="stylesheet" href="css/style.css">

<%
    int id = Integer.parseInt(request.getParameter("id"));

    DAO dao = new DAO();
    dao.deleteTask(id);

    response.sendRedirect("ViewToDos.jsp");
%>
