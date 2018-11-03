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
	<link rel="stylesheet" href="css1/add.css">
</head>

<body>
	<!-- menu-top -->
	<jsp:include page="include/menu-top.jsp"></jsp:include>
	<div class="container">

		<div class="top">
			<h3>Thêm sản phẩm
			</h3>
			<a href="listProduct">Danh sách sản phẩm</a>
		</div>

		<form action="/Book/admin/addProduct" method="post" enctype="multipart/form-data">

			<div class="form-group">
				<label for="text-input" class=" form-control-label">Tên
					sản phẩm</label>
				<input type="text" id="nameProduct" name="name" onfocusout="checkParam()" placeholder="Tên sản phẩm">
				<div>
					<p id="nameProductEr" class="er-red"></p>
				</div>
			</div>

			<div class="form-group">
				<label for="selectSm" class=" form-control-label">Thể
					loại</label>
				<select name="idCategory">
					<%
							for (Category c : categorys) {
						%>
					<option value="<%=c.getId()%>">
						<%=c.getName()%>
					</option>
					<%
							}
						%>
				</select>
			</div>

			<div class="form-group">
				<label for="text-input" class=" form-control-label">Tác
					giả</label>
				<input type="text" id="nameAuthor" name="author" onfocusout="checkParam()" placeholder="Tác giả" class="form-control">
				<div>
					<p id="nameAuthorEr" class="er-red"></p>
				</div>
			</div>

			<div class="form-group">
				<label for="text-input" class=" form-control-label">Thời
					gian xuất bản</label>

				<input type="date" id="namePublicAt" name="publicAt" onfocusout="checkParam()" placeholder="Giá tiền" class="form-control">
				<div>
					<p id="namePublicAtEr" class="er-red"></p>
				</div>
			</div>

			<div class="form-group">
				<label for="text-input" class=" form-control-label">Số
					lượng</label>
				<input type="text" id="nameCount" name="count" onfocusout="checkParam()" placeholder="Số lượng" class="form-control">
				<div>
					<p id="nameCountEr" class="er-red"></p>
				</div>
			</div>

			<div class=" form-group">
				<label for="text-input" class=" form-control-label">Giá
					tiền</label>
				<input type="text" id="namePrice" name="price" onfocusout="checkParam()" placeholder="Giá tiền" class="form-control">
				<div>
					<p id="namePriceEr" class="er-red"></p>
				</div>
			</div>


			<div class=" form-group">
				<label for="text-input" class=" form-control-label">Giới
					thiệu</label>
				<input type="text" id="nameTitle" name="title" onfocusout="checkParam()" placeholder="Giới thiệu tổng quan" class="form-control">
				<div>
					<p id="nametitleEr" class="er-red"></p>
				</div>
			</div>

			<div class="form-group">
				<label for="textarea-input" class=" form-control-label">Mô
					tả</label>
				<textarea name="description" id="nameDescription" onfocusout="checkParam()" rows="9" placeholder="Mô tả" class="form-control"></textarea>
				<div>
					<p id="nameDescriptionEr" class="er-red"></p>
				</div>
			</div>

			<div class=" form-group">
				<label for="select" class=" form-control-label">Sản phẩm</label>
				<select name="type" id="select" class="form-control">
					<option value="new">Mới</option>
					<option value="hot">Nổi bật</option>
					<option value="sellMultiple">Bán chạy</option>
				</select>
			</div>


			<div class="form-group">
				<label for="file-input">Ảnh
					thumbnail</label>
				<input type="file" id="file-input" name="thubnail" class="form-control-file">

			</div>

			<div class=" form-group">
				<label for="file-input">Ảnh
					1</label>
				<input type="file" id="file-input" name="image1" class="form-control-file">

			</div>

			<div class=" form-group">
				<label for="file-input">Ảnh
					2</label>
				<input type="file" id="file-input" name="image2" class="form-control-file">
			</div>

			<div class=" form-group">
				<label for="file-input">Ảnh
					2</label>
				<input type="file" id="file-input" name="image3" class="form-control-file">
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

		<script>
			function checkParam() {

				// chuẩn hóa đầu vào
				var nameProduct = document.getElementById("nameProduct").value.trim();
				var nameAuthor = document.getElementById("nameAuthor").value.trim();
				var nameCount = document.getElementById("nameCount").value.trim();
				var nameDescription = document.getElementById("nameDescription").value.trim();
				var namePrice = document.getElementById("namePrice").value.trim();
				var namePublicAt = document.getElementById("namePublicAt").value.trim();
				var nameTitle = document.getElementById("nameTitle").value.trim();

				// name
				if (nameProduct == "") {
					document.getElementById("nameProductEr").innerHTML = "Chưa nhập tên sản phẩm";

				} else {
					document.getElementById("nameProductEr").innerHTML = "";
				}


				if (nameAuthor == "") {
					document.getElementById("nameAuthorEr").innerHTML = "Chưa nhập tên tác giả";

				} else {
					document.getElementById("nameAuthorEr").innerHTML = "";
				}

				if (nameCount == "") {
					document.getElementById("nameCountEr").innerHTML = "Chưa nhập số lượng sản phẩm";

				} else {
					document.getElementById("nameCountEr").innerHTML = "";
				}

				if (nameDescription == "") {
					document.getElementById("nameDescriptionEr").innerHTML = "Chưa nhập mô tả sản phẩm";

				} else {
					document.getElementById("nameDescriptionEr").innerHTML = "";
				}

				if (namePrice == "") {
					document.getElementById("namePriceEr").innerHTML = "Chưa nhập giá sản phẩm";

				} else {
					document.getElementById("namePriceEr").innerHTML = "";
				}

				if (namePublicAt == "") {
					document.getElementById("namePublicAtEr").innerHTML = "Chưa nhập năm xuất bản";

				} else {
					document.getElementById("namePublicAtEr").innerHTML = "";
				}

				if (nameTitle == "") {
					document.getElementById("nametitleEr").innerHTML = "Chưa nhập tiêu đề sản phẩm";

				} else {
					document.getElementById("nametitleEr").innerHTML = "";
				}
			}
		</script>
	</div>
</body>

</html>