<%
    String user = (String) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>User Home</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div>
<%
    String username = user;
    if (user != null && user.contains("@")) {
        username = user.substring(0, user.indexOf("@"));
    }
%>

<h2>Welcome, <%= username %></h2>


<form action="addtask.jsp" method="post">
    Add Task:
    <input type="text" name="task" required>
    <center><input type="submit" value="Add"></center>
</form>
<br>

<a href="ViewToDos.jsp" class="bth">View Tasks</a>
<a href="logout.jsp" class="bth">Logout</a>
</div>
</body>
</html>
