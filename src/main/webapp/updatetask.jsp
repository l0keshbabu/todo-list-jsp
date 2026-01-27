<%@ page import="dao.DAO" %>
<link rel="stylesheet" href="css/style.css">
<%
    int id = Integer.parseInt(request.getParameter("id"));
    String task = request.getParameter("task");
    String status = request.getParameter("status");

    DAO dao = new DAO();
    dao.updateTask(id, task, status);

    response.sendRedirect("ViewToDos.jsp");
%>
