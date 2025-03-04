<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Chỉnh Sửa Thiết Bị</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 20px;
            text-align: center;
        }
        h2 {
            color: #333;
        }
        form {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: inline-block;
            text-align: left;
        }
        label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
        }
        input, select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px;
            cursor: pointer;
            margin-top: 15px;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        a {
            display: inline-block;
            margin-top: 15px;
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
        }
        a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
    <h2>Chỉnh Sửa Thiết Bị</h2>
    <form action="../update" method="post">
        <input type="hidden" name="id" value="${command.id}">

        <label>Tên Thiết Bị:</label>
        <input type="text" name="vdk_name" value="${command.vdk_name}" required>

        <label>Số Lượng:</label>
        <input type="number" name="vdk_soluong" value="${command.vdk_soluong}" required>

        <label>Hình Ảnh URL:</label>
        <input type="text" name="vdk_hinhanh" value="${command.vdk_hinhanh}">

        <label>Trạng Thái:</label>
        <select name="vdk_trangthai">
            <option value="true" ${command.vdk_trangthai ? 'selected' : ''}>Hoạt động</option>
            <option value="false" ${!command.vdk_trangthai ? 'selected' : ''}>Không hoạt động</option>
        </select>

        <input type="submit" value="Cập Nhật">
    </form>
    <br>
    <a href="../list">Quay lại</a>
</body>
</html>
