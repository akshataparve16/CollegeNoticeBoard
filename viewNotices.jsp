```jsp
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.akshata.DBConnection" %>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>College Notice Board</title>

    <style>

        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background-color: #f4f6f8;
        }

        .header {
            text-align: center;
            background-color: #1e3a5f;
            color: white;
            padding: 20px;
        }

        .header h1 {
            margin: 0;
        }

        .container {
            width: 90%;
            margin: 30px auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: white;
        }

        th {
            background-color: #1e3a5f;
            color: white;
            padding: 12px;
        }

        td {
            padding: 12px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        .action-buttons {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 10px;
        }

        .edit-btn {
            background-color: green;
            color: white;
            padding: 8px 12px;
            text-decoration: none;
            border-radius: 5px;
        }

        .delete-btn {
            background-color: red;
            color: white;
            padding: 8px 12px;
            text-decoration: none;
            border-radius: 5px;
        }

        .links {
            text-align: center;
            margin-top: 25px;
        }

        .links a {
            background-color: #1e3a5f;
            color: white;
            padding: 10px 15px;
            text-decoration: none;
            margin: 5px;
            border-radius: 5px;
        }

    </style>

</head>


<body>


<%
    String updated = request.getParameter("updated");

    if ("true".equals(updated)) {
%>

<script>

    alert("Notice updated successfully!");

</script>

<%
    }
%>


<div class="header">

    <h1>Shivneri College of Arts, Commerce & Science</h1>

    <h3>Department of Computer Applications</h3>

    <h2>College Notice Board</h2>

</div>


<div class="container">

    <table>

        <tr>

            <th>ID</th>

            <th>Title</th>

            <th>Description</th>

            <th>Date</th>

            <th>Action</th>

        </tr>


<%

    Connection con = null;

    PreparedStatement ps = null;

    ResultSet rs = null;

    try {

        con = DBConnection.getConnection();

        String sql = "SELECT * FROM notices ORDER BY id DESC";

        ps = con.prepareStatement(sql);

        rs = ps.executeQuery();


        while (rs.next()) {

%>


        <tr>

            <td>
                <%= rs.getInt("id") %>
            </td>

            <td>
                <%= rs.getString("title") %>
            </td>

            <td>
                <%= rs.getString("description") %>
            </td>

            <td>
                <%= rs.getDate("notice_date") %>
            </td>

            <td>

                <div class="action-buttons">

                    <a class="edit-btn"
                       href="editNotice.jsp?id=<%= rs.getInt("id") %>">
                        Edit
                    </a>

                    <a class="delete-btn"
                       href="DeleteNoticeServlet?id=<%= rs.getInt("id") %>"
                       onclick="return confirm('Are you sure you want to delete this notice?');">
                        Delete
                    </a>

                </div>

            </td>

        </tr>


<%

        }

    } catch (Exception e) {

%>


        <tr>

            <td colspan="5">

                Error: <%= e.getMessage() %>

            </td>

        </tr>


<%

    } finally {

        try {

            if (rs != null) {
                rs.close();
            }

        } catch (Exception e) {
        }


        try {

            if (ps != null) {
                ps.close();
            }

        } catch (Exception e) {
        }


        try {

            if (con != null) {
                con.close();
            }

        } catch (Exception e) {
        }

    }

%>


    </table>


    <div class="links">

        <a href="addNotice.jsp">
            Add New Notice
        </a>

        <a href="index.jsp">
            Back to Home
        </a>

    </div>


</div>


</body>

</html>