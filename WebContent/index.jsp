<%@page import="java.util.Map"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%
//storing passed value from jsp
Map<String, Object> user = (Map<String, Object>)request.getAttribute("/updateUser");
%>
<head>
    <title>Welcome</title>
    <style>
        .footer {
            position: absolute;
            bottom: 0;
            margin-bottom: 1rem;
            width: 100%;
            text-align: center;
        }
    </style>
</head>
<body>
    <h2>Welcome to Melluli Coding Challenge</h2>
    <!-- <h4>Tasks in this page</h4> -->
       
    
    <a href="http://localhost:8080/Melluli-challenge-Project/users">Please click here to load the Users List</a>
   <!--  <ol>
        <li>Create a button in this page to link to "/users.form" that shows a list of users (page exists you just have to link to it)</li>
        <li>"<strong><code>/users.form</code></strong>" will display some sample users pre-loaded by the script above</li>
        <li>"<strong><code>/users.form</code></strong>" has more tasks. Please follow them.</li>
    </ol>
    <p>Revert to us for any clarifications</p>
    <br> -->
    <p class="footer">Created by <a href="https://melluli.com">Melluli Technologies</a> for "Coding Challenge"</p>
</body>
</html>
