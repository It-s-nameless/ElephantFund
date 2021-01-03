<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
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
	<div class="container">

		<div class="row" style="margin: 15px 0px">

			<div class="col-sm-2">
				<img src="img/userPic/user${user.uid%4}.jpg" style="width: 100%;">
			</div>
			<div class="col-sm">
				<h3>用户信息</h3>
				<ul class="list-group list-group-flush">
					<li class="list-group-item">用户名 ：${user.uname}</li>
					<li class="list-group-item">年龄 ： 20</li>
					<li class="list-group-item">性别 ： ${user.usex}</li>
					<li class="list-group-item">职业 ： 学生</li>
					<li class="list-group-item">手机号 ： ${user.phone}</li>
					<li class="list-group-item">邮箱地址 ： ${user.uname}@qq.com</li>
					<li class="list-group-item">实名认证 ： 已通过</li>
					<li class="list-group-item">风险偏好类型 : ${user.utype}</li>
					<li class="list-group-item">理财性格检测结果 ： 独立自信型</li>
				</ul>
			</div>
			<div class="col-sm-4">
				<h3>账户信息</h3>
				<ul class="list-group list-group-flush">
					<li class="list-group-item">账户余额<span style="float:right;"> ${user.money} (元)</span></li>
					<li class="list-group-item">当前余额支付额度<span style="float:right;">20万 / 年</span></li>
					<li class="list-group-item">&emsp;&emsp;根据监管部门的要求，用户根据账户的身份信息完善程度不同，享有不同的余额支付额度。
						<span style="float:right;"><a href="#">了解更多>> </a></li></span>
					<li class="list-group-item"><a href="#">历史订单</a> <span style="float:right;"> <a href="#">充值</a>
						| <a href="#">提现</a></span></li>
				</ul>
			</div>
		</div>

		<div class="row mt-3">
			<div class="col-sm card">
				<div class=" ">
					<table class="table">
						<thead>
							<tr>
								<th scope="col"></th>
								<th scope="col">持有基金</th>
								<th scope="col">金额</th>
								<th scope="col">昨日收益</th>
								<th scope="col">持有收益</th>
								<th scope="col">操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${uorder}" var="item" varStatus="status">
								<tr style="line-height: 2.25em;">
									<th scope="row">${status.index+1}</th>
									<td><a href="FundPay?fname=${item.ofname}">${item.ofname}</a>(${item.ofnum})</td>
									<td>${item.uoprice}</td>
									<td>${item.profitDay}</td>
									<td>${item.profit}</td>
									<td>
										<div class="btn-group" role="group">
											<a href="FundPay?fname=${item.ofname}" class="btn btn-outline-success">再买点</a>
											<script type="text/javascript">
												$(function () {
												  $('.example-popover').popover({
												    container: 'body'
												  })
												})
												$(function () {
												  $('[data-toggle="popover"]').popover()
												})
											</script>
										    <a href="#" class="btn btn-outline-success" 
										       data-toggle="popover" title="请确认金额" data-html="true" 
										       data-content="<span>${item.uoprice}<a href='AddOrderServlet?fname=${item.ofname}&fprice=${item.uoprice}&otype=卖出&uname=${user.uname}' class='btn btn-outline-success'>确认</a></span>">
										      	 卖出
										     </a>
										</div>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>

	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>