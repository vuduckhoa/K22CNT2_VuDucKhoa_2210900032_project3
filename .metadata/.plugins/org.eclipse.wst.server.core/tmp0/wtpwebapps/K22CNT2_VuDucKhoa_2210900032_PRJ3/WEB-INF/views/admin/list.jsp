<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh sách Admin</title>
</head>
<body>
    <h2>Danh sách Admin</h2>

    <p><a href="add">Thêm Admin mới</a> | <a href="logout">Đăng xuất</a></p>

    <table border="1">
        <tr>
            <th>ID</th>
            <th>Tài khoản</th>
            <th>Trạng thái</th>
            <th>Hành động</th>
        </tr>
        <c:forEach var="admin" items="${list}">
            <tr>
                <td>${admin.id}</td>
                <td>${admin.vdk_TaiKhoan}</td>
                <td>${admin.vdk_TrangThai ? "Hoạt động" : "Khóa"}</td>
                <td>
                    <a href="edit/${admin.id}">Sửa</a> | 
                    <a href="delete/${admin.id}" onclick="return confirm('Bạn có chắc chắn muốn xóa?')">Xóa</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
