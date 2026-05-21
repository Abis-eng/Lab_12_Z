<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Addition table - 7</title>
    <meta charset="UTF-8">
    <style>
        table { border-collapse: collapse; margin-top: 1rem; }
        th, td { border: 1px solid #333; padding: 0.4rem 0.8rem; text-align: center; }
        th { background: #e8f4fc; }
    </style>
</head>
<body>
<img src="<%= request.getContextPath() %>/images/lab12z.svg" alt="Lab 12 Z" width="320" height="80" />
<p><a href="index.jsp">Back</a></p>
<h2>Addition table (base 7)</h2>
<table>
    <thead>
    <tr>
        <th>i</th>
        <th>7 + i</th>
        <th>Result</th>
    </tr>
    </thead>
    <tbody>
    <%
        final int base = 7;
        for (int i = 1; i <= 10; i++) {
            int result = base + i;
    %>
    <tr>
        <td><%= i %></td>
        <td><%= base %> + <%= i %></td>
        <td><%= result %></td>
    </tr>
    <%
        }
    %>
    </tbody>
</table>
</body>
</html>
