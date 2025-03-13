<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Thanh Toán Thành Công</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 50px;
        }
        .container {
            padding: 20px;
            background: #f9f9f9;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 50%;
            margin: auto;
        }
        .success-message {
            color: green;
            font-size: 20px;
            margin-top: 20px;
        }
        .home-btn {
            display: inline-block;
            padding: 10px 20px;
            background: #28a745;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>✅ Thanh Toán Thành Công!</h2>
        <p class="success-message">${message}</p>
        
        <h3>Thông Tin Đơn Hàng</h3>
        <p><strong>Họ và tên:</strong> ${customerName}</p>
        <p><strong>Số điện thoại:</strong> ${customerPhone}</p>
        <p><strong>Địa chỉ:</strong> ${customerAddress}</p>
        <p><strong>Tổng tiền:</strong> ${String.format('%,d', totalAmount)} VND</p>
        <p><strong>Phương thức thanh toán:</strong> ${paymentMethod}</p>
        
        <h3>Danh sách sản phẩm:</h3>
        <table>
            <tr>
                <th>Tên sản phẩm</th>
                <th>Số lượng</th>
                <th>Giá</th>
            </tr>
             <c:forEach var="item" items="${cartItems}">
                <tr>
                    <td>${item.vdk_name}</td>
                    <td>${item.vdk_soluong}</td>
                    <td>${String.format("%,d", item.vdk_gia * item.vdk_soluong)} VND</td>
                </tr>
            </c:forEach>
        </table>
        
        <a href="${pageContext.request.contextPath}/" class="home-btn">🏠 Quay lại Trang Chủ</a>
    </div>
</body>
</html>