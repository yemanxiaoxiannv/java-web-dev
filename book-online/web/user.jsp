<%@ page import="com.bo.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <style type="text/css">
        .explore {
            display: flex;
            align-items: center;
            justify-content: space-between;
            background-color: rgb(237, 244, 237);
            height: 80px;
            padding-left: 8%;
            padding-right: 10px;
        }

        .nav {
            display: flex;
            align-items: center;
            list-style: none;
        }

        .nav li {
            color: rgb(61, 133, 73);
            font-size: 18px;
            margin-right: 20px;
        }

        .search-input {
            flex: 0 0 40%;
            height: 35px;
            background-color: #fff;
            border: none;
            border-radius: 3px;
            margin-left: 50px;
            color: rgb(187, 187, 202);
            font-size: 16px;
        }

        .info {
            display: flex;
        }

        .profile {
            width: 80px;
            height: 80px;
            border-radius: 5px;
        }

        h2 {
            color: rgb(73, 73, 73);
            margin-left: 15px;
        }

        .info-box {
            padding: 10px 10px 10px 10px;
            width: 90%;
            height: 240px;
            border: 1px solid #eee;
            border-radius: 5px;
            background-color: rgb(237, 244, 237);
        }

        .info-box .top {
            height: 80%;
            display: flex;
            border-bottom: 1px solid #e4e6e5;
        }

        .info-box .top img {
            width: 55%;
            height: 85%;
            margin-right: 5px;
            border-radius: 5px;
        }

        p {
            font-size: 13px;
            color: #333;
            padding-top: 5px;
            padding-bottom: 5px;
            margin-top: 5px;
            margin-bottom: 5px;
        }

        .item {
            height: 80px;
            margin-top: 10px;
            margin-bottom: 10px;
            padding-top: 10px;
            padding-bottom: 10px;
        }

        .read {
            border-bottom: 1px solid #eee;
        }

        .read a {
            color: rgb(51, 119, 170);
            text-decoration: none;
        }

        .container {
            width: 85%;
            margin: 0 auto;
            display: flex;
            flex-direction: column;
        }
    </style>
</head>
<body>
<%
    User user = (User) session.getAttribute("user");
    pageContext.setAttribute("user", user);
%>

<%--顶部区域，引入共用的top.jsp页面--%>
<div id="top">
    <jsp:include page="top.jsp"/>
</div>

<%--浏览区域--%>
<div class="explore">
    <ul class="nav">
        <li>观看历史</li>
        <li>vip会员</li>
        <li>我的积分</li>
        <li>我的钻石</li>
    </ul>
    <label>
        <input type="text" placeholder="搜索你感兴趣的人" class="search-input">
    </label>
</div>
<br>

<%--页面主题区域--%>
<div class="container">
    <div class="row">
        <%--左边部分--%>
        <div class="col-8">
            <br>
            <div class="item">
                <ul class="nav">
                    <li>我的VIP</li>
                </ul>
                <p>你的会员时间到2020-07-04到期</p>
            </div>
            <div class="item">
                <ul class="nav">
                    <li>兴趣中心</li>
                </ul>
                <p>爱玩游戏、doki社区、漫画频道</p>
            </div>
            <div class="item">
                <ul class="nav">
                    <li>限时推广</li>
                </ul>
                <p>推销卡和优惠活动</p>
            </div>
            <div class="item">
                <ul class="nav">
                    <li>意见反馈</li>
                </ul>
                <label>
                    <textarea cols="100" rows="6"></textarea>
                </label>
                <div>
                    <input type="button" value="上传">
                </div>
            </div>
        </div>

        <%-- 右侧1/3区域--%>
        <div class="col-4">
            <div class="info-box">
                <div class="top">
                    <img src="images/${user.avatar}" alt="">
                    <div>
                        <p>籍贯：${user.address}</p>
                        <p>账号：${user.account}</p>
                        <p>${user.joinDate}加入</p>
                    </div>
                </div>
                <br>
                <p>${user.nickname}</p>
            </div>
            <br>
            <div class="item">
                <ul class="nav">
                    <li>我喜欢看的电视剧</li>
                </ul>
                <br>
                <div class="read">
                    <p><a href="">${user.nickname}</a>喜欢看
                        <a href="">中餐厅</a>
                    </p>
                    <p style="color: #9b9b9b;">2017年5月10日</p>
                </div>
                <div class="read">
                    <p><a href="">${user.nickname}</a>喜欢看
                        <a href="">国庆阅兵</a>
                    </p>
                    <p style="color: #9b9b9b;">2018年10月2日</p>
                </div>
                <div class="read">
                    <p><a href="">${user.nickname}</a>喜欢看
                        <a href="">法医秦明</a>
                    </p>
                    <p style="color: #9b9b9b;">2019年2月20日</p>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
