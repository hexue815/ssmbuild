<%--
  Created by IntelliJ IDEA.
  User: xuehe
  Date: 11.05.2021
  Time: 13:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>首页</title>
    <style>
      h3{
        width: 180px;
        height: 38px;
      }
      a{
        text-decoration: none;
        color: black;
        font-size: 18px;
        margin: 100px auto;
        text-align: center;
        line-height: 38px;
        background: #ff00aa;
      }
    </style>
  </head>
  <body>
  <h3>
    <a href="${pageContext.request.contextPath}/book/allBook">查询所有书籍</a><br>

<%--    <a href="${pageContext.request.contextPath}/book/queryBookById">2. 根据id查询书籍</a>--%>
  </h3>
  </body>
</html>
