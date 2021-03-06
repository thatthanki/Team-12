<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<h3>Thêm thể loại sách</h3>
			<a href="listCategory">Danh sách thể loại</a>
		</div>
		<form action="/Book/admin/addCategory" method="post">

			<div class="form-group">
				<label for="text-input" class=" form-control-label"> Tên thể loại</label>
				<input type="text" id="nameCategory" value="" onfocusout="checkParam()" name="name" placeholder="Thể loại">
				<div id="categoryEr">
					<p id="categoryEr-sub" class="er-red"></p>
				</div>
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
					var nameCategory = document.getElementById("nameCategory").value.trim();
					
					if (nameCategory == "") {
						document.getElementById("categoryEr-sub").innerHTML = "Chưa nhập tên thể loại";
	
					} else {
						document.getElementById("categoryEr-sub").innerHTML = "";
					}
				}
			</script>

	</div>
</body>

</html>