<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Xác nhận Thanh Toán</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background: #f8f9fa;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 60%;
            margin: 50px auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
        h2 {
            color: #ff1493;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: center;
        }
        th {
            background: #ff69b4;
            color: white;
        }
        .total {
            font-size: 20px;
            font-weight: bold;
            color: #ff1493;
        }
        .payment-method {
            margin-top: 20px;
        }
        .payment-btn {
            background: #ff1493;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }
        .payment-btn:hover {
            background: #ff69b4;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Xác nhận Thanh Toán</h2>
        <table>
            <thead>
                <tr>
                    <th>Tên sản phẩm</th>
                    <th>Ảnh</th>
                    <th>Giá</th>
                    <th>Số lượng</th>
                    <th>Tổng tiền</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="item" items="${cartItems}">
                    <tr>
                        <td>${item.vdk_name}</td>
                        <td><img src="${item.vdk_hinhanh}" alt="Ảnh sản phẩm" width="80"></td>
                        <td>${item.vdk_gia} VND</td>
                        <td>${item.vdk_soluong}</td>
                        <td>${item.vdk_gia * item.vdk_soluong} VND</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <h3 class="total">Tổng cộng: ${totalAmount} VND</h3>

        <!-- Chọn phương thức thanh toán -->
        <form action="processCheckout" method="post">
            <div class="payment-method">
                <label for="payment">Chọn phương thức thanh toán:</label>
                <select name="paymentMethod" required>
                    <option value="VNPay">VNPay</option>
                    <option value="MoMo">MoMo</option>
                    <option value="ZaloPay">ZaloPay</option>
                </select>
            </div>

            <input type="hidden" name="totalAmount" value="${totalAmount}">
            <input type="hidden" name="customerName" value="Khách Hàng A"> <!-- Có thể lấy từ session -->

            <button type="submit" class="payment-btn">Thanh toán</button>
        </form>
        
        <br>
        <a href="giohang">Quay lại giỏ hàng</a>
    </div>
</body>
</html>
