<%--
  Created by IntelliJ IDEA.
  User: xuehe
  Date: 11.05.2021
  Time: 22:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>书籍展示</title>
</head>
<body>
    <div>
        <a href="${pageContext.request.contextPath}/book/addBook">增加书籍</a>
    </div>
    <br>
   <table border="3">
       <tr>
           <td>书籍编号</td>
           <td>书籍名称</td>
           <td>书籍数量</td>
           <td>书籍详情</td>
       </tr>
       <c:forEach var="book" items="${list}">
           <tr>
               <td>${book.bookId}</td>
               <td>${book.bookName}</td>
               <td>${book.bookCounts}</td>
               <td>${book.detail}</td>
               <td><a href="">更新</a></td>
               <td><a href="${pageContext.request.contextPath}/book/deleteBook?id=${book.bookId}">删除</a></td>
           </tr>
       </c:forEach>
   </table>
</body>
</html>
