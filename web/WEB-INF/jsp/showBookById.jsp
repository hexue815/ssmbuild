<%--
  Created by IntelliJ IDEA.
  User: xuehe
  Date: 15.05.2021
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>根据Id,获取书籍</title>
</head>
<body>
<table border="3">
    <tr>
        <td>书籍名称</td>
        <td>书籍数量</td>
        <td>书籍详情</td>
    </tr>
    <tr>
        <td>${book.bookName}</td>
        <td>${book.bookCounts}</td>
        <td>${book.detail}</td>
    </tr>
</table>
</body>
</html>
