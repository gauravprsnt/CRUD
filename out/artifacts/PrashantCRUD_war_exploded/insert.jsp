<%--
  Created by IntelliJ IDEA.
  User: prashant
  Date: 3/22/18
  Time: 8:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Insert</title>
</head>
<body>
<form name="addBook" method="post" action="book-controller">
BookId:<input type="int" readonly="readonly" name="id" value="${book.id}"><br>
BookName:<input type="text" name="bookname" value="${book.bookName}"><br>
AuthorName:<input type="text" name="authorname" value="${book.authorName}"><br>
PublicationName:<input type="text" name="publicationname" value="${book.publicationName}"><br>
ContactEmail:<input type="text" name="contactemail" value="${book.contactEmail}"><br>
<input type="submit" value="Save">
</form>

</body>
</html>
