<%@ page import="java.util.*" %>
<%@ page import="dao.DAO" %>
<%@ page import="dto.Task" %>

<%
    String user = (String) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    DAO dao = new DAO();
    ArrayList<Task> tasks = dao.getTasks(user);
%>

<!DOCTYPE html>
<html>
<head>
    <title>Your Tasks</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<h2 style="text-align:center;">Your Tasks</h2>

<table border="1" cellpadding="8">
    <tr>
        <th>ID</th>
        <th>Task</th>
        <th>Status</th>
        <th>Actions</th>
    </tr>

<%
    for (Task t : tasks) {
%>
    <tr>
    <td><%= t.getId() %></td>
    <td><%= t.getTask() %></td>
    <td><%= t.getStatus() %></td>
    <td class="actions">
        <center><a class="bth" href="modify.jsp?id=<%= t.getId() %>">Modify</a></center>
        <br>
        <center><a class="bth" href="deletetask.jsp?id=<%= t.getId() %>"
           onclick="return confirm('Are you sure?');">
           Delete
        </a></center>
    </td>
</tr>

<%
    }
%>
</table>

<br>
<a href="UserHome.jsp" class="bth">Back</a>
<a href="logout.jsp" class="bth">Logout</a>

</body>
</html>
