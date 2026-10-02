<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.akshata.DBConnection" %>

<!DOCTYPE html>
<html>

<head>

    <title>Update Notice</title>

    <style>

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f6f8;
        }

        .header {
            background-color: #1e3a5f;
            color: white;
            text-align: center;
            padding: 25px;
        }

        .container {
            width: 500px;
            margin: 40px auto;
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 4px 12px rgba(0,0,0,0.15);
        }

        label {
            font-weight: bold;
        }

        input[type="text"],
        input[type="date"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-top: 8px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #1e3a5f;
            color: white;
            border: none;
            padding: 12px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #162d4a;
        }

        .back {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            color: #1e3a5f;
        }

    </style>

</head>

<body>

<div class="header">

    <h1>Update College Notice</h1>

</div>


<div class="container">

<%
    String id = request.getParameter("id");

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    try {

        con = DBConnection.getConnection();

        String sql = "SELECT * FROM notices WHERE id = ?";

        ps = con.prepareStatement(sql);

        ps.setInt(1, Integer.parseInt(id));

        rs = ps.executeQuery();

        if (rs.next()) {
%>

<form action="UpdateNoticeServlet" method="post">

    <input type="hidden"
           name="id"
           value="<%= rs.getInt("id") %>">


    <label>Notice Title:</label>

    <input type="text"
           name="title"
           value="<%= rs.getString("title") %>"
           required>

    <br><br>


    <label>Notice Description:</label>

    <textarea name="description"
              rows="6"
              required><%= rs.getString("description") %></textarea>

    <br><br>


    <label>Notice Date:</label>

    <input type="date"
           name="notice_date"
           value="<%= rs.getDate("notice_date") %>"
           required>

    <br><br>


    <input type="submit"
           value="Update Notice">

</form>

<%
        } else {
%>

        <p>Notice not found.</p>

<%
        }

    } catch (Exception e) {
%>

        <p> Error: <%= e.getMessage() %> </p>

<%
    } finally {

        try {
            if (rs != null) rs.close();
        } catch (Exception e) {
        }

        try {
            if (ps != null) ps.close();
        } catch (Exception e) {
        }

        try {
            if (con != null) con.close();
        } catch (Exception e) {
        }

    }
%>

<a class="back" href="viewNotices.jsp">
    Back to Notices
</a>

</div>

</body>

</html>