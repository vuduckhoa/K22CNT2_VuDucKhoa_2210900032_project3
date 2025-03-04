<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Giỏ Hàng</title>
</head>
<body>
    <h1>Giỏ Hàng</h1>

    <c:if test="${not empty cartItems}">
        <table border="1">
            <thead>
                <tr>
                    <th>Tên sản phẩm</th>
                     <th>Ảnh</th>
                    <th>Giá</th>
                    <th>Số lượng</th>
                    <th>Tổng tiền</th>
                    <th>Hành động</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="item" items="${cartItems}">
                    <tr>
                        <td>${item.vdk_name}</td> 
                     <td><img src="${item.vdk_hinhanh}" alt="Ảnh sản phẩm" width="100" height="100"></td>


                        <td>${item.vdk_gia} VND</td> 
                        <td>${item.vdk_soluong}</td>
                        <td>${item.vdk_gia * item.vdk_soluong} VND</td> 
                        <td><a href="xoagiohang/${item.id}">Xóa</a></td> 
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <h3>Tổng cộng: ${totalAmount} VND</h3>
        <a href="#">Thanh toán</a>
    </c:if>

    <c:if test="${empty cartItems}">
        <p>Giỏ hàng của bạn hiện tại trống.</p>
    </c:if>

    <br />
    <a href="viewform">Tiếp tục mua sắm</a>
</body>
</html>
