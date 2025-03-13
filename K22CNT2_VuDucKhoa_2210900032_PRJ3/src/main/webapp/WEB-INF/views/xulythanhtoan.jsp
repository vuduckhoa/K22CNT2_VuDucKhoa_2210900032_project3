<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Xử Lý Thanh Toán</title>
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
        .info p {
            font-size: 18px;
            margin: 10px 0;
        }
        .qr-code {
            margin-top: 20px;
            width: 250px;
            height: 250px;
        }
        .payment-btn {
            display: inline-block;
            padding: 12px 20px;
            background: linear-gradient(135deg, #28a745, #218838);
            color: white;
            text-decoration: none;
            border-radius: 8px;
            margin-top: 20px;
            font-size: 18px;
            border: none;
            cursor: pointer;
            transition: 0.3s;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }
        .payment-btn:hover {
            background: linear-gradient(135deg, #218838, #1e7e34);
            transform: scale(1.05);
        }
        .back-link {
            display: block;
            margin-top: 20px;
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
        }
        .back-link:hover {
            text-decoration: underline;
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
        <h2>Thông Tin Thanh Toán</h2>

        <div class="info">
            <p><strong>Họ và tên:</strong> <c:out value="${customerName}" /></p>
            <p><strong>Số điện thoại:</strong> <c:out value="${customerPhone}" /></p>
            <p><strong>Địa chỉ:</strong> <c:out value="${customerAddress}" /></p>
            <p><strong>Tổng tiền:</strong> <c:out value="${String.format('%,d', totalAmount)}" /> VND</p>
            <p><strong>Phương thức thanh toán:</strong> <c:out value="${paymentMethod}" /></p>
        </div>

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

        <c:choose>
            <c:when test="${not empty paymentUrl}">
                <p>Quét mã QR để thanh toán:</p>
                <img src="${paymentUrl}" alt="QR Code Thanh Toán" class="qr-code">
            </c:when>
            <c:otherwise>
                <p style="color: red;">Không tìm thấy mã QR thanh toán.</p>
            </c:otherwise>
        </c:choose>

        <form action="<c:url value='/thanhtoan-thanhcong' />" method="post">
    <button type="submit" class="payment-btn">✅ Xác nhận thanh toán</button>
</form>

        <a href="giohang" class="back-link">🔙 Quay lại giỏ hàng</a>
    </div>
</body>
</html>
