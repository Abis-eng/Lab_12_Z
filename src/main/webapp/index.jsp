<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Lab 12 Z - Home</title>
    <meta charset="UTF-8">
    <style>
        body { font-family: Segoe UI, Arial, sans-serif; margin: 1.5rem; }
        .logo { margin-bottom: 1rem; }
    </style>
</head>
<body>
<img class="logo" src="<%= request.getContextPath() %>/images/lab12z.svg" alt="Lab 12 Z" width="320" height="80" />
<p><a href="addition.jsp">Addition table</a></p>
<form action="welcome.jsp" method="get">
    <label>Number <input type="number" name="number" required></label>
    <br><br>
    <label>
        Color
        <select name="color">
            <option value="red">Red</option>
            <option value="green">Green</option>
            <option value="blue">Blue</option>
        </select>
    </label>
    <br><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
