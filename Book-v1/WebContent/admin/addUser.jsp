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
			<h3>Thêm nhân viên</h3>
			<a href="listUser">Danh sách nhân viên</a>
		</div>
		<form action="/Book/admin/addUser" method="post">

			<div class="form-group">
				<label for="text-input" class=" form-control-label">Họ
					tên </label>
				<input type="text" name="name" id="nameUser" placeholder="Họ Tên" onfocusout="checkParam()">
				<div>
					<p id="nameUserEr" class="er-red"></p>
				</div>
			</div>

			<div class="form-group">
				<label for="selectSm" class=" form-control-label">Chức vụ</label>
				<select name="role">

					<option value="4">Giám đốc</option>
					<option value="1">Quản lý nhân viên</option>
					<option value="2">Quản lý sản phẩm</option>
					<option value="3">Quản lý đơn hàng</option>

				</select>
			</div>

			<div class=" form-group">
				<label for="text-input" class=" form-control-label">email</label>
				<input type="text" name="email" id="emailUser" placeholder="Email" onfocusout="checkParam()">
				<div>
					<p id="emailUserEr" class="er-red"></p>
				</div>
			</div>

			<div class=" form-group">
				<label for="text-input">Mật
					khẩu</label>
				<input type="password" id="passwordUser" name="password" placeholder="Mật khẩu" onfocusout="checkParam()">
				<div>
					<p id="passwordUserEr" class="er-red"></p>
				</div>
			</div>

			<div class=" form-group">
				<label for="text-input">Nhập
					lại mật khẩu</label>
				<input type="password" id="rePasswordUser" name="re-password" placeholder="Nhập lại mật khẩu" onfocusout="checkParam()">
				<div>
					<p id="rePasswordUserEr" class="er-red"></p>
				</div>
			</div>

			<div class="form-group">
				<label for="text-input">Số
					điện thoại</label>
				<input type="text" id="phoneUser" name="phone" placeholder="Số điện thoại" onfocusout="checkParam()">
				<div>
					<p id="phoneUserEr" class="er-red"></p>
				</div>
			</div>

			<div class="form-group">
				<label for="textarea-input">Địa
					chỉ</label>
				<textarea name="address" rows="9" id="addressUser" placeholder="Địa chỉ..." onfocusout="checkParam()"></textarea>
				<div>
					<p id="addressUserEr" class="er-red"></p>
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
				var nameUser = document.getElementById("nameUser").value.trim();
				var emailUser = document.getElementById("emailUser").value.trim();
				var passwordUser = document.getElementById("passwordUser").value.trim();
				var rePasswordUser = document.getElementById("rePasswordUser").value.trim();
				var phoneUser = document.getElementById("phoneUser").value.trim();
				var addressUser = document.getElementById("addressUser").value.trim();

				// name
				if (nameUser == "") {
					document.getElementById("nameUserEr").innerHTML = "Chưa nhập tên nhân viên";

				} else {
					document.getElementById("nameUserEr").innerHTML = "";
				}

				// email
				if (emailUser == "") {
					document.getElementById("emailUserEr").innerHTML = "Chưa nhập email nhân viên";

				} else {
					document.getElementById("emailUserEr").innerHTML = "";
				}

				// password
				if (passwordUser == "") {
					document.getElementById("passwordUserEr").innerHTML = "Chưa nhập mật khẩu nhân viên";

				} else {
					document.getElementById("passwordUserEr").innerHTML = "";
				}

				// repassword
				if (rePasswordUser == "") {
					document.getElementById("rePasswordUserEr").innerHTML = "Chưa nhập password nhân viên";

				} else {
					document.getElementById("rePasswordUserEr").innerHTML = "";
				}

				if (passwordUser != rePasswordUser) {
					document.getElementById("rePasswordUserEr").innerHTML = "Xác nhập mật khẩu chưa đúng";

				} else {
					document.getElementById("rePasswordUserEr").innerHTML = "";
				}

				// phone
				if (phoneUser == "") {
					document.getElementById("phoneUserEr").innerHTML = "Chưa nhập số điện thoại nhân viên";

				} else {
					document.getElementById("phoneUserEr").innerHTML = "";
				}

				// address
				if (addressUser == "") {
					document.getElementById("addressUserEr").innerHTML = "Chưa nhập địa chỉ nhân viên";

				} else {
					document.getElementById("addressUserEr").innerHTML = "";
				}
			}
		</script>
	</div>
</body>

</html>