<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<base href="${pageContext.request.contextPath}/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改指定会员</title>

<link href="css/vip/vip_add.css" rel="stylesheet" type="text/css">
</head>
<body>
	<form class="form-horizontal" action="vip/go" method="post">
		<div>
			<p>${msg}</p>
		</div>
		<div class="form-group">
			<label for="focusedinput" class="col-sm-2 control-label">会员编号</label>
			<div class="col-sm-8">
				<input type="hidden" class="form-control1" id="focusedinput"
					name="vipId" value="${vip.vipId}" />
			</div>
		</div>
		<div class="form-group">
			<label for="focusedinput" class="col-sm-2 control-label">会员账号</label>
			<div class="col-sm-8">
				<input type="text" class="form-control1" id="focusedinput"
					name="vipAccount" value="${vip.vipAccount}"/>
			</div>
		</div>
		<div class="form-group">
			<label for="disabledinput" class="col-sm-2 control-label">会员密码</label>
			<div class="col-sm-8">
				<input type="text" class="form-control1" id="disabledinput"
					name="vipPassword" value="${vip.vipPassword}">
			</div>
		</div>
		<div class="form-group">
			<label for="focusedinput" class="col-sm-2 control-label">会员号码</label>
			<div class="col-sm-8">
				<input type="text" class="form-control1" id="focusedinput"
					name="vipNumber" value="${vip.vipNumber}"/>
			</div>
		</div>
		<div class="form-group">
			<label for="focusedinput" class="col-sm-2 control-label">会员姓名</label>
			<div class="col-sm-8">
				<input type="text" class="form-control1" id="focusedinput"
					name="vipName" value="${vip.vipName}"/>
			</div>
		</div>
		<div class="form-group">
			<label for="focusedinput" class="col-sm-2 control-label">会员性别</label>
				<div class="col-sm-8">
				<input type="text" class="form-control1" id="focusedinput"
					name="vipSex"  value="${vip.vipSex}"/>
			</div>
		</div>
		<div class="form-group">
			<label for="focusedinput" class="col-sm-2 control-label">会员生日</label>
			<div class="col-sm-8">
				<input type="text" class="form-control1" id="focusedinput"
					name="vipBirthday"  value="${vip.vipBirthday}"/>
			</div>
		</div>
		<div class="form-group">
			<label for="focusedinput" class="col-sm-2 control-label">会员电话</label>
			<div class="col-sm-8">
				<input type="text" class="form-control1" id="focusedinput"
				 name="vipPhone" value="${vip.vipPhone}"/>
			</div>
		</div>
		<div class="form-group">
			<label for="focusedinput" class="col-sm-2 control-label">会员id卡</label>
			<div class="col-sm-8">
				<input type="text" class="form-control1" id="focusedinput"
					name="vipIdcard" value="${vip.vipIdcard}"/>
			</div>
		</div>
		<div class="form-group">
			<label for="focusedinput" class="col-sm-2 control-label">会员等级</label>
			<div class="col-sm-8">
				<input type="text" class="form-control1" id="focusedinput"
					name="vipLevel" value="${vip.vipLevel}"/>
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