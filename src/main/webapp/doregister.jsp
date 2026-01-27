<%@ page import="dao.DAO" %>
<link rel="stylesheet" href="css/style.css">

<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    DAO dao = new DAO();
    boolean status = dao.register(email, password);

    if (status) {
%>
        <h3>Registration Successful</h3>
        <a href="login.jsp">Login Now</a>
<%
    } else {
%>
        <h3>Registration Failed (User may already exist)</h3>
        <a href="register.jsp">Try Again</a>
<%
    }
%>
