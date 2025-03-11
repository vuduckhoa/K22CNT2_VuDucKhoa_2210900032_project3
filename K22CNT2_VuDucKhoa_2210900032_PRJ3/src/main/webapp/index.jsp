<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Hệ Thống Quản Lý Xưởng Mộc Hoàng Hoan</title>
<style>
body {
	font-family: Arial, sans-serif;
	display: flex;
	margin: 0;
	background: #ecf0f1;
}

.sidebar {
	width: 250px;
	background: #34495e;
	color: white;
	height: 100vh;
	padding: 20px;
	box-shadow: 3px 0 10px rgba(0, 0, 0, 0.2);
}

.sidebar h2 {
	text-align: center;
	margin-bottom: 20px;
	font-size: 22px;
	font-weight: bold;
	border-bottom: 2px solid #1abc9c;
	padding-bottom: 10px;
}

.sidebar ul {
	list-style: none;
	padding: 0;
}

.sidebar ul li {
	padding: 12px;
	transition: background 0.3s;
}

.sidebar ul li a {
	color: white;
	text-decoration: none;
	display: block;
	font-size: 16px;
	font-weight: 500;
	padding: 10px;
	border-radius: 5px;
	transition: background 0.3s, transform 0.2s;
}

.sidebar ul li a:hover {
	background: #1abc9c;
	transform: translateX(5px);
}

.content {
	flex-grow: 1;
	padding: 40px;
	text-align: center;
}

.content h1 {
	color: #2c3e50;
	font-size: 28px;
	margin-bottom: 20px;
}

.product-container {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
	gap: 20px;
	justify-content: center;
	padding: 20px;
}

.product-card {
	background: white;
	padding: 15px;
	border-radius: 10px;
	box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
	transition: transform 0.3s ease;
	text-align: center;
}

.product-card:hover {
	transform: scale(1.05);
}

.product-card img {
	width: 100%;
	max-width: 200px;
	height: auto;
	border-radius: 10px;
	margin-bottom: 10px;
}

.product-card h3 {
	font-size: 18px;
	color: #2c3e50;
	margin-bottom: 10px;
}

.product-card p {
	color: #1abc9c;
	font-size: 16px;
	font-weight: bold;
}

.product-card button {
	background: #1abc9c;
	color: white;
	border: none;
	padding: 8px 12px;
	cursor: pointer;
	font-size: 14px;
	border-radius: 5px;
	transition: background 0.3s;
}

.product-card button:hover {
	background: #16a085;
}
</style>
</head>
<body>
	<div class="sidebar">
		<h2>Menu</h2>
		<ul>
			<li><a href="viewform">Sản Phẩm</a></li>
			<li><a href="thietbi/list">Thiết Bị</a></li>
			<li><a href="giohang">Giỏ Hàng</a></li>
			<li><a href="khachhang/list">Khách Hàng</a></li>
			<li><a href="admin/list">Quản Trị</a></li>

			<li><a href="admin/login">Đăng Nhập</a></li>
		</ul>
	</div>

	<div class="content">
		<h1>Bàn Gỗ</h1>

		<div class="product-container">
			<div class="product-card">
				<a href="#"> <img
					src="https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcSveplbTzJ7eMzgfmn9Wq5gt5yYDCRy4fJiavzYrEbD85ljuw_WUVlcFUxqz6vdK32ygq5m0S1i_BpImftEq2JkMN6ztNSQgKccx4C9f1FnwnBEWa-2ieZG1w&usqp=CAE"
					alt="Laptop Dell">
				</a>
				<h3>Bàn gỗ tự nhiên thiết ké đa năng SD256</h3>
				<p>Giá: 5,000,000 VNĐ</p>
				<p>Số lượng: 100</p>
				<button onclick="window.location.href='viewform'">Xem thêm</button>
			</div>

			<div class="product-card">
				<a href="#"> <img
					src="https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSM2Dwl58mkp6Zwu_HYQ8mmd6z8VFRnfeE24VANMuVXQ4BmWefHV7i93xqAG9Vq6BFV0yatK2t2OM4YIVibneRbe6bgezi1HA&usqp=CAE"
					alt="iPhone 14">
				</a>
				<h3>Bàn trà nhật gỗ xoan</h3>
				<p>Giá: 2,000,000 VNĐ</p>
				<p>Số lượng: 56</p>
				<button onclick="window.location.href='viewform'">Xem thêm</button>
			</div>
			<div class="product-card">
				<a href="#"> <img
					src="https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcTfbIMR9sUbnJjj4DuRqhO6n-MJYRkKlMRF_Ou86w5PGQ04VHkZdRIV1YY4sXyokoLQYBkbxeq-8o6mA8Jx7CAiuZCG47gG4TfGbjlOwRVQ&usqp=CAE"
					alt="Samsung Galaxy">
				</a>
				<h3>Bàn gỗ tự nhiên kết hợp tủ lưu trữ đa năng TG061</h3>
				<p>Giá: 2,100,000 VNĐ</p>
				<p>Số lượng: 81</p>
				<button onclick="window.location.href='viewform'">Xem thêm</button>

			</div>

			<div class="product-card">
				<a href="#"> <img
					src="https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcRw-G-00iAoAbxlGrUVMkFUWsuLjx6m7PakMq8imePqJW4ib6HrHdDJZXOnoIIkZTGrIjTCcsl-CgStm1muiDVXDUt8DrvV6lRQj5sU9096&usqp=CAE"
					alt="Tai nghe Sony">
				</a>
				<h3>Bàn Gỗ Tự Nhiên Bàn Làm việc kèm giá sách di động đa năng
					OpenLiving OBG 043</h3>
				<p>Giá: 13,000,000 VNĐ</p>
				<p>Số lượng: 220</p>
				<button onclick="window.location.href='viewform'">Xem thêm</button>
			</div>
		</div>
	</div>

	<div class="content">
		<h1>Tủ Gỗ</h1>
		<div class="product-container">
			<div class="product-card">
				<a href="#"> <img
					src="https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQPeizyS_OgohWriGEhmd8E1iNUfVKxYaLhsoIFQy6vQ6G1KTSFlPvXYmBtcIR6zLFZfP28yQiOwYJrpNd59vl9FT4qbeNcsaaMDyKrog&usqp=CAE"
					alt="Laptop Dell">
				</a>
				<h3>Tủ quần áo nhôm vân gỗ</h3>
				<p>Giá: 51,000,000 VNĐ</p>
				<p>Số lượng: 10</p>
				<button onclick="window.location.href='viewform'">Xem thêm</button>
			</div>
			<div class="product-card">
				<a href="#"> <img
					src="https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQrmSHnu62bUY_jtg9HKzeHXXV8u-Bb5czw_zuBj2U4c6Wq0j1bUm_y1fPagmmMgaryLCcUxecy4059DSC-U2-WV63AzKPYET6dXSdy0kfj&usqp=CAE"
					alt="iPhone 14">
				</a>
				<h3>Tủ quần áo gỗ kết hợp, thiết kế tiện nghi BR118</h3>
				<p>Giá: 42,000,000 VNĐ</p>
				<p>Số lượng: 56</p>
				<button onclick="window.location.href='viewform'">Xem thêm</button>
			</div>

		</div>
	</div>
</body>
</html>
