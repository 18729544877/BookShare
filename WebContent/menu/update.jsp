<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE >
<html>
<head>
<base href="${pageContext.request.contextPath}/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改菜单</title>
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
<script type="text/javascript" src="<c:url value='/js/jquery-3.2.1.js'></c:url>"></script>
</head>
<body>
	<form class="form-horizontal">
<!-- 	update -->
		<div>
			<p>${msg}</p>
		</div>
		<!-- <div>
			通过编号<input type="text" name="menuId">查找<input type="submit"
				value="查询">
		</div> -->
		<div>
			<table border="1" class="bookshow">
				<tr>
					<td>菜单编号</td>
					<td>菜单名称</td>
					<td>菜单地址</td>
					<td>菜单类型</td>
					<td>菜单顺序</td>
					<td>菜单代码</td>
					<td>操作</td>
				</tr>
				<c:forEach items="${menuList}" var="menu">
					<tr>
						
						<td>${menu.menuId }</td>
						<td>${menu.menuName }</td>
						<td>${menu.menuUrl }</td>
						<td>${menu.menuType}</td>
						<td>${menu.menuOrder}</td>
						<td>${menu.menuCode}</td>
						<td><a href="menu/modify?menuId=${menu.menuId }">修改</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</form>
</body>
</html>