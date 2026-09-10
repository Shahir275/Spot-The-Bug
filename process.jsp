<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    session="true"%>

<%
    String username = request.getParameter("username");

    if (username == null || username.trim().isEmpty()) {
        username = "Guest";
    } else {
        username = username.trim();
    }

    request.setAttribute("message", "Welcome " + username);
    request.setAttribute("requestUser", username);
    session.setAttribute("username", username);
%>

<jsp:forward page="result.jsp" />
