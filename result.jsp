<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    session="true"%>

<%
    String message = (String) request.getAttribute("message");
    String requestUser = (String) request.getAttribute("requestUser");
    String sessionUser = (String) session.getAttribute("username");

    if (message == null) message = "Please go back and submit the form first.";
    if (requestUser == null) requestUser = "Not available";
    if (sessionUser == null) sessionUser = "Not available";
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Spot the Bug - Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f8;
            min-height: 100vh;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .card {
            width: 520px;
            background: white;
            padding: 32px;
            border-radius: 14px;
            box-shadow: 0 6px 18px rgba(0,0,0,0.12);
        }
        .box {
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 8px;
        }
        a { text-decoration: none; }
    </style>
</head>
<body>
<div class="card">
    <h2><%= message %></h2>

    <div class="box">
        <strong>Request Scope User:</strong>
        <%= requestUser %>
    </div>

    <div class="box">
        <strong>Session Scope User:</strong>
        <%= sessionUser %>
    </div>

    <p><strong>Forward:</strong> &lt;jsp:forward page="result.jsp" /&gt;</p>

    <p>
        The request value is preserved because jsp:forward uses the same request.
        The session value is stored separately in the user's session.
    </p>

    <a href="index.jsp">Go Back</a>
</div>
</body>
</html>
