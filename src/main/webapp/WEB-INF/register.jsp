<%--
  Created by IntelliJ IDEA.
  User: TMcCool
  Date: 4/4/18
  Time: 2:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp" >
    <jsp:param name="title" value="Register" />
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <div class = "container">
        <form action="/register" method="post" >
            <div class="form-group">
                <label class="form-group" for="username">Username</label>
                <input class="form-control" type="text" id="username" name="username">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input class="form-control" id="email" name="email" type="text">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input class="form-control" type="text" id="password" name="password">
            </div>
            <div class="form-group">
                <label for="confirm_password">Confirm Password</label>
                <input class="form-control" type="password" id="confirm_password" name="confirm_password" >
            </div>
            <input type="submit" class="btn btn-primary btn-block">
        </form>
    </div>
</body>
</html>
