<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/12/24
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<html>
<head>
    <title>个人信息</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js" ></script>
</head>
<body>
<div class="col-xs-5 col-md-offset-3">
    <div style="padding: 20px 550px 10px">
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">
                我的信息
            </h3>
        </div>
        <div class="panel-body">
            <table class="table table-hover">
                <tr>
                    <th width="20%">读者证号</th>
                    <td>${user.id}</td>
                </tr>
                <tr>
                    <th>姓名</th>
                    <td>${user.name}</td>
                </tr>
                <tr>
                    <th>登录账号</th>
                    <td>${user.username}</td>
                </tr>
                <tr>
                    <th>登录密码</th>
                    <td>${user.password}</td>
                </tr>
                <tr>
                    <th>性别</th>
                    <td>${user.sex}</td>
                </tr>
                <tr>
                    <th>生日</th>
                    <td>${user.birth}</td>
                </tr>
                <tr>
                    <th>地址</th>
                    <td>${user.address}</td>
                </tr>
                <tr>
                    <th>电话</th>
                    <td>${user.phone}</td>
                </tr>
            </table>
            <a class="btn btn-success btn-sm" href="${pageContext.request.contextPath}/reader/updatePage.do?username=${user.username}" role="button">修改</a>
        </div>
    </div>
</div>
</body>
</html>
