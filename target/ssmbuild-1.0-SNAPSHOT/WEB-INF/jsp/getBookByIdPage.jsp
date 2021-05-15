<%--
  Created by IntelliJ IDEA.
  User: xuehe
  Date: 13.05.2021
  Time: 16:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>获取一本书</title>
</head>
<body>
    <form action="${pageContext.request.contextPath}/book/getBookById/getBook" method="post">
        <label>请输入id</label>
        <input type="text" name="bookId">
        <input type="submit" value="确认">
    </form>
</body>
</html>
