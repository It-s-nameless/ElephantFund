<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<%@ include file="bootstrap.jsp"%>

<%@ include file="css.jsp"%>

<title>大象基金_订单总览</title>
</head>
<body>

	<%@ include file="admNav.jsp"%>

	<div class="col-sm-10" style="margin: 1rem auto;">
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm">
				<h5>
					<span style="line-height: 2em;">订单列表&emsp;</span>
				</h5>
				<script type="text/javascript">
				${info}
				</script>
				<table class="table" style="margin: 0px;">
					<thead class="thead-light">
						<tr>
							<th scope="col">订单编号</th>
							<th scope="col">用户名称</th>
							<th scope="col">基金名称</th>
							<th scope="col">交易时间</th>
							<th scope="col">交易类型</th>
							<th scope="col">订单金额</th>
							<th scope="col">成交汇率</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${orders}" var="item" varStatus="status">
							<tr>
								<th scope="row">${item.oid}</th>
								<td>${item.uname}</td>
								<td>${item.ofname}(${item.ofnum})</td>
								<td>${item.otime}</td>
								<td>${item.otype}</td>
								<td>${item.oprice}</td>
								<td>${item.orate}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="col-sm-1"></div>
		</div>
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>