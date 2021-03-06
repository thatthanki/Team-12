<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Category"%>
<%
	ArrayList<Category> categorys = (ArrayList) request.getAttribute("categorys");
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
	<link rel="stylesheet" href="css1/list.css">
</head>

<body>
	<!-- menu-top -->
	<jsp:include page="include/menu-top.jsp"></jsp:include>
	<div class="container">
		<div class="bg-while">
			<div class="top">
				<h3>Thể loại</h3>
				<a href="addCategory">Thêm thể loại</a>
			</div>

			<form action="/Book/admin/listCategory" method="get">

				<div class="seach-content">

					<div class="form-group">
						<input name="name" value="<%= (request.getParameter(" name")=="" || request.getParameter("name")==null) ? "" :
						 request.getParameter("name") %>" class="form-control-sm form-control" placeholder="Nhập thể loại">
					</div>

					<div class="form-group">
						<button type="submit">Tìm kiếm</button>
					</div>
				</div>
			</form>
		</div>

		<div class="table-responsive">
			<table class="table">
				<thead>
					<tr>
						<th>id</th>
						<th>Thể loại</th>
						<th></th>
					</tr>
				</thead>
				<tbody>

					<%
							for (Category c : categorys) {
						%>
					<tr class="tr-shadow">
						<td>
							<%=c.getId()%>
						</td>
						<td><span>
								<%=c.getName()%></span></td>
						<td style="width: 100px;">
							<div class="table-feature">
								<a href="editCategory?id=<%=c.getId()%>" class="item tooltip">
									<i class="fa fa-pencil-square"></i>
									<span class="tooltiptext">Sửa thể loại</span>
								</a>
								<a href="deleteCategory?id=<%=c.getId()%>" class="item tooltip">
									<i class="fa fa-recycle"></i>
									<span class="tooltiptext">Xóa thể loại</span>
								</a>
							</div>
						</td>
					</tr>

					<%
							}
						%>
				</tbody>
			</table>
		</div>
	</div>
</body>

</html>