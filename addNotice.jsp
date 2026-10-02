<!DOCTYPE html>

<html>

<head>
    <title>Add Notice</title>
</head>

<body>

```
<h1>Add College Notice</h1>

<form action="NoticeServlet" method="post">

    <label>Notice Title:</label>
    <br>
    <input type="text" name="title" required>

    <br><br>

    <label>Notice Description:</label>
    <br>
    <textarea name="description" rows="5" cols="40" required></textarea>

    <br><br>

    <label>Notice Date:</label>
    <br>
    <input type="date" name="notice_date" required>

    <br><br>

    <input type="submit" value="Add Notice">

</form>

<br>

<a href="index.jsp">Back to Home</a>
```

</body>

</html>
