<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<%@ include file="bootstrap.jsp"%>

<%@ include file="css.jsp"%>

<title>大象基金_基金购入</title>
</head>
<body>

	<%@ include file="nav.jsp"%>

	<div
		class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
		<h1 class="display-4">广东高端制造股票A</h1>


		<p class="lead">
			交易状态： <span class="redtext">开放申购 开放赎回</span>
		</p>
		<p class="lead">
			购买手续费：
			<del>1.50%</del>
			<span class="strongtext">0.15%</span> <span
				class="redtext strongtext">1</span>折 <a href="#">费率详情>></a>
		</p>

		<div class="container">
			<table class="table table-borderless fundPayTable">
				<tbody>
					<tr>
						<td>基金类型： <a href="#">股票型</a> | 高风险
						</td>
						<td>基金规模： 7.34亿元（2020-06-30）</td>
						<td>基金经理： <a href="#">孙迪</a>等
						</td>
					</tr>
					<tr>
						<td>成 立 日： 2017-09-01</td>
						<td>管 理 人： <a href="#">广发基金</a></td>
						<td>基金等级： <span class="graytext">暂无评级</span></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

	<div class="container">
		<div class="card-deck mb-3 text-center">
			<div class="card mb-4 shadow-sm">
				<div class="card-header">
					<h4 class="my-0 font-weight-normal">免费试试</h4>
				</div>
				<div class="card-body">
					<h1 class="card-title pricing-card-title">
						￥0 <small class="text-muted">/ mo</small>
					</h1>
					<ul class="list-unstyled mt-3 mb-4">
						<li>新用户限时尝试</li>
						<li>7天收益保留，亏损不陪</li>
						<li>30 users included</li>
						<li class="redtext strongtext">现在购入还可得基金红包</li>
					</ul>
					<button type="button"
						class="btn btn-lg btn-block btn-outline-danger">Sign up
						for free</button>
				</div>
			</div>
			<div class="card mb-4 shadow-sm">
				<div class="card-header">
					<h4 class="my-0 font-weight-normal">立即购买</h4>
				</div>
				<div class="card-body">
					<h1 class="card-title pricing-card-title">
						￥10 <small class="text-muted">起购</small>
					</h1>
					<ul class="list-unstyled mt-3 mb-4">
						<li>购买手续费： <del>1.50%</del> <span class="strongtext">0.15%</span>
							<span class="redtext strongtext">1</span>折
						</li>
						<li>Priority email support</li>
						<li>Help center access</li>
						<li>30 users included</li>
					</ul>
					<button type="button" class="btn btn-lg btn-block btn-danger">Get
						started</button>
				</div>
			</div>
			<div class="card mb-4 shadow-sm">
				<div class="card-header">
					<h4 class="my-0 font-weight-normal">定投</h4>
				</div>
				<div class="card-body">
					<h1 class="card-title pricing-card-title">
						￥100 <small class="text-muted">起投</small>
					</h1>
					<ul class="list-unstyled mt-3 mb-4">
						<li>免费开启净值估算</li>
						<li>注意：净值估算是按照基金历史定期报告公布的持仓和指数走势预测当天净值，预估数值仅供参考，实际涨跌幅以基金净值为准。</li>
					</ul>
					<button type="button" class="btn btn-lg btn-block btn-danger">Contact
						us</button>
				</div>
			</div>
		</div>

		<%@ include file="footer.jsp"%>
</body>
</html>