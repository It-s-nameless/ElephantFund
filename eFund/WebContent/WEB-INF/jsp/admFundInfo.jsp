<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<%@ include file="bootstrap.jsp"%>

<%@ include file="css.jsp"%>

<title>大象基金_基金信息</title>
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

	<div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
		<h1 class="display-4">${fund.fname}</h1>

		<div class="container" style="margin-top:20px;">
			<table class="table table-borderless fundPayTable">
				<tbody>
					<tr>
						<td>
							交易状态： <span class="redtext">
							<c:if test="${fund.fflag==1}">开放申购 开放赎回</c:if>
							<c:if test="${fund.fflag==0}">基金冻结 暂不出售</c:if>
							</span>
						</td>
						<td rowspan="8" style="width: 66%!important;padding-bottom:0px;">
							<div id="fundpng" style="height: 400%;"></div>
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
						<td class="bigtext">最低起购价格：￥ ${fund.fbuy}</td>
					</tr>
					<tr>
						<td class="bigtext">最低起投价格：￥ ${fund.fbuy10}</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>