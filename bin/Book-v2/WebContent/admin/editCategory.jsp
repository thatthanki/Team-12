<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Category"%>

<%
	Category category = (Category) request.getAttribute("category");
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
	<link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
	<!-- font awesome CSS
		============================================ -->
	<link rel="stylesheet" href="css1/font-awesome.min.css">

	<link rel="stylesheet" href="css1/style.css">
	<link rel="stylesheet" href="css1/add.css">
</head>

<body>
	<!-- menu-top -->
	<jsp:include page="include/menu-top.jsp"></jsp:include>
	<div class="container">

		<div class="top">
			<h3>sửa thể loại sách :
				<%=category.getName()%>
			</h3>
			<a href="listCategory">Danh sách thể loại</a>
		</div>
		
		<form action="/Book/admin/editCategory" method="post">
			<input type="hidden" name="id" value="<%= category.getId()%>">
			<div class="form-group">
				<label for="text-input" class=" form-control-label"> Tên thể loại</label>
				<input type="text" id="text-input" name="name" value="<%=category.getName()%>">
			</div>

			<div class="card-footer">
				<label></label>
				<button type="submit" class="btn btn-primary btn-sm">
					<i class="fa fa-dot-circle-o"></i> Submit
				</button>
				<button type="reset" class="btn btn-danger btn-sm">
					<i class="fa fa-ban"></i> Reset
				</button>
			</div>

		</form>
	</div>
</body>

</html>