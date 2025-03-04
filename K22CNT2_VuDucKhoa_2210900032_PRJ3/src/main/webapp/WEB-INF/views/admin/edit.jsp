<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chỉnh sửa Admin</title>
</head>
<body>
    <h2>Chỉnh sửa Admin</h2>

    <form action="../update" method="post">
        <input type="hidden" name="id" value="${admin.id}">

        <label for="vdk_TaiKhoan">Tài khoản:</label>
        <input type="text" id="vdk_TaiKhoan" name="vdk_TaiKhoan" value="${admin.vdk_TaiKhoan}" required>
        <br>

        <label for="vdk_MatKhau">Mật khẩu mới:</label>
        <input type="password" id="vdk_MatKhau" name="vdk_MatKhau">
        <br>

        <label for="vdk_TrangThai">Trạng thái:</label>
        <select id="vdk_TrangThai" name="vdk_TrangThai">
            <option value="true" ${admin.vdk_TrangThai ? "selected" : ""}>Hoạt động</option>
            <option value="false" ${!admin.vdk_TrangThai ? "selected" : ""}>Khóa</option>
        </select>
        <br>

        <button type="submit">Cập nhật</button>
    </form>

    <p><a href="../list">Quay lại danh sách</a></p>
</body>
</html>
