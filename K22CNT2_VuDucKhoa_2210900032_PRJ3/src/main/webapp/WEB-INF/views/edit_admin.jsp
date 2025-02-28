<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Sửa Admin</title>
</head>
<body>
    <h2>Sửa Quản Trị Viên</h2>
    <form action="admin/update" method="post">
        <input type="hidden" name="id" value="${command.id}">
        <label>Tên tài khoản:</label>
        <input type="text" name="vdk_TaiKhoan" value="${command.vdk_TaiKhoan}" required><br>
        <label>Mật khẩu:</label>
        <input type="password" name="vdk_MatKhau" value="${command.vdk_MatKhau}" required><br>
        <input type="submit" value="Cập nhật">
    </form>
    <a href="admin">Quay lại</a>
</body>
</html>
