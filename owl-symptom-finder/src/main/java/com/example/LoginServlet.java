package com.example;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import java.sql.*;

public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            Connection conn = DBConnection.getConnection();

            // Prepare SQL to check login
            PreparedStatement ps = conn.prepareStatement(
                "SELECT * FROM patient WHERE email = ? AND password = ?"
            );
            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                // ✅ Successful login — start session and redirect
                HttpSession session = request.getSession();

                session.setAttribute("patient_email", email); // Changed from "email"
                session.setAttribute("loginMsg", "Login Successful!");// Store message
                // Optional: store patient name if needed
                String name = rs.getString("name");
                session.setAttribute("name", name);

                // Redirect to appointment page
                response.sendRedirect("index.jsp?login=success");
            } else {
                // ❌ Invalid login — redirect back to login page with error
                response.sendRedirect("patient_login.jsp?error=true");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.setContentType("text/html");
            response.getWriter().println("<h3>Error: " + e.getMessage() + "</h3>");
        }
    }
}
