<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<%@ include file="bootstrap.jsp"%>

<%@ include file="css.jsp"%>

<title>大象基金_新增基金</title>
</head>
<body>

	<%@ include file="admNav.jsp"%>

	<div class="container" style="margin-top: 20px;">
		<h4 class="mb-3">新增基金</h4>
		<form class="needs-validation" action="AddFundServlet" method="post">
			<div class="row">
				<div class="col-md-6 mb-3">
					<label for="jjnc">基金名称</label> <input type="text"
						class="form-control" value="test" name="fname" required>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 mb-3">
					<label for="jjbh">基金编号</label> <input type="text"
						class="form-control" value="999991" name="fnum" required>
				</div>
				<div class="col-md-3 mb-3">
					<label for="jjgm">基金规模&emsp;&emsp;&emsp;&emsp;&emsp;<span class="graytext">(单位：亿元)</span></label> <input type="text"
						class="form-control" value="10" name="frate" required>
				</div>
			</div>

			<div class="row">
				<div class="col-md-6 mb-3">
					<label for="fmanager">基金所属公司</label>
					<div class="input-group">
						<input type="text" class="form-control" value="陈杉新基金"
							name="fmanager" required>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-md-2 mb-3">
					<label for="jjqg">起购价格<span class="graytext">&emsp;(单位:元)</span></label> <input type="text"
						class="form-control" value="100" name="fbuy" required>
				</div>
				<div class="col-md-2 mb-3">
					<label for="jjhl">购买汇率<span class="graytext">&emsp;&emsp;&emsp;&emsp;(%)</span></label> <input type="text"
						class="form-control" value="0.13" name="fbuyrate" required>
				</div>
				<div class="col-md-2 mb-3">
					<label for="基金类型">基金类型</label> <select
						class="custom-select d-block w-100" name="ftype" required>
						<option value="1">股票型</option>
						<option value="2">混合型</option>
						<option value="3">债券型</option>
					</select>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 mb-3">
					<label for="jjsm">基金说明</label>
				    <textarea class="form-control" rows="3" name="ftext"></textarea>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 mb-3"></div>
				<div class="col-md-3 mb-3">
					<button class="btn btn-lg btn-block btn-outline-success"
						type="submit">新增基金</button>
				</div>
			</div>
		</form>
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>