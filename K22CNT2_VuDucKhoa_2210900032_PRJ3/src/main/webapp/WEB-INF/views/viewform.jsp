<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h1>Danh sach san pham</h1>
<table border="2" width="70%" cellpadding="2">
	<tr>
		<th>Id</th>
		<th>Name</th>
		<th>Anh</th>
		<th>Gia</th>
		<th>SoLuong</th>
		<th>mua</th>
		<th>Edit</th>
		<th>Delete</th>
	</tr>
	<c:forEach var="vdk_sanpham" items="${list}">
		<tr>
			<td>${vdk_sanpham.id}</td>
			<td>${vdk_sanpham.vdk_name}</td>
			<td><img src="${vdk_sanpham.vdk_hinhanh}" alt="Hình ảnh sản phẩm" width="100" height="100"/>
			</td>	
			<td>${vdk_sanpham.vdk_gia}</td>
			<td>${vdk_sanpham.vdk_soluong}</td>
			<td>
   <a href="<c:url value='/add-to-cart'>
            <c:param name='id' value='${vdk_sanpham.id}'/>
            <c:param name='vdk_name' value='${vdk_sanpham.vdk_name}'/>
            <c:param name='vdk_hinhanh' value='${vdk_sanpham.vdk_hinhanh}'/>
            <c:param name='vdk_gia' value='${vdk_sanpham.vdk_gia}'/>
         </c:url>">
    Mua
</a>

</td>

			<td><a href="sua/${vdk_sanpham.id}">Edit</a></td>
			<td><a href="xoa/${vdk_sanpham.id}">Delete</a></td>
		</tr>
	</c:forEach>
</table>
<br />
<a href="saveform">Them san pham</a>
<a href="giohang">Mua</a>
<td><input type="button" value="Back" onclick="window.history.back();" /></td>