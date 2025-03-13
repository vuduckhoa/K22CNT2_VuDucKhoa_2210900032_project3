<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Chọn Phương Thức Thanh Toán</title>
</head>
<body>
    <h2>Chọn Phương Thức Thanh Toán</h2>
    <form action="<c:url value='/vnpay' />" method="post">
        <button type="submit">Thanh toán qua VNPay</button>
    </form>
    <form action="<c:url value='/momo' />" method="post">
        <button type="submit">Thanh toán qua MoMo</button>
    </form>
    <form action="<c:url value='/zalopay' />" method="post">
        <button type="submit">Thanh toán qua ZaloPay</button>
    </form>
</body>
</html>
