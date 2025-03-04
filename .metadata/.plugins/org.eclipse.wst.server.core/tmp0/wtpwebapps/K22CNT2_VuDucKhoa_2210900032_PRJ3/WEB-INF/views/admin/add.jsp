<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thêm Admin</title>
</head>
<body>
    <h2>Thêm Admin</h2>

    <form action="add" method="post">
        <label for="vdk_TaiKhoan">Tài khoản:</label>
        <input type="text" id="vdk_TaiKhoan" name="vdk_TaiKhoan" required>
        <br>

        <label for="vdk_MatKhau">Mật khẩu:</label>
        <input type="password" id="vdk_MatKhau" name="vdk_MatKhau" required>
        <br>

        <label for="vdk_TrangThai">Trạng thái:</label>
        <select id="vdk_TrangThai" name="vdk_TrangThai">
            <option value="true">Hoạt động</option>
            <option value="false">Khóa</option>
        </select>
        <br>

        <button type="submit">Thêm</button>
    </form>

    <p><a href="list">Quay lại danh sách</a></p>
</body>
</html>
