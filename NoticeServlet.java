package com.akshata;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class NoticeServlet extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

    String title = request.getParameter("title");
    String description = request.getParameter("description");
    String noticeDate = request.getParameter("notice_date");

    String sql = "INSERT INTO notices (title, description, notice_date) VALUES (?, ?, ?)";

    try {

        Connection con = DBConnection.getConnection();

        PreparedStatement ps = con.prepareStatement(sql);

        ps.setString(1, title);
        ps.setString(2, description);
        ps.setDate(3, java.sql.Date.valueOf(noticeDate));

        ps.executeUpdate();

        ps.close();
        con.close();

        response.sendRedirect("viewNotices.jsp");

    } catch (Exception e) {

        e.printStackTrace();

        response.getWriter().println("Error: " + e.getMessage());
    }
}
}