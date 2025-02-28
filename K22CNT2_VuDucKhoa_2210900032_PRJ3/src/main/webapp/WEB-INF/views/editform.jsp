<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Sua san pham</h1>
<form:form method="POST" action="/SpringMVCPagination/luu">
	<table>
		<tr>
			<td></td>
			<td><form:hidden path="id" /></td>
		</tr>
		<tr>
			<td>Name :</td>
			<td><form:input path="vdk_name" /></td>
		</tr>
		<tr>
			<td>Anh :</td>
			<td><form:input path="vdk_hinhanh" /></td>
		</tr>
		<tr>
			<td>Gia :</td>
			<td><form:input path="vdk_gia" /></td>
		</tr>
		<tr>
			<td>SoLuong :</td>
			<td><form:input path="vdk_soluong" /></td>
		</tr>

		<tr>
			<td></td>
			<td><input type="submit" value="luu" /></td>
		</tr>
	</table>
</form:form>
