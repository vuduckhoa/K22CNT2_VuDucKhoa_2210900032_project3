<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chỉnh Sửa Sản Phẩm</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('https://example.com/background.jpg') no-repeat center center fixed;
            background-size: cover;
            text-align: center;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 50%;
            margin: auto;
            background: rgba(255, 224, 229, 0.9);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        h1 {
            font-size: 40px;
            font-weight: bold;
            text-transform: uppercase;
            color: white;
            background: #ff1493;
            padding: 20px;
            border-radius: 10px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
        }

        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }

        td {
            padding: 10px;
            font-size: 18px;
        }

        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 8px;
            border: 2px solid #ff69b4;
            border-radius: 5px;
            font-size: 16px;
        }

        input[type="submit"] {
            background: #ff1493;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 8px;
            font-size: 18px;
            cursor: pointer;
            transition: 0.3s;
        }

        input[type="submit"]:hover {
            background: #ff69b4;
        }

        .back-btn {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 15px;
            background: #db7093;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            font-size: 18px;
            transition: 0.3s;
        }

        .back-btn:hover {
            background: #c71585;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Chỉnh Sửa Sản Phẩm</h1>
        <form:form method="POST" action="/SpringMVCPagination/luu">
            <table>
                <tr>
                    <td></td>
                    <td><form:hidden path="id" /></td>
                </tr>
                <tr>
                    <td>Tên sản phẩm:</td>
                    <td><form:input path="vdk_name" /></td>
                </tr>
                <tr>
                    <td>Ảnh URL:</td>
                    <td><form:input path="vdk_hinhanh" /></td>
                </tr>
                <tr>
                    <td>Giá:</td>
                    <td><form:input path="vdk_gia" type="number" /></td>
                </tr>
                <tr>
                    <td>Số lượng:</td>
                    <td><form:input path="vdk_soluong" type="number" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Lưu Sản Phẩm" />
                    </td>
                </tr>
            </table>
        </form:form>
        <a href="javascript:history.back()" class="back-btn">Quay Lại</a>
    </div>
</body>
</html>
