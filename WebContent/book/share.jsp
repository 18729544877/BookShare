<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE >
<html>
<head>
<base href="${pageContext.request.contextPath}/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>分享图书</title>
<link href="template/css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="template/css/style.css" rel='stylesheet' type='text/css' />
<!-- font CSS -->
<!-- font-awesome icons -->
<link href="template/css/font-awesome.css" rel="stylesheet">
<!-- //font-awesome icons -->
<!-- js-->
<script src="template/js/jquery-1.11.1.min.js"></script>
<script src="template/js/modernizr.custom.js"></script>
<!--webfonts-->
<link href='template/css/font.css' rel='stylesheet' type='text/css'>
<!--//webfonts-->
<!--animate-->
<link href="template/css/animate.css" rel="stylesheet" type="text/css"
	media="all">
<link href="css/admin/main.css" rel="stylesheet" type="text/css">
</head>
<body>
	<form class="form-horizontal">
		<div>
			<p>${msg}</p>
		</div>
		<div>图书分享</div>
		<div>
			<table class="bookshow" border="1">
				<tr>
					<td>图书编号</td>
					<td>图书名称</td>
					<td>图书类型</td>
					<td>图书作者</td>
					<td>图书价格</td>
					<td>图书操作</td>
					<!--             <td>国标码</td>
		          <td>图书出版人</td>
		        <td>图书发布日期</td>
		          <td>图书封页</td> -->
					<td>操作</td>
				</tr>
				<c:forEach items="${bookList}" var="book">
					<tr>
						<td>${book.bookId }</td>
						<td>${book.bookName }</td>
						<td>${book.bookType }</td>
						<td>${book.bookAuthor }</td>
						<td>${book.bookPrice }</td>
						<td>${book.bookOperate }</td>
						<%--   <td>${book.bookIsbn }</td>
		               <td>${book.bookPublisher }</td>
		              <td><fmt:formatDate pattern="yyyy-MM-dd" value="${book.bookReleaseDate }"></fmt:formatDate></td>
		               
		               <td>${book.bookFace}</td> --%>
						<td><a href="book/sharego?bookId=${book.bookId }">共享</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</form>
</body>
</html>