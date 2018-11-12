<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Product"%>
<%@page import="model.Category"%>
<%@page import="model.Image"%>
<%@page import="model.Cart"%>
<%@page import="model.User"%>
<%@page import="model.Item"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.*"%>

<%
	User user = (User) request.getAttribute("user");
%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<jsp:include page="include/head.jsp"></jsp:include>

<link rel="stylesheet" href="css/checkout.css">

</head>

<body>


	<!-- menu top -->
	<jsp:include page="include/menu-area.jsp"></jsp:include>
	<!-- end menu top -->

	<div class="infomation">
		<h3>Check out</h3>
	</div>
	<div class="container">

		<div class="list-product">



			<form action="/Book/Checkout" method="post">
				<div class="input-group">
					<label for="">Nhập tên khách hàng </label> <input type="text"
						name="customer"
						value="<%= user.getName() %>" />
				</div>

				<div class="input-group">
					<label for="">Nhập địa chỉ nơi nhận hàng</label> <input type="text"
						name="address" value="<%= user.getAddress() %>" />
				</div>

				<div class="input-group">
					<label for="">Nhập sdt nhận hàng</label> <input type="text"
						name="phone" value="<%= user.getPhone() %>" />
				</div>

				<button type="submit">CheckOut</button>
			</form>

		</div>

	</div>

</body>

</html>