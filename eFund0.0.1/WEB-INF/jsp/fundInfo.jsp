<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<%@ include file="bootstrap.jsp"%>

<%@ include file="css.jsp"%>

<title>大象基金_基金详情</title>
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
					<tr>
						<td colspan="3" class="text-center redtext strongtext bigtext">免费开启净值估算</td>
					</tr>
					<tr>
						<td colspan="3" class="text-center graytext">注意：净值估算是按照基金历史定期报告公布的持仓和指数走势预测当天净值，预估数值仅供参考，实际涨跌幅以基金净值为准。</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>