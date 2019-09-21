<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE >
<html>
<head>
<base href="${pageContext.request.contextPath}/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改图书内容</title>
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
	<form class="form-horizontal" action="book/doupdate"  method="post" >
	<div><p>${msg}</p></div>
		<div class="form-group">
			<label for="focusedinput" class="col-sm-2 control-label">图书编号</label>
			<div class="col-sm-8">
				<input type="hidden" class="form-control1" id="focusedinput"  
				name="bookId" value="${book.bookId}" />
			</div>
		</div>

		<div class="form-group">
			<label for="focusedinput" class="col-sm-2 control-label">图书名称</label>
			<div class="col-sm-8">
				<input type="text" class="form-control1" id="focusedinput"  
				name="bookName" value="${book.bookName}"/>
			</div>
		</div>
		<div class="form-group">
			<label for="disabledinput" class="col-sm-2 control-label">图书类型</label>
			<div class="col-sm-8">
				<input  type="text" class="form-control1"  id="disabledinput"
				 placeholder="比如文学" name="bookType" value="${book.bookType }">
			</div>
		</div>
		<div class="form-group">
			<label for="focusedinput" class="col-sm-2 control-label" >国标码</label>
			<div class="col-sm-8">
				<input type="text" class="form-control1" id="focusedinput"  
				name="bookIsbn" value="${book.bookIsbn }"/>
			</div>
		</div>
		<div class="form-group">
			<label for="focusedinput" class="col-sm-2 control-label">主编</label>
			<div class="col-sm-8">
				<input type="text" class="form-control1" id="focusedinput" 
				 name="bookAuthor" value="${book.bookAuthor }"/>
			</div>
		</div>
		<div class="form-group">
			<label for="focusedinput" class="col-sm-2 control-label">图书价格</label>
			<div class="col-sm-8">
				<input type="text" class="form-control1" id="focusedinput" 
				placeholder="请输入数字" name="bookPrice" value="${book.bookPrice }"/>
			</div>
		</div>
		<div class="form-group">
			<label for="focusedinput" class="col-sm-2 control-label">出版社</label>
			<div class="col-sm-8">
				<input type="text" class="form-control1" id="focusedinput"  
				name="bookPublisher" value="${book.bookPublisher }"/>
			</div>
		</div>
		<div class="form-group">
			<label for="focusedinput" class="col-sm-2 control-label">图书操作</label>
			<div class="col-sm-8">
				<input type="text" class="form-control1" id="focusedinput"  
				name="bookOperate" value="${book.bookOperate }"/>
			</div>
		</div>
		<div class="form-group">
			<label for="focusedinput" class="col-sm-2 control-label">出版日期</label>
			<div class="col-sm-8">
				<input type="text" class="form-control1" id="focusedinput" 
			name="bookReleaseDate"
				value="<fmt:formatDate pattern='yyyy-MM-dd' value='${book.bookReleaseDate }'></fmt:formatDate>"/>
			</div>
		</div>
	<%-- 	<div class="form-group">
			<label for="focusedinput" class="col-sm-2 control-label">图书拥有者</label>
			<div class="col-sm-8">
				<input type="text" class="form-control1" id="focusedinput" 
				 name="bookOwner" value="${book.bookOwner.vipId }"/>
			</div>
		</div> --%>
		<div class="form-group">
			<label for="focusedinput" class="col-sm-2 control-label">图书描述</label>
			<div class="col-sm-8">
				<input type="text" class="form-control1" id="focusedinput" 
				 name="bookDesc" value="${book.bookDesc }"/>
			</div>
		</div>
		<div class="form-group">
			<label for="focusedinput" class="col-sm-2 control-label">图书封面</label>
			<div class="col-sm-8">
				<input type="text" class="form-control1" id="focusedinput" 
				 name="bookFace" value="${book.bookFace }"/>
			</div>
		</div>
		<div class="form-group">
			<label for="focusedinput" class="col-sm-2 control-label"></label>
			<div class="col-sm-8">
				<input type="submit"  value="确认修改"/>
			</div>
		</div>
	</form>
</body>
</html>