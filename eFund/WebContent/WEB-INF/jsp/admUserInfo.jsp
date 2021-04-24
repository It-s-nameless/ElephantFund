<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<%@ include file="bootstrap.jsp"%>

<%@ include file="css.jsp"%>

<title>大象基金_用户信息详情</title>
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
	<div class="container">

		<div class="row" style="margin: 15px 0px">

			<div class="col-sm-2">
				<img src="img/userPic/user${user.uid%4}.jpg" style="width: 100%;">
			</div>
			<div class="col-sm-5">
				<h3>用户信息</h3>
				<ul class="list-group list-group-flush">
					<li class="list-group-item">用户状态 ：
					<c:if test="${user.uflag==1}"><span class="strongtext">可正常使用</span></c:if>
					<c:if test="${user.uflag==0}"><span class="strongtext redtext">用户冻结，无法使用</span></c:if>
					</li>
					<li class="list-group-item">用户名 ：${user.uname}</li>
					<li class="list-group-item">年龄 ： 20</li>
					<li class="list-group-item">性别 ： ${user.usex}</li>
					<li class="list-group-item">职业 ： 学生</li>
					<li class="list-group-item">实名认证 ： 已通过</li>
					<li class="list-group-item">手机号 ： ${user.phone}</li>
					<li class="list-group-item">邮箱地址 ： ${user.uname}@qq.com</li>
					<li class="list-group-item">账户余额：${user.money} (元)</li>
					<li class="list-group-item">风险偏好类型 : ${user.utype}</li>
					<li class="list-group-item">理财性格检测结果 ： 独立自信型</li>
				</ul>
			</div>
			<div class="col-sm">
				<table class="table">
					<thead>
						<tr>
							<th scope="col"></th>
							<th scope="col">持有基金名称</th>
							<th scope="col">持有金额</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${wares}" var="item" varStatus="status">
							<tr style="line-height: 2.25em;">
								<th scope="row">${status.index+1}</th>
								<td><a href="AdmFundInfo?fnum=${item.fnum}">${item.fname}
										(${item.fnum})</a></td>
								<td>${item.wprice}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>