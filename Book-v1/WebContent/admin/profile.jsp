<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="model.User"%>


<%
	User users = (User) request.getAttribute("user");
%>

<!doctype html>
<html class="no-js" lang="vi">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Bài tập lớn nhóm 12</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Google Fonts
		============================================ -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900"
	rel="stylesheet">
<!-- font awesome CSS
		============================================ -->
<link rel="stylesheet" href="css1/font-awesome.min.css">

<link rel="stylesheet" href="css1/style.css">
<link rel="stylesheet" href="css1/profile.css">
</head>

<body>
	<!-- menu-top -->
	<jsp:include page="include/menu-top.jsp"></jsp:include>
	<div class="container">
		<div class="bg-while">
			<div class="top">
				<h3>Thông tin cá nhân</h3>
				<a href="/Book/admin/profile?type=edit">Cập nhật thông tin cá nhân</a>
			</div>
			<div class="profile">
				<h1>Nhân viên : <%=users.getName()%></h1>
				<p class="title">Email : <%=users.getEmail()%></p>
				<p>SDT : <%=users.getPhone()%></p>
				<p>Địa chỉ : <%=users.getAddress()%></p>
				<p> Chức vụ :
					<%
						if (users.getRole() == 4) {
							out.print("Giám đốc");
						} else if (users.getRole() == 1) {
							out.print("Quản lý nhân viên");
						} else if (users.getRole() == 2) {
							out.print("Quản lý sản phẩm");
						} else {
							out.print("Quản lý đơn hàng");
						}
					%>
				</p>
			</div>
		</div>
</body>

</html>