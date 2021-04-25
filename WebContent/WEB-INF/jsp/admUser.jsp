<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<%@ include file="bootstrap.jsp"%>

<%@ include file="css.jsp"%>

<title>大象基金_用户管理</title>
</head>
<body>

	<%@ include file="admNav.jsp"%>

	<div class="col-sm-10" style="margin: 1rem auto;">
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm">
				<h5>
					<span style="line-height: 2em;">用户列表&emsp;</span>
				</h5>
				<script type="text/javascript">
				${info}
				</script>
				<table class="table" style="margin: 0px;">
					<thead class="thead-light">
						<tr>
							<th scope="col">用户编号</th>
							<th scope="col">用户名</th>
							<th scope="col">性别</th>
							<th scope="col">风险类型</th>
							<th scope="col">出生日期</th>
							<th scope="col">联系方式</th>
							<th scope="col">账户余额</th>
							<th scope="col">操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${users}" var="item" varStatus="status">
							<tr>
								<th scope="row">${item.uid}</th>
								<td>${item.uname}</td>
								<td>${item.usex}</td>
								<td>${item.utype}</td>
								<td>${item.birth}</td>
								<td>${item.phone}</td>
								<td>${item.money}</td>
								<td width=28%>
									<a href="AdmUserInfo?uname=${item.uname}" class="btn btn-outline-success"><span>查看详情</span></a>
									<a href="AdmUserUpdate?uname=${item.uname}" class="btn btn-outline-success"><span>修改用户信息</span></a>
									<a href="ChangeUflagServlet?uname=${item.uname}" class="btn btn-outline-success">
										<c:if test="${item.uflag==0}">用户解冻</c:if>
										<c:if test="${item.uflag==1}">用户冻结</c:if>
									</a>							
								</td>
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