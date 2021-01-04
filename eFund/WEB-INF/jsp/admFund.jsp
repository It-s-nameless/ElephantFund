<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<%@ include file="bootstrap.jsp"%>

<%@ include file="css.jsp"%>

<title>大象基金_基金产品</title>
</head>
<body>

	<%@ include file="admNav.jsp"%>

	<div class="col-sm-10" style="margin: 1rem auto;">
		<ul class="nav nav-tabs" id="myTab" role="tablist">
			<li class="nav-item"><a class="nav-link active" id="home-tab"
				data-toggle="tab" href="#home" role="tab" aria-controls="home"
				aria-selected="true"><span class="text-secondary">首页</span></a></li>
			<li class="nav-item"><a class="nav-link" id="gp-tab"
				data-toggle="tab" href="#gp" role="tab" aria-controls="gp"
				aria-selected="false"><span class="text-secondary">股票型</span></a></li>
			<li class="nav-item"><a class="nav-link" id="hh-tab"
				data-toggle="tab" href="#hh" role="tab" aria-controls="hh"
				aria-selected="false"><span class="text-secondary">混合型</span></a></li>
			<li class="nav-item"><a class="nav-link" id="text-tab"
				data-toggle="tab" href="#zq" role="tab" aria-controls="text"
				aria-selected="false"><span class="text-secondary">债券型</span></a></li>
		</ul>
	</div>

	<div class="tab-content" id="myTabContent">
		<div class="tab-pane fade show active" id="home" role="tabpanel"
			aria-labelledby="home-tab">
			<div class="row">
				<div class="col-sm-1"></div>
				<div class="col-sm">
					<h5>
						<span style="line-height: 2em;">股票型基金&emsp;</span><a class="btn btn-outline-success" href="#">新增基金</a>
					</h5>
					<table class="table">
						<thead class="table-light">
							<tr>
								<th>基金代码</th>
								<th>基金名称</th>
								<th>单位净值 | 日期</th>
								<th>日增长率</th>
								<th>近1月</th>
								<th>近3月</th>
								<th>近6月</th>
								<th>近年来</th>
								<th>成立来</th>
								<th style="text-align: right;">手续费 | 起购金额&emsp;&emsp;</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${funds1}" var="item" begin="1" end="5">
								<tr style="line-height: 2em;">
									<th class="thinth">${item.fnum}</th>
									<th class="thinth" style="text-align: left">
										<a href="FundPay?fname=${item.fname}" class="text-dark">${item.fname}</a></th>
									<th class="thinth"><span class="strongtext">${item.fval}
									</span> | <span class="graytext">${date}</span></th>
									<th
										class="rzzl strongtext <c:if test='${item.fday>0}'>redtext</c:if><c:if test='${item.fday<0}'>greentext</c:if>">
										${item.fday}%</th>
									<th
										class="strongtext <c:if test='${item.fmonth1>0}'>redtext</c:if><c:if test='${item.fmonth1<0}'>greentext</c:if>">
										${item.fmonth1}%</th>

									<th
										class="strongtext <c:if test='${item.fmonth3>0}'>redtext</c:if><c:if test='${item.fmonth3<0}'>greentext</c:if>">
										${item.fmonth3}%</th>
									<th
										class="strongtext <c:if test='${item.fmonth6>0}'>redtext</c:if><c:if test='${item.fmonth6<0}'>greentext</c:if>">
										${item.fmonth6}%</th>
									<th
										class="strongtext <c:if test='${item.fmonth12>0}'>redtext</c:if><c:if test='${item.fmonth12<0}'>greentext</c:if>">
										${item.fmonth12}%</th>
									<th
										class="strongtext <c:if test='${item.frate>0}'>redtext</c:if><c:if test='${item.frate<0}'>greentext</c:if>">
										${item.frate}%</th>

									<th class="thinth"><del class="graytext">${item.fbuyrate10}%</del>
										${item.fbuyrate}% | ￥${item.fbuy}</th>
									<th>
										<div class="btn-group" role="group">
											<a href="FundPay?fnum=${item.fnum}" class="btn btn-outline-success">查看详情</a>
											<a href="FundPay?fnum=${item.fnum}" class="btn btn-outline-success">修改信息</a>
											<a href="FundPay?fnum=${item.fnum}" class="btn btn-outline-success">基金下架</a>
										</div>
									</th>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<p class="smalltext" style="text-align: right;">
						<a href="#">点击查询全部股票基金<<</a>
					</p>
				</div>
				<div class="col-sm-1"></div>
			</div>

			<div class="row">
				<div class="col-sm-1"></div>
				<div class="col-sm">
					<h5>
						混合型基金 <span class="graytext thinth smalltext">风险低于股票基金，但高于债券基金，比较适合较为保守的投资者。</span>
					</h5>
					<table class="table table-striped ">
						<!--设置右边框的表格-->
						<thead>
							<tr>
								<th>基金代码</th>
								<th>基金名称</th>
								<th>单位净值|日期</th>
								<th>日增长率</th>
								<th>近1月</th>
								<th>近3月</th>
								<th>近6月</th>
								<th>近年来</th>
								<th>成立来</th>
								<th>手续费|起购金额</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${funds2}" var="item" begin="1" end="5">
								<tr style="line-height: 2em;">
									<th class="thinth">${item.fnum}</th>
									<th class="thinth" style="text-align: left"><a href="#"
										class="text-dark">${item.fname}</a></th>
									<th class="thinth"><span class="strongtext">${item.fval}
									</span> | <span class="graytext">${date }</span></th>
									<th
										class="rzzl strongtext <c:if test='${item.fday>0}'>redtext</c:if><c:if test='${item.fday<0}'>greentext</c:if>">
										${item.fday}%</th>
									<th
										class="strongtext <c:if test='${item.fmonth1>0}'>redtext</c:if><c:if test='${item.fmonth1<0}'>greentext</c:if>">
										${item.fmonth1}%</th>

									<th
										class="strongtext <c:if test='${item.fmonth3>0}'>redtext</c:if><c:if test='${item.fmonth3<0}'>greentext</c:if>">
										${item.fmonth3}%</th>
									<th
										class="strongtext <c:if test='${item.fmonth6>0}'>redtext</c:if><c:if test='${item.fmonth6<0}'>greentext</c:if>">
										${item.fmonth6}%</th>
									<th
										class="strongtext <c:if test='${item.fmonth12>0}'>redtext</c:if><c:if test='${item.fmonth12<0}'>greentext</c:if>">
										${item.fmonth12}%</th>
									<th
										class="strongtext <c:if test='${item.frate>0}'>redtext</c:if><c:if test='${item.frate<0}'>greentext</c:if>">
										${item.frate}%</th>

									<th class="thinth"><del class="graytext">${item.fbuyrate10}%</del>
										${item.fbuyrate}% | ￥${item.fbuy}</th>
									<th>
										<div class="btn-group" role="group">
											<a href="FundPay?fnum=${item.fnum}" class="btn btn-warning">查看详情</a>
											<a href="FundPay?fnum=${item.fnum}" class="btn btn-warning">买入</a>
											<a href="FundPay?fnum=${item.fnum}" class="btn btn-warning">定投</a>
										</div>
									</th>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<p class="smalltext" style="text-align: right;">
						<a href="#">点击查询全部混合基金</a>
					</p>
				</div>
				<div class="col-sm-1"></div>
			</div>

			<div class="row">
				<div class="col-sm-1"></div>
				<div class="col-sm">
					<h5>
						债券型基金 <span class="graytext thinth smalltext">适合风险偏好适中、追求资产稳健增值以及有优化投资组合、降低整体风险需求的投资者</span>
					</h5>
					<table class="table table-striped ">
						<!--设置右边框的表格-->
						<thead>
							<tr>
								<th>基金代码</th>
								<th>基金名称</th>
								<th>单位净值|日期</th>
								<th>日增长率</th>
								<th>近1月</th>
								<th>近3月</th>
								<th>近6月</th>
								<th>近年来</th>
								<th>成立来</th>
								<th>手续费|起购金额</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${funds3}" var="item">
								<tr style="line-height: 2em;">
									<th class="thinth">${item.fnum}</th>
									<th class="thinth" style="text-align: left"><a href="#"
										class="text-dark">${item.fname}</a></th>
									<th class="thinth"><span class="strongtext">${item.fval}
									</span> | <span class="graytext">${date }</span></th>
									<th
										class="rzzl strongtext <c:if test='${item.fday>0}'>redtext</c:if><c:if test='${item.fday<0}'>greentext</c:if>">
										${item.fday}%</th>
									<th
										class="strongtext <c:if test='${item.fmonth1>0}'>redtext</c:if><c:if test='${item.fmonth1<0}'>greentext</c:if>">
										${item.fmonth1}%</th>

									<th
										class="strongtext <c:if test='${item.fmonth3>0}'>redtext</c:if><c:if test='${item.fmonth3<0}'>greentext</c:if>">
										${item.fmonth3}%</th>
									<th
										class="strongtext <c:if test='${item.fmonth6>0}'>redtext</c:if><c:if test='${item.fmonth6<0}'>greentext</c:if>">
										${item.fmonth6}%</th>
									<th
										class="strongtext <c:if test='${item.fmonth12>0}'>redtext</c:if><c:if test='${item.fmonth12<0}'>greentext</c:if>">
										${item.fmonth12}%</th>
									<th
										class="strongtext <c:if test='${item.frate>0}'>redtext</c:if><c:if test='${item.frate<0}'>greentext</c:if>">
										${item.frate}%</th>

									<th class="thinth"><del class="graytext">${item.fbuyrate10}%</del>
										${item.fbuyrate}% | ￥${item.fbuy}</th>
									<th>
										<div class="btn-group" role="group">
											<a href="FundPay?fnum=${item.fnum}" class="btn btn-warning">查看详情</a>
											<a href="FundPay?fnum=${item.fnum}" class="btn btn-warning">买入</a>
											<a href="FundPay?fnum=${item.fnum}" class="btn btn-warning">定投</a>
										</div>
									</th>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<p class="smalltext" style="text-align: right;">
						<a href="#">点击查询全部债券基金</a>
					</p>
				</div>
				<div class="col-sm-1"></div>
			</div>
		</div>

		<div class="tab-pane fade" id="gp" role="tabpanel"
			aria-labelledby="gp-tab">
			<div class="row">
				<div class="col-sm-1"></div>
				<div class="col-sm">
					<h5>
						股票型基金 <span class="graytext thinth smalltext">适合以追求资本得利和长期资本增值为投资目标的投资者。</span>
					</h5>
					<table class="table table-striped ">
						<!--设置右边框的表格-->
						<thead>
							<tr>
								<th>基金代码</th>
								<th>基金名称</th>
								<th>单位净值|日期</th>
								<th>日增长率</th>
								<th>近1月</th>
								<th>近3月</th>
								<th>近6月</th>
								<th>近年来</th>
								<th>成立来</th>
								<th>手续费|起购金额</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${funds1}" var="item">
								<tr style="line-height: 2em;">
									<th class="thinth">${item.fnum}</th>
									<th class="thinth" style="text-align: left"><a href="#"
										class="text-dark">${item.fname}</a></th>
									<th class="thinth"><span class="strongtext">${item.fval}
									</span> | <span class="graytext">${date}</span></th>
									<th
										class="rzzl strongtext <c:if test='${item.fday>0}'>redtext</c:if><c:if test='${item.fday<0}'>greentext</c:if>">
										${item.fday}%</th>
									<th
										class="strongtext <c:if test='${item.fmonth1>0}'>redtext</c:if><c:if test='${item.fmonth1<0}'>greentext</c:if>">
										${item.fmonth1}%</th>

									<th
										class="strongtext <c:if test='${item.fmonth3>0}'>redtext</c:if><c:if test='${item.fmonth3<0}'>greentext</c:if>">
										${item.fmonth3}%</th>
									<th
										class="strongtext <c:if test='${item.fmonth6>0}'>redtext</c:if><c:if test='${item.fmonth6<0}'>greentext</c:if>">
										${item.fmonth6}%</th>
									<th
										class="strongtext <c:if test='${item.fmonth12>0}'>redtext</c:if><c:if test='${item.fmonth12<0}'>greentext</c:if>">
										${item.fmonth12}%</th>
									<th
										class="strongtext <c:if test='${item.frate>0}'>redtext</c:if><c:if test='${item.frate<0}'>greentext</c:if>">
										${item.frate}%</th>

									<th class="thinth"><del class="graytext">${item.fbuyrate10}%</del>
										${item.fbuyrate}% | ￥${item.fbuy}</th>
									<th>
										<div class="btn-group" role="group">
											<a href="FundPay?fnum=${item.fnum}" class="btn btn-warning">查看详情</a>
											<a href="FundPay?fnum=${item.fnum}" class="btn btn-warning">买入</a>
											<a href="FundPay?fnum=${item.fnum}" class="btn btn-warning">定投</a>
										</div>
									</th>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<p class="smalltext" style="text-align: right;">
						<a href="#">点击查询全部股票基金</a>
					</p>
				</div>
				<div class="col-sm-1"></div>
			</div>
		</div>

		<div class="tab-pane fade" id="hh" role="tabpanel"
			aria-labelledby="hh-tab">
			<div class="row">
				<div class="col-sm-1"></div>
				<div class="col-sm">
					<h5>
						混合型基金 <span class="graytext thinth smalltext">风险低于股票基金，但高于债券基金，比较适合较为保守的投资者。</span>
					</h5>
					<table class="table table-striped ">
						<!--设置右边框的表格-->
						<thead>
							<tr>
								<th>基金代码</th>
								<th>基金名称</th>
								<th>单位净值|日期</th>
								<th>日增长率</th>
								<th>近1月</th>
								<th>近3月</th>
								<th>近6月</th>
								<th>近年来</th>
								<th>成立来</th>
								<th>手续费|起购金额</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${funds2}" var="item" begin="1" end="5">
								<tr style="line-height: 2em;">
									<th class="thinth">${item.fnum}</th>
									<th class="thinth" style="text-align: left"><a href="#"
										class="text-dark">${item.fname}</a></th>
									<th class="thinth"><span class="strongtext">${item.fval}
									</span> | <span class="graytext">${date }</span></th>
									<th
										class="rzzl strongtext <c:if test='${item.fday>0}'>redtext</c:if><c:if test='${item.fday<0}'>greentext</c:if>">
										${item.fday}%</th>
									<th
										class="strongtext <c:if test='${item.fmonth1>0}'>redtext</c:if><c:if test='${item.fmonth1<0}'>greentext</c:if>">
										${item.fmonth1}%</th>

									<th
										class="strongtext <c:if test='${item.fmonth3>0}'>redtext</c:if><c:if test='${item.fmonth3<0}'>greentext</c:if>">
										${item.fmonth3}%</th>
									<th
										class="strongtext <c:if test='${item.fmonth6>0}'>redtext</c:if><c:if test='${item.fmonth6<0}'>greentext</c:if>">
										${item.fmonth6}%</th>
									<th
										class="strongtext <c:if test='${item.fmonth12>0}'>redtext</c:if><c:if test='${item.fmonth12<0}'>greentext</c:if>">
										${item.fmonth12}%</th>
									<th
										class="strongtext <c:if test='${item.frate>0}'>redtext</c:if><c:if test='${item.frate<0}'>greentext</c:if>">
										${item.frate}%</th>

									<th class="thinth"><del class="graytext">${item.fbuyrate10}%</del>
										${item.fbuyrate}% | ￥${item.fbuy}</th>
									<th>
										<div class="btn-group" role="group">
											<a href="FundPay?fnum=${item.fnum}" class="btn btn-warning">查看详情</a>
											<a href="FundPay?fnum=${item.fnum}" class="btn btn-warning">买入</a>
											<a href="FundPay?fnum=${item.fnum}" class="btn btn-warning">定投</a>
										</div>
									</th>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<p class="smalltext" style="text-align: right;">
						<a href="#">点击查询全部混合基金</a>
					</p>
				</div>
				<div class="col-sm-1"></div>
			</div>

		</div>

		<div class="tab-pane fade" id="zq" role="tabpanel"
			aria-labelledby="text-tab">
			<div class="row">
				<div class="col-sm-1"></div>
				<div class="col-sm">
					<h5>
						债券型基金 <span class="graytext thinth smalltext">适合风险偏好适中、追求资产稳健增值以及有优化投资组合、降低整体风险需求的投资者</span>
					</h5>
					<table class="table table-striped ">
						<!--设置右边框的表格-->
						<thead>
							<tr>
								<th>基金代码</th>
								<th>基金名称</th>
								<th>单位净值|日期</th>
								<th>日增长率</th>
								<th>近1月</th>
								<th>近3月</th>
								<th>近6月</th>
								<th>近年来</th>
								<th>成立来</th>
								<th>手续费|起购金额</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${funds3}" var="item">
								<tr style="line-height: 2em;">
									<th class="thinth">${item.fnum}</th>
									<th class="thinth" style="text-align: left"><a href="#"
										class="text-dark">${item.fname}</a></th>
									<th class="thinth"><span class="strongtext">${item.fval}
									</span> | <span class="graytext">${date }</span></th>
									<th
										class="rzzl strongtext <c:if test='${item.fday>0}'>redtext</c:if><c:if test='${item.fday<0}'>greentext</c:if>">
										${item.fday}%</th>
									<th
										class="strongtext <c:if test='${item.fmonth1>0}'>redtext</c:if><c:if test='${item.fmonth1<0}'>greentext</c:if>">
										${item.fmonth1}%</th>

									<th
										class="strongtext <c:if test='${item.fmonth3>0}'>redtext</c:if><c:if test='${item.fmonth3<0}'>greentext</c:if>">
										${item.fmonth3}%</th>
									<th
										class="strongtext <c:if test='${item.fmonth6>0}'>redtext</c:if><c:if test='${item.fmonth6<0}'>greentext</c:if>">
										${item.fmonth6}%</th>
									<th
										class="strongtext <c:if test='${item.fmonth12>0}'>redtext</c:if><c:if test='${item.fmonth12<0}'>greentext</c:if>">
										${item.fmonth12}%</th>
									<th
										class="strongtext <c:if test='${item.frate>0}'>redtext</c:if><c:if test='${item.frate<0}'>greentext</c:if>">
										${item.frate}%</th>

									<th class="thinth"><del class="graytext">${item.fbuyrate10}%</del>
										${item.fbuyrate}% | ￥${item.fbuy}</th>
									<th>
										<div class="btn-group" role="group">
											<a href="FundPay?fnum=${item.fnum}" class="btn btn-warning">查看详情</a>
											<a href="FundPay?fnum=${item.fnum}" class="btn btn-warning">买入</a>
											<a href="FundPay?fnum=${item.fnum}" class="btn btn-warning">定投</a>
										</div>
									</th>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<p class="smalltext" style="text-align: right;">
						<a href="#">点击查询全部债券基金</a>
					</p>
				</div>
				<div class="col-sm-1"></div>
			</div>
		</div>
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>