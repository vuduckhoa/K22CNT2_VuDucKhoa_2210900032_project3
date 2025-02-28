<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng Ký Quản Trị Viên</title>
    <link rel="stylesheet" type="text/css" href="styles.css"> <!-- Thêm file CSS nếu có -->
</head>
<body>
    <h2>Đăng Ký Quản Trị Viên</h2>
    <form action="register" method="post">
        <label for="vdk_TaiKhoan">Tên tài khoản:</label>
        <input type="text" id="vdk_TaiKhoan" name="vdk_TaiKhoan" required><br>

        <label for="vdk_MatKhau">Mật khẩu:</label>
        <input type="password" id="vdk_MatKhau" name="vdk_MatKhau" required><br>

        <label for="vdk_TrangThai">Trạng thái:</label>
        <select id="vdk_TrangThai" name="vdk_TrangThai">
            <option value="true">Hoạt động</option>
            <option value="false">Không hoạt động</option>
        </select><br>

        <button type="submit">Đăng Ký</button>
    </form>
    <p>Đã có tài khoản? <a href="login">Đăng nhập</a></p>
</body>
</html>
