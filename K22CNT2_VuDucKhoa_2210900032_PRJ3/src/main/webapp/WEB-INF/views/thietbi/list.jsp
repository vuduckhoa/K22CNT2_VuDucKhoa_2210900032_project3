<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Danh Sách Thiết Bị</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f4f4f4;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background: white;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        th, td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ddd;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        a {
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
        }
        a:hover {
            color: #0056b3;
        }
        .btn-add {
            display: inline-block;
            margin-bottom: 10px;
            padding: 8px 15px;
            background-color: #28a745;
            color: white;
            border-radius: 5px;
            text-decoration: none;
        }
        .btn-add:hover {
            background-color: #218838;
        }
        img {
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <h2>Danh Sách Thiết Bị</h2>
    <a href="add" class="btn-add">Thêm thiết bị</a>
    <table>
        <tr>
            <th>ID</th>
            <th>Tên Thiết Bị</th>
            <th>Số Lượng</th>
            <th>Hình Ảnh</th>
            <th>Trạng Thái</th>
            <th>Hành Động</th>
        </tr>
        <c:forEach var="t" items="${list}">
            <tr>
                <td>${t.id}</td>
                <td>${t.vdk_name}</td>
                <td>${t.vdk_soluong}</td>
                <td><img src="${t.vdk_hinhanh}" width="50" height="50"></td>
                <td>${t.vdk_trangthai ? 'Còn dùng được' : 'hỏng hoặc hết hàng'}</td>
                <td>
                    <a href="edit/${t.id}">Sửa</a> | 
                    <a href="delete/${t.id}" onclick="return confirm('Xóa thiết bị này?')">Xóa</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
