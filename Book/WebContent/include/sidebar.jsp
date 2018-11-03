<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Product"%>
<%@page import="model.Category"%>
<%@page import="model.Image"%>

<%
	ArrayList<Category> categorys = (ArrayList) request.getAttribute("categorys");
%>


<div class="sidebar">

	<nav id="menu-sidebar">
		<ul id="nav-sidebar">
			<li id="danh-muc"><a href="#">Danh mục</a></li>

			<%
				for (Category c : categorys) {
			%>
			<li><a href="Search?id=<%=c.getId()%>"> <%=c.getName()%></a></li>
			<%
				}
			%>

		</ul>
	</nav>

	<hr>

	<div class="search">
		<h3>Tìm kiếm nâng cao</h3>

		<form action="/Book/Search">


			<input type="text" name="name" placeholder="Nhập tên sách" /> <input
				type="text" name="author" placeholder="Tác giả" /> <input
				type="text" name="priceFrom" placeholder="Giá từ" /> <input
				type="text" name="priceTo" placeholder="Giá đến" /> <input
				name="publicFrom" type="date" placeholder="Xuất bản từ" /> <input
				name="publicTo" type="date" placeholder="Xuất bản đến" /> <br>
			<button type="submit">Tìm kiếm</button>

		</form>

	</div>
</div>