<%--
  Created by IntelliJ IDEA.
  User: xuehe
  Date: 14.05.2021
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>更新书籍</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/book/updateBookHandling" method="post">
    <input type="hidden" name="bookId" value="${book.bookId}"/>
    <label>书籍名称</label> <input type="text" name="bookName" value="${book.bookName}" required><br>
    <label>书籍数量</label> <input type="text" name="bookCounts" value="${book.bookCounts}" required><br>
    <label>书籍详情</label> <input type="text" name="detail" value="${book.detail}" required><br>
    <input type="submit" value="更新"/>
</form>
</body>
</html>
