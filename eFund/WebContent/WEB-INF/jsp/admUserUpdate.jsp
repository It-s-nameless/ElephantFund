<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<%@ include file="bootstrap.jsp"%>

<%@ include file="css.jsp"%>

<title>大象基金_用户信息修改</title>
<style type="text/css">
.fixed-bottom {position: fixed;bottom: 0;width:100%;}
</style>

<script type="text/javascript">
	$(function() {
		function footerPosition() {
			$("#footer").removeClass("fixed-bottom");
			var contentHeight = document.body.scrollHeight, //网页正文全文高度
			winHeight = window.innerHeight;//可视窗口高度，不包括浏览器顶部工具栏
			if (!(contentHeight > winHeight)) {
				$("#footer").addClass("fixed-bottom");
			} else {
				$("#footer").removeClass("fixed-bottom");
			}
		}
		footerPosition();
		$(window).resize(footerPosition);
	});
</script>
</head>
<body>

	<%@ include file="admNav.jsp"%>

	<div class="container" style="margin-top: 20px;">
		<h4 class="mb-3">用户信息修改</h4>
		<form class="needs-validation" action="UpdateUserServlet" method="post">
			<div class="row">
				<div class="col-md-6 mb-3">
					<label for="yhnc">用户名称</label> <input type="text"
						class="form-control" value="${user.uname}" name="uname" readonly>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 mb-3">
					<label for="yhbh">用户编号</label> <input type="text"
						class="form-control" value="${user.uid}" name="uid" readonly>
				</div>
				<div class="col-md-3 mb-3">
					<label for="yhxb">性别</label> <input type="text"
						class="form-control" value="${user.usex}" name="usex" readonly>
				</div>
			</div>

			<div class="row">
				<div class="col-md-6 mb-3">
					<label for="phone">联系电话</label>
					<div class="input-group">
						<input type="text" class="form-control" value="${user.phone}"
							name="phone" readonly>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-md-3 mb-3">
					<label for="yhlx">风险类型</label> <input type="text"
						class="form-control" value="${user.utype}" name="utype">
				</div>
				<div class="col-md-3 mb-3">
					<label for="yhye">账户余额</label> <input type="text"
						class="form-control" value="${user.money}" name="money" readonly>
				</div>
			</div>
			<div class="row">
				<div class="col-md-2 mb-3"></div>
				<div class="col-md-2 mb-3">
					<a href="UpdateUpassServlet?uid=${user.uid}" class="btn btn-lg btn-block btn-outline-success">重置密码</a>
				</div>
				<div class="col-md-2 mb-3">
					<button class="btn btn-lg btn-block btn-outline-success"
						type="submit">提交修改</button>
				</div>
			</div>
		</form>
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>