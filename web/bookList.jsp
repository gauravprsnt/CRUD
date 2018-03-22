<%--
  Created by IntelliJ IDEA.
  User: prashant
  Date: 3/21/18
  Time: 11:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Book List</title>
</head>
<body bgcolor="#7fffd4">
<h1 align="center" style="font-family: 'Ultra', sans-serif; color: saddlebrown">Book List</h1>
<p><a style="color:tomato" href="book-controller?action=insert">Add User</a></p>
<table bgcolor="#d3d3d3" border=1 width="100%">
    <thead>
    <tr>
        <th style="background-color: #4CAF50;
    color: white;" height="50px">Book Id</th>
        <th style="background-color: #4CAF50;
    color: white;" height="50px">Book Name</th>
        <th style="background-color: #4CAF50;
    color: white;" height="50px">Author Name</th>
        <th style="background-color: #4CAF50;
    color: white;" height="50px">Publication Name</th>
        <th style="background-color: #4CAF50;
    color: white;" height="50px">Contact Email</th>
        <th style="background-color: #4CAF50;
    color: white;" colspan=2 height="50px">Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${books}" var="book">
        <tr hover{background-color: #f5f5f5;}>
            <td><c:out value="${book.id}"/></td>
            <td><c:out value="${book.bookName}"/></td>
            <td><c:out value="${book.authorName}"/></td>
            <td><c:out value="${book.publicationName}"/></td>
            <td><c:out value="${book.contactEmail}"/></td>
            <td><a href="book-controller?action=edit&bookid=<c:out value="${book.id}"/>">Update</a></td>
            <td><a style="color:red" href="book-controller?action=delete&bookid=
                        <c:out value="${book.id}"/>">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>


</body>
</html>

