<%@ page import="dao.DAO" %>
<%@ page import="dto.Task" %>

<%
    String user = (String) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    int id = Integer.parseInt(request.getParameter("id"));
    DAO dao = new DAO();
    Task t = dao.getTaskById(id);
%>

<!DOCTYPE html>
<html>
<head>
    <title>Modify Task</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<h2>Modify Task</h2>

<form action="updatetask.jsp" method="post">
    <input type="hidden" name="id" value="<%= t.getId() %>">

    Task:
    <input type="text" name="task"
           value="<%= t.getTask() %>" required>
    <br><br>

    Status:
    <select name="status">
        <option <%= t.getStatus().equals("PENDING") ? "selected" : "" %>>
            PENDING
        </option>
        <option <%= t.getStatus().equals("DONE") ? "selected" : "" %>>
            DONE
        </option>
    </select>

    <br><br>
    <input type="submit" value="Update Task">
</form>

<br>
<a href="ViewToDos.jsp" class="bth">Back</a>

</body>
</html>
