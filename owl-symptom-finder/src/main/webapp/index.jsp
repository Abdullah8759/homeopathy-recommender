<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%
    if (session == null || session.getAttribute("patient_email") == null) {
        response.sendRedirect("patient_login.jsp");
        return;
    }
    String name = (String) session.getAttribute("name");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Symptom Checker</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', sans-serif;
            background: #1e1e2f;
            color: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background: #2a2a3d;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 0 10px rgba(0,0,0,0.4);
            width: 100%;
            max-width: 500px;
            text-align: center;
        }
        h2 {
            margin-bottom: 20px;
            color: #00e676;
        }
        select {
            width: 90%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            margin-bottom: 20px;
            background: #3a3a4d;
            color: white;
        }
        input[type="submit"] {
            padding: 10px 25px;
            background: #00e676;
            border: none;
            color: #1e1e2f;
            font-weight: bold;
            border-radius: 5px;
            cursor: pointer;
        }
        .logout {
            margin-top: 20px;
        }
        .logout a {
            color: #ff5252;
            text-decoration: none;
            font-weight: bold;
        }
        .welcome {
            margin-bottom: 10px;
            color: #ccc;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="welcome">Welcome, <%= name != null ? name : "User" %></div>
        <h2>Select Your Symptom</h2>
        <form action="find-treatment" method="post">
            <select name="symptom" required>
                <option value="">-- Select a symptom --</option>
                <option value="Flu(first_stage)">Flu(first stage)</option>
                <option value="Abdominal_cramps">Abdominal_cramps</option>
                <option value="Bloating">Bloating</option>
                <option value="Cold">Cold</option>
                <option value="Constipation">Constipation</option>
                <option value="Digestive issue">Digestive issue</option>
                <option value="Ear pain">Ear pain</option>
                <option value="Fatigue">Fatigue</option>
                <option value="Fever">Fever</option>
                <option value="Headache">Headache</option>
                <option value="Liver disorder">Liver disorder</option>
                <option value="Minor_injuries">Minor_injuries</option>
                <option value="Muscle_cramps">Muscle_cramps</option>
                <option value="Nausea">Nausea</option>
                <option value="Painful_menstruation">Painful menstruation</option>
                <option value="Rashes">Rashes</option>
                <option value="Skin irruption">Skin irruption</option>
                <option value="Toothache">Toothache</option>
                <option value="UTI">UTI</option>
            </select>
            <br>
            <input type="submit" value="Find Treatment">
        </form>
        <div class="logout">
            <a href="LogoutServlet">Logout</a>
        </div>
    </div>
</body>
</html>
