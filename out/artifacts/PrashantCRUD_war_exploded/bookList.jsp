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
<body>
<table border=1>
    <thead>
    <tr>
        <th>Book Id</th>
        <th>Book Name</th>
        <th>Author Name</th>
        <th>Publication Name</th>
        <th>Contact Email</th>
        <th colspan=2>Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${books}" var="book">
        <tr>
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
<p><a href="book-controller?action=insert">Add User</a></p>

</body>
</html>

