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
<body bgcolor="#7fffd4">
<center>
<div style="height: fit-content;width:300px;background-color: lightgray">
    <h1 style="font-family: 'Ultra', sans-serif; color: saddlebrown">Insert Details</h1>
<form name="addBook" method="post" action="book-controller">
BookId:<br>
    <input width="100%" type="int" readonly="readonly" name="id" value="${book.id}"><br><br>
BookName:<br>
    <input width="100%" type="text" name="bookname" value="${book.bookName}"><br><br>
AuthorName:<br>
    <input width="100%" type="text" name="authorname" value="${book.authorName}"><br><br>
PublicationName:<br>
    <input width="100%" type="text" name="publicationname" value="${book.publicationName}"><br><br>
ContactEmail:<br>
    <input width="100%" type="text" name="contactemail" value="${book.contactEmail}"><br><br>
<input style="background-color: #4CAF50;
       border: none;
       color: white;
       padding: 15px 32px;
       text-align: center;
       text-decoration: none;
       display: inline-block;
       font-size: 16px;
       margin: 4px 2px;
       cursor: pointer;" type="submit" value="Save">&nbsp;&nbsp;
    <input style="background-color: red;
       border: none;
       color: white;
       padding: 15px 32px;
       text-align: center;
       text-decoration: none;
       display: inline-block;
       font-size: 16px;
       margin: 4px 2px;
       cursor: pointer;" type="reset" value="Clear">

</form>
</div>
</center>
</body>
</html>
