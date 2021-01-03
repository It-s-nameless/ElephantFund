<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<%@ include file="bootstrap.jsp"%>

<%@ include file="css.jsp"%>

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
<title>大象基金_联系我们</title>
</head>
<body>

	<%@ include file="nav.jsp"%>

	<div class="row rowbkgdiv"></div>

	<div class="col-sm-8" style="margin: 1rem auto;">

		<!-- 文章标题 -->
		<div class="row">
			<div class="col-sm" style="text-align: center;">
				<h2>值得信赖的大象基金交易平台</h2>
			</div>
		</div>

		<div class="row">
			<div class="card cuimg">
				<img src="img/cubkg.jpg" style="height:330px">
			</div>
		</div>
		<!-- 正文 ，包括图片和文字 -->
		<div class="row" style="margin: 1rem 0;">
			<p>&emsp;&emsp;大象基金成立于2020年10月27日，同年11月2日开业，受中国证监会监督和管理，大象基金交易平台致力于创造透明、开放、安全、高效的基金交易环境，为投资者提供低门槛一站式金融理财服务。</p>
			<p>&emsp;&emsp;根据相关法规和监管要求，按照专业基金销售公司的职能需要，我们建立了完善的治理结构和经营架构体系以及有效的规章制度。如果客户您有任何投资或者交易上的，以及我平台相关服务内容与业务上的问题，本公司24小时有客服在线竭诚为您服务。</p>
		</div>
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>