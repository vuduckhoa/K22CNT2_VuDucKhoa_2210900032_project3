<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Thêm Admin</title>
</head>
<body>
    <h2>Thêm Quản Trị Viên</h2>
    <form action="admin/save" method="post">
        <label>Tên tài khoản:</label>
        <input type="text" name="vdk_TaiKhoan" required><br>
        <label>Mật khẩu:</label>
        <input type="password" name="vdk_MatKhau" required><br>
        <input type="submit" value="Thêm Admin">
    </form>
    <a href="admin">Quay lại</a>
</body>
</html>
