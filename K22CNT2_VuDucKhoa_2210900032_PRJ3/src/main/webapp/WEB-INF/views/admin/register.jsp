<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Đăng ký Admin</title>
</head>
<body>
    <h2>Đăng ký Admin</h2>

    <%-- Hiển thị lỗi nếu có --%>
    <c:if test="${not empty error}">
        <p style="color: red;">${error}</p>
    </c:if>

    <form action="register" method="post">
        <label for="vdk_TaiKhoan">Tài khoản:</label>
        <input type="text" id="vdk_TaiKhoan" name="vdk_TaiKhoan" required>
        <br>

        <label for="vdk_MatKhau">Mật khẩu:</label>
        <input type="password" id="vdk_MatKhau" name="vdk_MatKhau" required>
        <br>

        <button type="submit">Đăng ký</button>
    </form>

    <p>Đã có tài khoản? <a href="login">Đăng nhập</a></p>
</body>
</html>
