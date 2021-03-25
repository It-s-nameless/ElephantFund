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

	<div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
		<h1 class="display-4">${fund.fname}</h1>

		<div class="container" style="margin-top:20px;">
			<table class="table table-borderless fundPayTable">
				<tbody>
					<tr>
						<td>
							交易状态： <span class="redtext">开放申购 开放赎回</span>
						</td>
						<td rowspan="6" style="width: 63%!important;padding-bottom:0px;">
							<div id="fundpng" style="height: 360%;"></div>
							<script type="text/javascript">
								var dom = document.getElementById("fundpng");
								var myChart = echarts.init(dom);
								var app = {};
								option = null;
								option = {
									title: {
								        text: ' 单位净值趋势'
								    },
								    tooltip: {},
									xAxis : {
										type : 'category',
										data : [ '2020-12-22', '2020-12-23',
												'2020-12-24', '2020-12-25',
												'2020-12-28', '2020-12-29',
												'2020-12-30' ]
									},
									yAxis : {
										type : 'value'
									},
									series : [ {
										name : '单位净值',
										data : [],
										type : 'line'
									} ]
								};
								for(let i =0;i<7;i++)
								{
									option.series[0].data.push((Math.random()*3+2).toFixed(2));
								}
								if (option && typeof option === "object") {
									myChart.setOption(option, true);
								}
							</script>
						</td>
					</tr>
					<tr>
						<td>
							购买手续费：
								<del>${fund.fbuyrate10}%</del>
								<span class="strongtext">${fund.fbuyrate}%</span> <span
									class="redtext strongtext">1</span>折 <a href="#">费率详情>></a>
						</td>
					</tr>
					
					<tr>
						<td>基金类型： <a href="#"> ${fund.ftype} </a> | ${fund.fxtype}</td>
					</tr>
					
					<tr>
						<td>基金规模： ${fund.frate}亿元（${date}）</td>
					</tr>
					
					<tr>
						<td>成 立 日： ${fund.fstart}</td>
					</tr>
					
					<tr>
						<td>管 理 人： <a href="#">${fund.fmanager}</a></td>
					</tr>
					
					<tr>
						<td colspan="2" class="text-center redtext strongtext bigtext">免费开启净值估算</td>
					</tr>
					<tr>
						<td colspan="2" class="text-center graytext">注意：净值估算是按照基金历史定期报告公布的持仓和指数走势预测当天净值，预估数值仅供参考，实际涨跌幅以基金净值为准。</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

	<script>
		function buyfct()
		{
			alert("购买成功！");
		}
	</script>
	
	<div class="container">
		<div class="card-deck mb-3 text-center">
			<div class="card mb-4 shadow-sm">
				<div class="card-header">
					<h4 class="my-0 font-weight-normal">免费试试</h4>
				</div>
				<div class="card-body">
				<form action="AddOrderServlet" method="post">
						<input type="hidden" name="fnum" value="${fund.fnum}">
						<input type="hidden" name="fprice" value="${fund.fbuy}">
						<input type="hidden" name="otype" value="免费尝试">
						<input type="hidden" name="uname" value="${user==null? "null" : user.uname}">
					<h1 class="card-title pricing-card-title">
						￥0 (${fund.fbuy}) <small class="text-muted">/ 7天</small>
					</h1>
					<ul class="list-unstyled mt-3 mb-4">
						<li>新用户限时尝试</li>
						<li>7天收益保留，亏损不陪</li>
					</ul>
					<button type="submit" class="btn btn-lg btn-block btn-outline-danger">立即尝试</button>
					</form>
				</div>
			</div>
			<div class="card mb-4 shadow-sm">
				<div class="card-header">
					<h4 class="my-0 font-weight-normal">立即购买</h4>
				</div>
				<div class="card-body">
					<form action="AddOrderServlet" method="post">
					
						<input type="hidden" name="fnum" value="${fund.fnum}">
						<input type="hidden" name="otype" value="买入">
						<input type="hidden" name="uname" value="${user==null? "null" : user.uname}">
						
						<h1 class="card-title pricing-card-title">
							￥<input class="form-control w-25" type="text" name="fprice" placeholder="${fund.fbuy}" value="${fund.fbuy}" style="display:inline-block;">
							<small class="text-muted"> 起购</small>
						</h1>
						<ul class="list-unstyled mt-3 mb-4">
							<li>购买手续费： <del>${fund.fbuyrate10}%</del> <span class="strongtext">${fund.fbuyrate}%</span>
								<span class="redtext strongtext">1</span>折
							</li>
							<li class="redtext strongtext">现在购入还可得基金红包</li>
						</ul>
						<button type="submit" class="btn btn-lg btn-block btn-danger">买入</button>
					</form>
				</div>
			</div>
			<div class="card mb-4 shadow-sm">
				<div class="card-header">
					<h4 class="my-0 font-weight-normal">定投</h4>
				</div>
				<div class="card-body">
					<form action="AddOrderServlet" method="post">
						
						<input type="hidden" name="fnum" value="${fund.fnum}">
						<input type="hidden" name="otype" value="定投">
						<input type="hidden" name="uname" value="${user==null? "null" : user.uname}">
						
						<h1 class="card-title pricing-card-title">
						￥<input class="form-control w-25" type="text" name="fprice" placeholder="${fund.fbuy10}" value="${fund.fbuy10}" style="display:inline-block;">
							<small class="text-muted"> 起投</small>
						</h1>
						<ul class="list-unstyled mt-3 mb-4">
							<li>免费开启净值估算</li>
							<li class="redtext strongtext">现在购入还可得基金红包</li>
						</ul>
						<button type="submit" class="btn btn-lg btn-block btn-danger" onclick="buyfct()">买入</button>
					</form>
				</div>
			</div>
		</div>
		
	</div>

		<%@ include file="footer.jsp"%>
</body>
</html>