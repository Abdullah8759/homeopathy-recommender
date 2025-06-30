<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Logout Success Message -->
<% String logout = request.getParameter("logout"); %>
<% if (logout != null && logout.equals("success")) { %>
    <div class="success-message">Logout Successful!</div>
<% } %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Patient Login</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        body {
            background-color: #1e1e2f;
            color: white;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
          .success-message {
        color: #4CAF50;
        text-align: center;
        padding: 10px;
        margin-bottom: 20px;
        background: #2e2e3a;
        border-radius: 5px;
    }

        .form-container {
            width: 400px;
            margin: 100px auto;
            background-color: #2e2e3a;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }

        .form-container h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        .form-container label {
            font-size: 18px;
            margin-bottom: 10px;
            display: block;
        }

        .form-container input[type="email"],
        .form-container input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #444;
            border-radius: 5px;
            background-color: #3a3a4b;
            color: white;
        }

        .form-container input[type="submit"] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .form-container input[type="submit"]:hover {
            background-color: #45a049;
        }

        .form-container p {
            text-align: center;
            margin-top: 10px;
        }

        .error-message {
            color: red;
            text-align: center;
        }
    </style>
</head>
<body>

    <div class="form-container">
        <h1>Patient Login</h1>

        <% String error = request.getParameter("error"); %>
        <% if (error != null) { %>
            <div class="error-message">Invalid email or password!</div>
        <% } %>

        <form action="LoginServlet" method="post">
            <label>Email:</label>
            <input type="email" name="email" required/>
            <label>Password:</label>
            <input type="password" name="password" required/>
            <input type="submit" value="Login"/>
        </form>
        <p style="text-align: center; margin-top: 10px;">
    <a href="forgot_password.jsp" style="color: #00bfff;">Forgot Password?</a>
</p>
        
        <p>Don't have an account? <a href="register.jsp" style="color: #4CAF50;">Register here</a></p>
    </div>

</body>
</html>
