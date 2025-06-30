<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Forgot Password</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        .form-container {
            width: 400px;
            margin: 50px auto;
            background-color: #1e1e2f;
            padding: 30px;
            border-radius: 12px;
            color: white;
        }
        .error-message { color: red; text-align: center; }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Reset Password</h2>
        
        <% String error = request.getParameter("error"); %>
        <% if (error != null) { %>
            <div class="error-message">
                <%= error.equals("email") ? "Email not registered!" : "Failed to send OTP!" %>
            </div>
        <% } %>

        <form action="SendOTPServlet" method="post">
            <label>Registered Email:</label>
            <input type="email" name="email" required>
            <input type="submit" value="Send OTP">
        </form>
        
        <p><a href="patient_login.jsp">Back to Login</a></p>
    </div>
</body>
</html>