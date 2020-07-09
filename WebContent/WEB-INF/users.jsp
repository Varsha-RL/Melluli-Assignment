<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Users</title>
</head>
<body>
    <h2>Users</h2>

    <h4>Tasks in this page</h4>
    <ol>
        <li>Add <strong><code>1px</code></strong> border to the cells in the table</li>
        <li>Add a new column called <strong><code>age</code></strong> in the user table, fill it with sample data for existing users and display it here</li>
        <li>Add a link on user id in to open "<strong><code>/user.form</code></strong>" which shows the selected user details (this page needs to be created)</li>
    </ol>

    <table>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Gender</th>
            <th>City</th>
            <th>Country</th>
        </tr>
        <c:forEach items="${users}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.gender}</td>
                <td>${user.city}</td>
                <td>${user.country}</td>
            </tr>
        </c:forEach>
    </table>
</body>
