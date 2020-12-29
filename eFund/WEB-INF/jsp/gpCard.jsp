<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
				<c:forEach items="${funds1}" var="item" begin="1" end="5">
					<tr>
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

						<th class="thinth"><del class="graytext">${item.fbuyrate10}%</del> ${item.fbuyrate}% | ￥${item.fbuy}</th>
						<th><a href="FundPay"><button class="btn btn-warning">买入</button></a>
							<a href="FundPay"><button class="btn btn-warning">定投</button></a>
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