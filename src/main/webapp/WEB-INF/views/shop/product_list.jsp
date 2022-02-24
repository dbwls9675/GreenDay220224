<%@page import="org.comstudy21.myapp.model.ProductDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>상품 리스트</h1>

	<form action="">
		<table border="1" width="500">
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>가격</th>
				<th>수량</th>
			</tr>
			<%
			ArrayList<ProductDto> pList = (ArrayList<ProductDto>)request.getAttribute("pList");
			for (int i = 0; i < pList.size(); i++) {
				ProductDto dto = pList.get(i);
			%>

			<tr>
				<td><%=dto.getNo()%></td>
				<td><a href="product_detail.do?no=<%=dto.getNo()%>"><%=dto.getpName()%></a></td>
				<td><%=dto.getPrice()%></td>
				<td><%=dto.getEa()%></td>
			</tr>
			<%
			}
			%>
		</table>
	</form>
</body>
</html>