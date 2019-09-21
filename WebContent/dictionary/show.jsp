<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE >
<html>
<head>
<base href="${pageContext.request.contextPath}/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>展示数据字典</title>
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
		           <td>数据字典编号</td>
		          <td>数据字典名称</td>
		          <td>数据字典代码</td>
		          <td>数据字典类型</td>
		          <td>数据字典类型代码</td>
		          <td>数据字典顺序</td>
		         </tr>
		         <c:forEach items="${dictionaryList}" var="dic">
		            <tr>
		               <td>${dic.dictionaryId }</td>
		               <td>${dic.dictionaryName }</td>
		               <td>${dic.dictionaryCode }</td>
		               <td>${dic.dictionaryType}</td>
		               <td>${dic.dictionaryTypeCode}</td>
		               <td>${dic.dictionaryOrder}</td>
		            </tr>
		         </c:forEach>
		   </table>
		</div>
	</form>
</body>
</html>