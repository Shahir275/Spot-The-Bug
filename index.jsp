<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP Spot the Bug Challenge</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f8;
            min-height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .card {
            width: 390px;
            background: white;
            padding: 32px;
            border-radius: 14px;
            box-shadow: 0 6px 18px rgba(0,0,0,0.12);
        }
        h2 { margin-top: 0; }
        label { font-weight: bold; }
        input[type="text"] {
            width: 100%;
            padding: 11px;
            margin-top: 8px;
            box-sizing: border-box;
            border: 1px solid #aaa;
            border-radius: 6px;
        }
        input[type="submit"] {
            margin-top: 18px;
            padding: 10px 18px;
            cursor: pointer;
        }
    </style>
</head>
<body>
<div class="card">
    <h2>Student Login</h2>
    <form action="process.jsp" method="post">
        <label for="username">Enter Student Name:</label>
        <input type="text" id="username" name="username" required>
        <input type="submit" value="Submit">
    </form>
</div>
</body>
</html>
