<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Đăng nhập</title>
</head>
<body>
    <h2>Đăng nhập Admin</h2>

    <%-- Hiển thị lỗi nếu có --%>
    <c:if test="${not empty error}">
        <p style="color: red;">${error}</p>
    </c:if>

    <form action="login" method="post">
        <label for="username">Tài khoản:</label>
        <input type="text" id="username" name="username" required>
        <br>

        <label for="password">Mật khẩu:</label>
        <input type="password" id="password" name="password" required>
        <br>

        <button type="submit">Đăng nhập</button>
    </form>

    <p>Chưa có tài khoản? <a href="register">Đăng ký ngay</a></p>
</body>
</html>
