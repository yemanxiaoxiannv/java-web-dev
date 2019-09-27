<%@ page import="java.util.List" %>
<%@ page import="com.web.Book" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2019/9/26
  Time: 16:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>主页</title>
  <style type="text/css">
    * {
      margin: 0;
      padding: 0;
    }
    body{
      color: #333;
    }
    header {
      height: 60px;
      background-color: rgb(103, 58, 183);
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding-left: 10px;
      padding-right: 10px;
    }

    .nav {
      flex: 0 0 50%;
      list-style: none;
      display: flex;
    }
    .nav li {
      margin-left: 10px;
      margin-right: 10px;
      width: 50px;
    }
    .user-info {
      padding-right: 20px;
    }
    /* 超链接样式 */
    .nav li a {
      text-decoration: none;
      color: #000;
    }
    .nav li a:hover {
      color: #fff;
    }
    /* 搜索区样式 */
    .search-wrap{
      height: 60px;
      background-color: #ddd;
      display: flex;
      align-items: center;
      padding-left: 10%;
      margin-bottom: 10px;
    }

    .input-box{
      width: 300px;
      height: 35px;
      border: 1px solid #fff;
      border-radius: 5px;
      margin-left: 10px;
    }

    .container{
      width: 85%;
      margin: 0 auto;
      /* height: 600px; */
      background-color: rgb(176, 190, 197);
      display: flex;
      padding: 5px 5px 5px 5px;
    }

    .left{
      flex: 0 0 66%;
      height: 90%;
      background-color: #fff;
      padding: 10px 10px 10px 10px;
    }
    .right{
      flex: 0 0 30%;
      height: 100%;
      margin-left: 15px;
      background-color: #eee;
    }
    .row{
      display: flex;
      /* 自动换行 */
      flex-wrap: wrap;
      padding: 5px 5px 5px 5px;
    }
    .column{
      flex: 0 0 18%;
      height: 150px;
      background-color: #eee;
      border: 1px solid #fff;
      border-radius: 10px;
      margin: 5px 5px 5px 5px;
    }
    footer{
      height: 100px;
      background-color: #aaa;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .avatar{
      width: 65%;
      height:65%;
      padding-left: 24px;
      border-radius: 6%;
      margin-righ: 20px;
    }

    .container{
      width: 80%;
      margin: 0 auto;
      background-color: #ddd;
      display: flex;
      padding: 10px 10px 10px 10px;
      flex-wrap: wrap;
    }
    .box{
      flex: 0 0 17.6%;
      height: 280px;
      margin: 5px 5px 5px 5px;
      background-color: #ffffff;
    }
    .box img{
      width: 90%;
      height: 60%;
    }

  </style>
</head>
<body>
<!-- 顶部导航 -->
<header>
  <div>
    <!-- 导航 -->
    <ul class="nav">
      <li>
        <a href="#">首页</a>
      </li>
      <li>
        <a href="#">浏览</a>
      </li>
      <li>
        <a href="#">精品</a>
      </li>
      <li>
        <a href="#">收藏</a>
      </li>
      <li>
        <a href="#">个人</a>
      </li>
    </ul>
  </div>
  <div class="user-info">
    <h3>野蛮小仙女</h3>
  </div>
</header>
<!-- 搜索区 -->
<div class="search-wrap">
  <h2>全网搜</h2>
  <input type="text" placeholder="输入要搜索的内容"class="input-box">
</div>
<%
  String username= (String) session.getAttribute("username");
  if (username != null) {
    pageContext.setAttribute("username",username);
%>

<%
}else {
%>
<h3><a href="${pageContext.request.contextPath}/">去登陆</a></h3>
<%
  }
%>
<%
  List<Book> bookList = (List<Book>) request.getAttribute("bookList");
  pageContext.setAttribute("size",bookList.size());
%>

<div class="container">
  <div class="left">
    <h2>好剧推荐</h2>
    <hr>
    <div class="row">
      <%
        for (Book book : bookList) {
          pageContext.setAttribute("book",book);
      %>
      <div class="box">
        <img src="images/${book.cover}" alt="">
        <p>${book.name}</p>
        <p>${book.author}</p>
      </div>
      <%
        }
      %>
    </div>
  </div>
  <div class="right">
      <h3>全部频道</h3>
      <hr>
  </div>
</div>
<!-- 脚注区 -->
<footer>
  <p>南京工业职业技术学院</p>
</footer>
</div>
</body>
</html>
