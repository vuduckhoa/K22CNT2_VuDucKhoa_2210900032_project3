<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Đăng nhập Admin</title>
</head>
<body>
    <h2>Đăng nhập Admin</h2>
    <form action="login" method="post">
        <label>Tên tài khoản:</label>
        <input type="text" name="username" required><br>
        <label>Mật khẩu:</label>
        <input type="password" name="password" required><br>
        <input type="submit" value="Đăng nhập">
    </form>
    <c:if test="${param.error != null}">
        <p style="color:red;">Tên tài khoản hoặc mật khẩu không đúng!</p>
    </c:if>
</body>
</html>
