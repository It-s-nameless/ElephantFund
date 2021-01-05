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

<script src="jquery-1.10.1.min.js"></script>
<script src="map/js/china.js"></script>

<style>
* {
	margin: 0;
	padding: 0
}

html, body {
	width: 100%;
	height: 70%;
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

	<div class="col-sm-10" style="margin: 5px auto;" id="main"></div>
	<%@ include file="marketIndex.jsp"%>
	<div class="row" style="margin: 15px 0px 0px 0px">
		<div class="col-sm-1"></div>
		<div class="col-sm">
			<h3>基金要闻</h3>
		</div>
		<div class="col-sm-1"></div>
	</div>
	<div class="row">
		<div class="col-sm-1"></div>

		<div class="col-sm-3">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">3000亿市场增量资金要来了！</h5>
					<p class="card-text">　本市场迎来重大利好，这与年金基金投资范围即将扩大有关，此次调整有望带来高达3000亿的增量资金。</p>
					<a href="FundPaper" class="btn btn-primary" style="float: right;">>>查看详情</a>
				</div>
				<div class="card-footer text-center">今天</div>
			</div>
		</div>
		
		<div class="col-sm">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">2020年大事巡游记</h5>
					<p class="card-text">　跨年行情开启，哪些板块会成为新风口？</p>
					<a href="FundPaper" class="btn btn-primary" style="float: right;">>>查看详情</a>
				</div>
				<div class="card-footer text-center">今天</div>
			</div>
		</div>
		
		<div class="col-sm-3">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">新基金观察（2020Q2）</h5>
					<p class="card-text">　在流动性宽松和A股结构化行情的大背景下，二季度心肌肌市场延续了来年以来的火爆。</p>
					<a href="FundPaper" class="btn btn-primary" style="float: right;">>>查看详情</a>
				</div>
				<div class="card-footer text-center">1天前</div>
			</div>
		</div>
		
		<div class="col-sm">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">今天 向这类基金说再见！</h5>
					<p class="card-text">　分级基金，跳动13年的价格曲线今天就要画上“休止符”。</p>
					<a href="FundPaper" class="btn btn-primary" style="float: right;">>>查看详情</a>
				</div>
				<div class="card-footer text-center">2天前</div>
			</div>
		</div>
		
		<div class="col-sm-1"></div>
	</div>

	<div class="row">
		<div class="col-sm-1"></div>
		<div class="col-sm">
			<p>
				<span style="float: right;"><a href="#">查看更多</a></span>
			</p>
		</div>
		<div class="col-sm-1"></div>
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>