<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 3/7/2023
  Time: 9:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>INSERT INTO Student</title>
    <style>
        <%@include file="/WEB-INF/views/css/form.css" %>
    </style>

</head>
<body>
<h1 class="j">Save student</h1>
<form action="/saveStudent" method="post">
    <label>Name:</label><input type="text" name="name">
    <label>age:</label><input type="text" name="age">
    <label>studyFormat:</label><input type="text" name="studyFormat">
    <input type="submit" value="save-student">
</form>
</body>
</html>