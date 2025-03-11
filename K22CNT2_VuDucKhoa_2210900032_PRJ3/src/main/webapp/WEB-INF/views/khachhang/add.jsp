<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thêm Khách Hàng</title>
    
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
            width: 40%;
            margin: 20px auto;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            text-align: left;
        }

        label {
            font-weight: bold;
            display: block;
            margin: 10px 0 5px;
        }

        input[type="text"], input[type="email"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }

        input[type="submit"] {
            background-color: #28a745;
            color: white;
            padding: 10px 15px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            font-size: 16px;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }

        a {
            display: block;
            text-align: center;
            margin-top: 10px;
            text-decoration: none;
            color: #dc3545;
            font-size: 16px;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h2>Thêm Khách Hàng</h2>
    <form action="save" method="post">
        <label>Tên:</label>
        <input type="text" name="vdk_name" required>
        
        <label>Số điện thoại:</label>
        <input type="text" name="vdk_sdt" required>
        
        <label>Email:</label>
        <input type="email" name="vdk_email" required>
        
        <label>Địa chỉ:</label>
        <input type="text" name="vdk_diaChi" required>
        
        <input type="submit" value="Lưu">
        <a href="list">Hủy</a>
    </form>
</body>
</html>
