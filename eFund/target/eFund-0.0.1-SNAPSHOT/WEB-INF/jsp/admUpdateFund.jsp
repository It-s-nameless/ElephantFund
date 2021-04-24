<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<%@ include file="bootstrap.jsp"%>

<%@ include file="css.jsp"%>

<title>大象基金_基金修改</title>
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

	<div class="container" style="margin-top: 20px;">
		<h4 class="mb-3">基金修改</h4>
		<form class="needs-validation" action="UpdateFundServlet" method="post">
			<div class="row">
				<div class="col-md-6 mb-3">
					<label for="jjnc">基金名称</label> <input type="text"
						class="form-control" value="${fund.fname}" name="fname" readonly>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 mb-3">
					<label for="jjbh">基金编号</label> <input type="text"
						class="form-control" value="${fund.fnum}" name="fnum" readonly>
				</div>
				<div class="col-md-3 mb-3">
					<label for="jjgm">基金规模&emsp;&emsp;&emsp;&emsp;&emsp;<span class="graytext">(单位：亿元)</span></label> <input type="text"
						class="form-control" value="${fund.frate}" name="frate" readonly>
				</div>
			</div>

			<div class="row">
				<div class="col-md-6 mb-3">
					<label for="fmanager">基金所属公司</label>
					<div class="input-group">
						<input type="text" class="form-control" value="${fund.fmanager}"
							name="fmanager" readonly>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-md-2 mb-3">
					<label for="jjqg">起购价格<span class="graytext">&emsp;(单位:元)</span></label> <input type="text"
						class="form-control" value="${fund.fbuy}" name="fbuy" required>
				</div>
				<div class="col-md-2 mb-3">
					<label for="jjhl">购买汇率<span class="graytext">&emsp;&emsp;&emsp;&emsp;(%)</span></label> <input type="text"
						class="form-control" value="${fund.fbuyrate}" name="fbuyrate" required>
				</div>
				<div class="col-md-2 mb-3">
					<label for="基金类型">基金类型</label> <select
						class="custom-select d-block w-100" name="ftype" readonly>
						<option value="1">${fund.ftype}</option>
					</select>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 mb-3">
					<label for="jjsm">基金说明</label>
				    <textarea class="form-control" rows="3" name="ftext">&emsp;&emsp;${fund.ftext}</textarea>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 mb-3"></div>
				<div class="col-md-3 mb-3">
					<button class="btn btn-lg btn-block btn-outline-success"
						type="submit">提交修改</button>
				</div>
			</div>
		</form>
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>