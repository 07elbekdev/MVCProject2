<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 3/7/2023
  Time: 5:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        <%@include file="/WEB-INF/views/css/table.css" %>
    </style>
</head>
<body>
<h1  style="color: lime" align="center">Teacher</h1>
<table>
    <thead>
    <tr>
        <th>id</th>
        <th>name</th>
        <th>age</th>
        <th>delete</th>
        <th>update</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${findAllS}" var="teacher">
        <tr>
            <td>${teacher.id}</td>
            <td>
                <a href="/getTeacher/${teacher.id}">,${teacher.name}</a>
            </td>
            <td>${teacher.age}</td>
            <td>
                <form action="/delete/Teacher/${teacher.id}" method="get">
                    <button type="submit">DELETE</button>
                </form>
            </td>
            <td>
                <form action="/update/${teacher.id}" method="get">
                    <button type="submit">UPDATE</button>
                </form>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<a href="/saveTeacherForm">add Teacher</a>
<br>
<a href="/clearTeacher">delete-all</a>
<br>
<a href="/c">roll back</a>
</body>
</html>