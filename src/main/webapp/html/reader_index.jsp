<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/12/24
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<!DOCTYPE html>

<html>

<head>
    <meta charset="utf-8">
    <title>图书管理系统</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/layui/css/layui.css" media="all" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">

</head>

<body>
<div class="layui-layout layui-layout-admin" style="border-bottom: solid 5px #1aa094;">
    <div class="layui-header header header-demo">
        <div class="layui-main">
            <div class="admin-login-box">
                <a class="logo" style="left: 0;" href="${pageContext.request.contextPath}/html/reader_index.jsp">
                    <span style="font-size: 22px;">图书管理系统</span>
                </a>
                <div class="admin-side-toggle">
                    <i class="fa fa-bars" aria-hidden="true"></i>
                </div>
                <div class="admin-side-full">
                    <i class="fa fa-life-bouy" aria-hidden="true"></i>
                </div>
            </div>
            <ul class="layui-nav admin-header-item">
                <li class="layui-nav-item">
                    <a href="javascript:;" class="admin-header-user">
                        <img src="${pageContext.request.contextPath}/images/0.jpg" />
                        <span>beginner</span>
                    </a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a href="javascript:;"><i class="fa fa-user-circle" aria-hidden="true"></i> 个人信息</a>
                        </dd>
                        <dd>
                            <a href="javascript:;"><i class="fa fa-gear" aria-hidden="true"></i> 修改密码</a>
                        </dd>
                        <dd id="lock">
                            <a href="javascript:;">
                                <i class="fa fa-lock" aria-hidden="true" style="padding-right: 3px;padding-left: 1px;"></i> 锁屏 (Alt+L)
                            </a>
                        </dd>
                        <dd>
                            <a href="${pageContext.request.contextPath}/html/login.html"><i class="fa fa-sign-out" aria-hidden="true"></i> 注销</a>
                        </dd>
                    </dl>
                </li>
            </ul>
            <ul class="layui-nav admin-header-item-mobile">
                <li class="layui-nav-item">
                    <a href="${pageContext.request.contextPath}/html/login.html"><i class="fa fa-sign-out" aria-hidden="true"></i> 注销</a>
                </li>
            </ul>
        </div>
    </div>
    <div class="layui-side layui-bg-black" id="admin-side">
        <div class="layui-side-scroll" id="admin-navbar-side" lay-filter="side"></div>
    </div>
    <div class="layui-body" style="bottom: 0;border-left: solid 2px #1AA094;" id="admin-body">
        <div class="layui-tab admin-nav-card layui-tab-brief" lay-filter="admin-tab">
            <ul class="layui-tab-title">
                <li class="layui-this">
                    <i class="fa fa-dashboard" aria-hidden="true"></i>
                    <cite>控制面板</cite>
                </li>
            </ul>
            <div class="layui-tab-content" style="min-height: 150px; padding: 5px 0 0 0;">
                <div class="layui-tab-item layui-show">
                    <iframe src="${pageContext.request.contextPath}/html/main.html"></iframe>
                </div>
            </div>
        </div>
    </div>
    <div class="layui-footer footer footer-demo" id="admin-footer">
        <div class="layui-main">
            <p>2019 &copy;
                安阳师范学院软件学院
        </div>
    </div>
    <div class="site-tree-mobile layui-hide">
        <i class="layui-icon">&#xe602;</i>
    </div>
    <div class="site-mobile-shade"></div>

    <!--锁屏模板 start-->
    <script type="text/template" id="lock-temp">
        <div class="admin-header-lock" id="lock-box">
            <div class="admin-header-lock-img">
                <img src="${pageContext.request.contextPath}/images/0.jpg"/>
            </div>
            <div class="admin-header-lock-name" id="lockUserName">beginner</div>
            <input type="text" class="admin-header-lock-input" value="输入密码解锁.." name="lockPwd" id="lockPwd" />
            <button class="layui-btn layui-btn-small" id="unlock">解锁</button>
        </div>
    </script>
    <!--锁屏模板 end -->

    <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/layui/layui.js"></script>
    <script  type="text/javascript">
        var navs = [
            {
                "title": "图书查询",
                "icon": "fa-cubes",
                "spread": false,
                "href": "${pageContext.request.contextPath}/html/reader/reader_books.html"
            }, {
                "title": "我的借还",
                "icon": "fa-cogs",
                "spread": false,
                "children": [
                    {
                        "title": "我想还书",
                        "icon": "fa-table",
                        "href": "reader/reader_return_books .html"
                    }, {
                        "title": "借还管理",
                        "icon": "fa-navicon",
                        "href": "reader/reader_lend_list.html"
                    }
                ]
            },{
                "title": "图书挂失",
                "icon": "fa-cogs",
                "spread": false,
                "children": [
                    {
                        "title": "挂失",
                        "icon": "fa-table",
                        "href": "reader/reader_guashi_books.html"
                    }, {
                        "title": "解挂",
                        "icon": "fa-navicon",
                        "href": "reader/reader_jiegua_books.html"
                    }
                ]
            },{
                "title": "个人信息",
                "icon": "&#x1002;",
                "href": "${pageContext.request.contextPath}/reader/user_info.do",
                "spread": false
            }, {
                "title": "修改密码",
                "icon": "fa-address-book",
                "href": "reader/reader_repasswd.html",
                "spread": false
            }
        ];
    </script>
    <script src="${pageContext.request.contextPath}/js/index.js"></script>
    <script>
        layui.use('layer', function() {
            var $ = layui.jquery,
                layer = layui.layer;

            $('#video1').on('click', function() {
                layer.open({
                    title: 'YouTube',
                    maxmin: true,
                    type: 2,
                    content: 'video.html',
                    area: ['800px', '500px']
                });
            });
            $('#pay').on('click', function () {
                layer.open({
                    title: false,
                    type: 1,
                    content: '<img src="${pageContext.request.contextPath}/images/xx.png" />',
                    area: ['500px', '250px'],
                    shadeClose: true
                });
            });


        });
    </script>
</div>
</body>

</html>
