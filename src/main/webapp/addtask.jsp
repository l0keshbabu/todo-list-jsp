<%@ page import="dao.DAO" %>
<link rel="stylesheet" href="css/style.css">

<%
    String user = (String) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    String task = request.getParameter("task");

    if (task != null && !task.trim().isEmpty()) {
        DAO dao = new DAO();
        dao.addTask(user, task);
    }

    response.sendRedirect("UserHome.jsp");
%>
