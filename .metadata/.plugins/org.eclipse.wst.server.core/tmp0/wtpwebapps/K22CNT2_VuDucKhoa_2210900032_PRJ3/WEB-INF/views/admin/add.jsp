<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thêm Admin</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
            text-align: center;
        }
        .container {
            max-width: 400px;
            margin: 0 auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #333;
        }
        label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
        }
        input, select {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        button {
            width: 100%;
            padding: 10px;
            background: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background 0.3s;
        }
        button:hover {
            background: #0056b3;
        }
        p {
            margin-top: 15px;
        }
        a {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
        }
        a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Thêm Admin</h2>
        <form action="add" method="post">
            <label for="vdk_TaiKhoan">Tài khoản:</label>
            <input type="text" id="vdk_TaiKhoan" name="vdk_TaiKhoan" required>
            
            <label for="vdk_MatKhau">Mật khẩu:</label>
            <input type="password" id="vdk_MatKhau" name="vdk_MatKhau" required>
            
            <label for="vdk_TrangThai">Trạng thái:</label>
            <select id="vdk_TrangThai" name="vdk_TrangThai">
                <option value="true">Hoạt động</option>
                <option value="false">Khóa</option>
            </select>
            
            <button type="submit">Thêm</button>
        </form>
        <p><a href="list">Quay lại danh sách</a></p>
    </div>
</body>
</html>
