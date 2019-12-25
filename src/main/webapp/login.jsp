<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>登录界面</title>
</head>
<body>
<h1>图书管理系统</h1>
<form action="${pageContext.request.contextPath}/user/login.do" method="post" onsubmit="return checkForm()" name="login">
    <h4>Login</h4>
    <p>
        <span>用户名：</span>
        <input type="text"  name="username" class="num" id="name"  onfocus="nameFocus()" onkeyup="namekeyup()" onblur="nameBlur()"/>
    <div id="nameError">&nbsp;</div>
    </p>·
    <p>
        <span>密&nbsp;&nbsp;码：</span>
        <input type="password" name="password" class="num" id="password"  onfocus="passwordFocus()" onkeyup="passwordkeyup()" onblur="passwordBlur()"/>
    <div id="passwordError">&nbsp;</div>
    </p>
    <br/>
    <p class="bt">
        <a href="javascript:document.login.submit()" class="bt01">提交</a>
        <a href="javascript:document.login.reset()"  class="bt02">重置</a>
        <a href="${pageContext.request.contextPath}/user/goToRegister.do" class="bt03">注册</a>
    <p>
        <br/>
    <p class="error">${message } </p>
</form>
</body>
</html>