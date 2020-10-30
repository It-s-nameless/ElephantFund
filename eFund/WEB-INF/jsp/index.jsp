<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<%@ include file="bootstrap.jsp"%>

<%@ include file="css.jsp"%>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<script src="dist/echarts.min.js"></script>
<script src="jquery-1.10.1.min.js"></script>
<script src="map/js/china.js"></script>
<style>
* {
	margin: 0;
	padding: 0
}

html, body {
	width: 100%;
	height: 73%;
}

#main {
	width: 100%;
	height: 100%;
}
</style>
<title>大象基金_大盘指数</title>
</head>
<body>

	<%@ include file="nav.jsp"%>
	<div id="main"></div>
	<%@ include file="marketIndex.jsp"%>

	<div class="row" style="margin: 15px 0px">
		<div class="col-sm-2"></div>
		<%@ include file="paperInfo.jsp" %>
		<%@ include file="paperInfo.jsp" %>
		<%@ include file="paperInfo.jsp" %>
		<%@ include file="paperInfo.jsp" %>
		<div class="col-sm-2"></div>
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>