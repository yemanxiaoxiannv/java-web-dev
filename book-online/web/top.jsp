<%@ page import="com.bo.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    User user = (User) session.getAttribute("user");
    pageContext.setAttribute("user", user);
%>
<ul>
    <li>
        <a href="${pageContext.request.contextPath}/index">首页</a>
    </li>
    <li>
        <a href="#">浏览</a>
    </li>
    <li>
        <a href="#">推荐</a>
    </li>
    <li>
        <a href="#">精品</a>
    </li>
    <li>
        <a href="#">历史</a>
    </li>
    <li>
        <a href="#">个人</a>
    </li>
</ul>

<ul>
    <%--根据user是否为空，显示不同的内容--%>
    <%
        if (user != null) {
    %>
    <li>
        <a href="${pageContext.request.contextPath}/user">
            <img src="${pageContext.request.contextPath}/images/${user.avatar}" alt="" class="avatar">
        </a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/logout">退出</a>
    </li>
    <%
    } else {
    %>
    <a href="${pageContext.request.contextPath}/login">去登录</a>
    <%
        }
    %>
</ul>
