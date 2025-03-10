<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Trang JSP Demo</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style>
        body {
            background-color: #f4f4f4;
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 20px;
        }
        .header {
            background-color: #0073e6;
            color: white;
            padding: 20px;
            font-size: 24px;
            font-weight: bold;
            border-radius: 5px;
        }
        .content {
            background: white;
            width: 80%;
            margin: 20px auto;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .product-item {
            border: 1px solid #ddd;
            padding: 15px;
            margin: 15px;
            border-radius: 5px;
            background: #fff;
            display: inline-block;
            width: 30%;
            text-align: center;
        }
        .product-item img {
            max-width: 100%;
            height: auto;
            border-radius: 5px;
        }
        .buy-btn, .edit-btn, .delete-btn {
            display: inline-block;
            text-decoration: none;
            color: white;
            background-color: #0073e6;
            padding: 10px 15px;
            margin: 5px;
            border-radius: 5px;
            transition: background 0.3s ease-in-out;
        }
        .buy-btn:hover, .edit-btn:hover, .delete-btn:hover {
            background-color: #005bb5;
        }
        nav a {
            display: inline-block;
            text-decoration: none;
            color: white;
            background-color: #0073e6;
            padding: 10px 15px;
            margin: 5px;
            border-radius: 5px;
            transition: background 0.3s ease-in-out;
        }
        nav a:hover {
            background-color: #005bb5;
        }
        .footer {
            background-color: #222;
            color: white;
            padding: 15px;
            position: relative;
            bottom: 0;
            width: 100%;
            margin-top: 20px;
            border-radius: 5px;
        }
    </style>
</head>
<body>

    <div class="header">
        <h1>Chào mừng đến với xưởng Mộc Hoàng Hoan</h1>
    </div>

    <div class="content">
        
        <nav>
            <a href="khachhang/list">Danh sách</a>
            <a href="saveform">Thêm sản phẩm</a>
            <a href="viewform">Sản phẩm</a>
            <a href="thietbi/list">Thiết bị</a>
            <a href="admin/list">Quản trị</a>
            <a href="giohang">Giỏ hàng</a>
            <a href="admin/login">Đăng nhập</a>
            <a href="admin/register">Đăng ký</a>
        </nav>
    </div>

    <div class="footer">
        <p>&copy; 2024 Trang Web của bạn</p>
    </div>

</body>
</html>
