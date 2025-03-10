<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Danh Sách Sản Phẩm</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('https://cdn.hostingviet.vn/data/tinymce/2023/hinh-nen-may-tinh-4k-1.jpg') no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 90%;
            margin: auto;
            background: rgba(255, 224, 229, 0.4); /* Giảm độ đục */
            backdrop-filter: blur(8px); /* Tăng hiệu ứng mờ */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
        }

        h1 {
            color: white;
            padding: 20px 0;
            background: rgba(255, 105, 180, 0.5); /* Nền trong suốt hơn */
            margin: 0;
            border-radius: 10px 10px 0 0;
        }

        .product-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            margin-top: 20px;
        }

        .product-item {
            background: rgba(255, 255, 255, 0.8); /* Làm sản phẩm cũng trong suốt nhẹ */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 250px;
            border: 2px solid rgba(255, 105, 180, 0.6);
        }

        .product-item img {
            width: 100%;
            height: auto;
            border-radius: 10px;
        }

        .product-item a {
            display: block;
            margin: 10px 0;
            padding: 10px;
            border-radius: 5px;
            color: white;
            text-decoration: none;
        }

        .buy-btn {
            background: #ff1493;
        }

        .edit-btn {
            background: #ffb6c1;
        }

        .delete-btn {
            background: #db7093;
        }

        .action-buttons {
            margin-top: 20px;
        }

        .action-buttons a {
            display: inline-block;
            padding: 12px 20px;
            margin: 10px;
            font-size: 16px;
            font-weight: bold;
            color: white;
            border-radius: 8px;
            text-decoration: none;
            background: #ff1493;
            transition: 0.3s;
        }

        .action-buttons a:hover {
            background: #ff69b4;
        }

        .footer {
            margin-top: 20px;
            padding: 10px;
            background: rgba(255, 105, 180, 0.5); /* Giảm độ đục */
            color: white;
            text-align: center;
            border-radius: 0 0 10px 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Danh Sách Sản Phẩm</h1>
        <div class="product-list">
            <c:forEach var="product" items="${list}">
                <div class="product-item">
                    <h2>${product.vdk_name}</h2>
                    <img src="${product.vdk_hinhanh}" alt="Hình ảnh sản phẩm"/>
                    <p>Giá: ${product.vdk_gia}</p>
                    <p>Số Lượng: ${product.vdk_soluong}</p>
                    <a href="<c:url value='/add-to-cart'>
                        <c:param name='id' value='${product.id}'/>
                        <c:param name='vdk_name' value='${product.vdk_name}'/>
                        <c:param name='vdk_hinhanh' value='${product.vdk_hinhanh}'/>
                        <c:param name='vdk_gia' value='${product.vdk_gia}'/>
                    </c:url>" class="buy-btn">
                        Mua
                    </a>
                    <a href="sua/${product.id}" class="edit-btn">Edit</a>
                    <a href="xoa/${product.id}" class="delete-btn">Delete</a>
                </div>
            </c:forEach>
        </div>
        <div class="action-buttons">
            <a href="saveform">Thêm Sản Phẩm</a>
            <a href="giohang">Giỏ Hàng</a>
        </div>
        <br/>
        <input type="button" value="Back" onclick="window.history.back();" />
    </div>
    <div class="footer">
        &copy; 2025 Web quản lý xưởng mộc Hoàng Hoan - Vũ Đức Khoa
    </div>
</body>
</html>
