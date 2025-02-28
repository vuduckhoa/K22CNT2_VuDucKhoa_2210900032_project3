<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Quản lý Admin</title>
</head>
<body>
    <h2>Danh sách Admin</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Tên tài khoản</th>
            <th>Thao tác</th>
        </tr>
        <c:forEach var="admin" items="${admins}">
            <tr>
                <td>${admin.id}</td>
                <td>${admin.vdk_TaiKhoan}</td>
                <td>
                    <a href="admin/edit/${admin.id}">Sửa</a>
                    <a href="admin/delete/${admin.id}" onclick="return confirm('Xóa quản trị viên này?');">Xóa</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <a href="admin/add">Thêm Admin</a>
</body>
</html>
