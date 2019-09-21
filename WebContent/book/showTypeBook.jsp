<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE >
<html>
<head>
<base href="${pageContext.request.contextPath}/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看指定的图书</title>
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
<link href="template/css/animate.css" rel="stylesheet" type="text/css" media="all">
<link href="css/admin/main.css" rel="stylesheet" type="text/css">
</head>
<body>
	<form class="form-horizontal" action="book/type" method="post">
	<div><p>${msg}</p></div>
	<div class="type">
	   图书类型<input type="text" name="bookType"></input><input type="submit" ></input>
	</div>
	<div>图书展示</div>
		<div>
		   <table class="bookshow" border="1" >
		         <tr>
		           <td>图书编号</td>
		          <td>图书名称</td>
		          <td>图书类型</td>
		          <td>国标码</td>
		          <td>图书作者</td>
		          <td>图书价格</td>
		         <!--  <td>图书出版人</td>
		          <td>图书操作</td>
		          <td>图书发布日期</td>
		          <td>图书拥有者</td>
		          <td>图书描述</td>
		          <td>图书封页</td> -->
		         </tr>
		         <c:forEach items="${bookList}" var="book">
		            <tr>
		               <td>${book.bookId }</td>
		               <td>${book.bookName }</td>
		               <td>${book.bookType }</td>
		               <td>${book.bookIsbn }</td>
		               <td>${book.bookAuthor }</td>
		               <td>${book.bookPrice }</td>
		           <%--     <td>${book.bookPublisher }</td>
		               <td>${book.bookOperate }</td>
		               <td>${book.bookReleaseDate }</td>
		               <td>${book.bookOwner}</td>
		               <td>${book.bookDesc }</td>
		               <td>${book.bookFace}</td> --%>
		            </tr>
		         </c:forEach>
		   </table>
		</div>
	</form>
</body>
</html>