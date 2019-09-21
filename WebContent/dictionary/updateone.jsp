<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE >
<html>
<head>
<base href="${pageContext.request.contextPath}/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改数据字典</title>
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
	<form class="form-horizontal" action="dictionary/updatego" method="post">
		<div>
			<p>${msg}</p>
		</div>
		<div class="form-group">
			<label for="focusedinput" class="col-sm-2 control-label">数据字典编号</label>
			<div class="col-sm-8">
				<input type="text" class="form-control1" id="focusedinput"
					name="dictionaryId"  value="${dictionary.dictionaryId }" readonly="readonly"/>
			</div>
		</div>
		<div class="form-group">
			<label for="focusedinput" class="col-sm-2 control-label">数据字典名称</label>
			<div class="col-sm-8">
				<input type="text" class="form-control1" id="focusedinput"
					name="dictionaryName" value="${dictionary.dictionaryName }"/>
			</div>
		</div>
		<div class="form-group">
			<label for="disabledinput" class="col-sm-2 control-label">数据字典代码</label>
			<div class="col-sm-8">
				<input type="text" class="form-control1" id="disabledinput"
					name="dictionaryCode" value="${dictionary.dictionaryCode }"/>
			</div>
		</div>
		<div class="form-group">
			<label for="focusedinput" class="col-sm-2 control-label">数据字典类型</label>
			<div class="col-sm-8">
				<input type="text" class="form-control1" id="focusedinput"
					name="dictionaryType" value="${dictionary.dictionaryType }"/>
			</div>
		</div>
		<div class="form-group">
			<label for="focusedinput" class="col-sm-2 control-label">数据字典类型代码</label>
			<div class="col-sm-8">
				<input type="text" class="form-control1" id="focusedinput"
					name="dictionaryTypeCode" value="${dictionary.dictionaryTypeCode }"/>
			</div>
		</div>
		<div class="form-group">
			<label for="focusedinput" class="col-sm-2 control-label">数据字典顺序</label>
			<div class="col-sm-8">
				<input type="text" class="form-control1" id="focusedinput"
					name="dictionaryOrder" placeholder="请输入数字" value="${dictionary.dictionaryOrder }"/>
			</div>
		</div>
		<div class="form-group">
			<label for="focusedinput" class="col-sm-2 control-label"></label>
			<div class="col-sm-8">
				<input type="submit" value="确认修改" />
			</div>
		</div>
	</form>
</body>
</html>