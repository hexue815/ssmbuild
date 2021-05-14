<%--
  Created by IntelliJ IDEA.
  User: xuehe
  Date: 14.05.2021
  Time: 11:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增书籍</title>
</head>
<body>
    <form action="${pageContext.request.contextPath}/book/addBookHandling" method="post">
        <label>书籍名称</label> <input type="text" name="bookName"><br>
        <label>书籍数量</label> <input type="text" name="bookCounts"><br>
        <label>书籍详情</label> <input type="text" name="detail"><br>
        <input type="submit" value="添加"/>
    </form>
</body>
</html>
