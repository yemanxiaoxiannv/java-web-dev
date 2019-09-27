<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2019/9/22
  Time: 14:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>首页</title>
</head>
<body>
首页
<h3>
  欢迎您：${pageContext.request.getAttribute("username")}
</h3>
<h3>
  您的密码是：${pageContext.request.getAttribute("password")}
</h3>
<a href="login.html">点击返回登录</a>
</body>
</html>
