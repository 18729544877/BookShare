<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<!DOCTYPE >
<html>
<head>
<base href="${pageContext.request.contextPath}/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>展示vip信息</title>
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
	<form class="form-horizontal" >
	<div><p>${msg}</p></div>
		<div>
		   <table border="1" class="bookshow">
		         <tr>
		           <td>会员编号</td>
		          <td>会员账号</td>
		          <td>会员密码</td>
		          <td>会员号</td>
		          <td>会员姓名</td>
		
		      
		          <td>会员电话</td>
		          <td>会员id卡</td>
		          <td>会员等级</td>
		          <td>会员加入日期</td>
		          <td>操作</td>
		         </tr>
		         <c:forEach items="${vipList}" var="vip">
		            <tr>
		               <td>${vip.vipId }</td>
		               <td>${vip.vipAccount }</td>
		               <td>${vip.vipPassword }</td>
		               <td>${vip.vipNumber }</td>
		               <td>${vip.vipName }</td>
		               <td>${vip.vipPhone}</td>
		               <td>${vip.vipIdcard}</td>
		               <td>${vip.vipLevel}</td>
		               <td>${vip.vipJoinDate}</td>
		               <td><a href="vip/updateone?vipId=${vip.vipId }">修改</a></td>
		            </tr>
		         </c:forEach>
		   </table>
		</div>
	</form>
</body>
</html>