<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<%@ include file="bootstrap.jsp"%>

<%@ include file="css.jsp"%>

<title>大象基金_个人中心</title>
</head>
<body>

	<%@ include file="nav.jsp"%>

	<div class="row" style="margin: 15px 0px">
		<div class="col-sm-2"></div>
		<div class="col-sm-2"><img src="img/h.jpg"style="width:100%;height:100%"></div>
		<div class="col-sm">
			<ul class="list-group list-group-flush">
				<li class="list-group-item">用户名 ： PsyDuck</li>
				<li class="list-group-item">邮箱地址 ： psyduckchen@qq.com</li>
				<li class="list-group-item">年龄 ： 20</li>
				<li class="list-group-item">职业 ： 学生</li>
				<li class="list-group-item">实名认证 ： 已通过</li>
				<li class="list-group-item">理财性格检测结果 ： 独立自信型</li>
				<li class="list-group-item">发展方向 ：暂定 </li>
				
			</ul>
		</div>
		<div class="col-sm-2"></div>
	</div>

	<div class="row">
		<div class="col-sm-2"></div>
		<%@ include file="cardInfo.jsp" %>
		<div class="col-sm-2"></div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>