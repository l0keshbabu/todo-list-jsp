<%@ page import="dao.DAO" %>
<link rel="stylesheet" href="css/style.css">

<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    DAO dao = new DAO();
    boolean status = dao.login(email, password);

    if (status) {
        session.setAttribute("user", email);
        response.sendRedirect("UserHome.jsp");
    } else {
%>
        <h3>Invalid Credentials</h3>
        <a href="login.jsp">Try Again</a>
<%
    }
%>
